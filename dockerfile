# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Install any needed packages specified in requirements.txt
# If tkinter is not available in the base image, it needs to be installed separately
RUN apt-get update && apt-get install -y python3-tk && rm -rf /var/lib/apt/lists/*

# Run the application
CMD ["python", "./pythongame.py"]
