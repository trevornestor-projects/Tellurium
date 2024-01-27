# Command Structuring Module

## Overview
The Command Structuring Module is an integral part of our automation library, tasked with translating natural language inputs into structured commands. It interprets intents and entities recognized by the Natural Language Understanding (NLU) module to formulate a list of actionable commands. These commands are then executed by the system to perform various tasks in web browsers and desktop environments, leveraging machine vision and AI for dynamic interaction.

This is step 3 of the processing.

With the intent and entities identified, the Command Structuring Module translates this information into structured commands that the system can execute. This involves mapping the recognized intents to command templates and aligning identified entities with command parameters. The module also considers the context from previous interactions to refine the commands, ensuring they are valid and executable by the system.

## Features
- **Intent to Command Translation**: Maps recognized intents to command templates, setting the foundation for action execution. Command template includes mouse movements, keyboard use (typing text), clicking or holding down mouse or various buttons, scrolling, researching for further context on major search engines, and researching for further context on publicly available LLM tools. 
- **Researching Context**: When the system is stuck, it should research for further context on search engines and public LLM tools, then ask user input, and learn from gaps in knowledge.
- **Entity Mapping**: Aligns identified entities with command parameters to fully specify the actions to be taken.
- **Contextual Integration**: Utilizes context from previous interactions and the current system state to refine command structures.
- **Command Validation**: Ensures generated commands are valid and executable by the system, adhering to predefined formats.
- **Adaptive Command Generation**: Modifies command structures based on real-time feedback, improving task execution over time.

## Software
-**Inputs**: Intents and entities from the NLU Module, grammatical structures from the Dependency Parsing Module.

-**Outputs**: Structured commands that the system can execute, including sequences of actions for automation tasks.

-**Interactions**: Sends structured commands to the Integration Planning Module for execution. May interact with the Dialogue Management Module for user clarifications.

-**Library Dependencies**:
Template Engines: Jinja2 or Mako for generating command templates based on intents and entities.
Scripting Libraries: AutoIt or PyAutoGUI for desktop automation commands.