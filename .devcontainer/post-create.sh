#!/bin/bash

# Update package list
sudo apt-get update

# Install Node.js and npm (only if Node.js isn’t pre-installed)
curl -fsSL https://deb.nodesource.com/setup_20.x | bash -
sudo apt-get install -y nodejs python3-distutils

# Create and activate a Python virtual environment
python3 -m newenv .newenv
source .newenv/bin/activate

# Install Python dependencies
sudo pip install --upgrade pip
sudo pip install -r requirements.txt

# Install Node.js dependencies for React app
npm install