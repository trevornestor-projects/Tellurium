# Activate the virtual environment
source venv/bin/activate

# Save the current directory
current_dir=$(pwd)

# Change to the directory containing the Python script
cd NaturalLanguageUnderstandingModule

# Run the Python script
python /Users/nmac/Tellurium/NaturalLanguageUnderstandingModule/intent_extractor_from_input.py

# Return to the original directory
cd "$current_dir"

# Deactivate the virtual environment
deactivate