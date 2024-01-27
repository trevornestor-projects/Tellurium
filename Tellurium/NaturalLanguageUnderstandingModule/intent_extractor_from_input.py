import spacy
import yaml

# Load the spaCy transformer model pipeline
nlp = spacy.load("en_core_web_trf")

def process_text(text):
    return nlp(text)

def identify_intent_and_entities(doc):
    # Dynamically identify entities using spaCy's NER
    entities = [ent.label_ for ent in doc.ents]
    # Placeholder for dynamic intent recognition logic
    intent = "example_intent"
    return intent, entities

def load_yaml_file(file_path):
    with open(file_path, 'r') as file:
        return yaml.safe_load(file)

def update_yaml_file(file_path, data):
    with open(file_path, 'w') as file:
        yaml.dump(data, file, sort_keys=False, allow_unicode=True)

def add_entity_if_new(entity_definitions, new_entities):
    updated = False  # Flag to track if the file needs to be updated
    for new_entity in new_entities:
        if not any(entity['entity'] == new_entity for entity in entity_definitions['entities']):
            entity_definitions['entities'].append({
                'entity': new_entity,
                'description': f"Description for {new_entity}",
                'data_type': "string"  # Adjust this as needed
            })
            print(f"Added new entity '{new_entity}' to entities.yaml")
            updated = True
    if updated:  # Only update the file if there were changes
        update_yaml_file("entities.yaml", entity_definitions)

def main():
    entity_definitions = load_yaml_file("entities.yaml")
    user_input = input("Please enter your query: ")
    doc = process_text(user_input)
    identified_intent, identified_entities = identify_intent_and_entities(doc)

    add_entity_if_new(entity_definitions, identified_entities)

    print(f"Intent: {identified_intent}")
    for entity in identified_entities:
        print(f"Entity: {entity}")

if __name__ == "__main__":
    main()

