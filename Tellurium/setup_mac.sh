
#!/bin/bash

# Check if Python 3 is installed
if ! command -v python3 &> /dev/null
then
    echo "Python 3 could not be found. Please install Python 3."
    exit
fi

# Create a virtual environment
python3 -m venv venv

# Activate the virtual environment
source venv/bin/activate

# Update pip to the latest version
pip install --upgrade pip

# Install Curl, NPM, Homebrew
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
nvm install --lts
node -v
npm -v
npm install -g yarn
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install necessary Python packages for NLU, Entity Extraction, Dependency Parsing, Intent Recognition, etc.
pip install spacy nltk scikit-learn pyyaml requests pandas matplotlib seaborn pytest flake8

# Install libraries for Dialogue Management and advanced conversational capabilities
pip install rasa

# Install libraries for Machine Vision tasks
pip install opencv-python pillow

# Install Spacy English Model
pip install spacy
python -m spacy download en_core_web_sm

# Install graphviz
brew install graphviz

# Install SQLite
brew install sqlite

# Install Redis
brew install redis

# Install Postgresql
brew install postgresql

# Install Devops Tools
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
brew install minikube
brew install jenkins
pip install ansible
brew install terraform
docker run -d -p 9090:9090 --name prometheus prom/prometheus

# Install kafka
brew install kafka

# Install RabbitMQ
brew install rabbitmq

#Install Jupyter
pip install jupyter

# Install nginx
brew install nginx

# Install PyTorch for deep learning tasks, potentially useful across various modules
pip install torch torchvision

# Install libraries for Task Automation
pip install pyautogui selenium

# Install libraries for working with databases (SQLAlchemy for relational, PyMongo for non-relational)
pip install sqlalchemy pymongo

# More installations
pip install PyQt5 beautifulsoup4 watchdog requests-html alembic
pip install Jinja2
pip install Mako
pip install deeppavlov
pip install transformers
pip install apache-airflow
pip install luigi
pip install pyspark
pip install confluent-kafka
pip install langchain
pip install robotframework
pip install pynput
pip install pyyaml


# Install FastAPI
pip install fastapi

# Install matplotlib
pip install matplotlib

# Install Scrapy
pip install scrapy

# Install Keras
pip install keras

# Install Tensorflow
pip install tensorflow

# Install Flask
pip install flask

# Install Dash
pip install dash

# Install SQLModel
pip install sqlmodel

# Install Captcha Solvers
pip install captcha-solver
pip3 install 2captcha-python
pip install solverecaptchas
pip install CaptchaCracker
pip install numpy==1.19.5 tensorflow==2.5.0
pip install 2captcha-python selenium webdriver-manager
pip install undetected-chromedriver
pip install git+https://www.github.com/ultrafunkamsterdam/undetected-chromedriver@master     # replace @master with @branchname for other branches

# Install Tesseract
pip install pytesseract
pip install pyocr
pip install opencv-python

# Download spaCy's English model for NLP tasks
python -m spacy download en_core_web_sm
python -m spacy download en_core_web_md
python -m spacy download en_core_web_lg

# Install NLP Libraries
pip install transformers
pip install spacy-transformers
python -m spacy download en_core_web_trf

echo "Development environment setup complete."

