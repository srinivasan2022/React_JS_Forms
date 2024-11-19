# Use an official Python image
FROM python:3.10-slim

# Set work directory
WORKDIR /workspace

# Install node and npm for React frontend
RUN apt-get update && \
    apt-get install -y nodejs npm python3-distutils \
    sudo apt update \
    sudo apt install python3 python3-pip \
    pip3 install django djangorestframework \
    sudo apt install nodejs npm

# Copy project files
COPY . /workspace

# Install Python dependencies
RUN pip install -r requirements.txt

# Install frontend dependencies if needed
RUN cd client && npm install

# Expose ports for Django and React
EXPOSE 8000 3000