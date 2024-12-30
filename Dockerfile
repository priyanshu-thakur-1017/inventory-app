# Use the official Python image from Docker Hub
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy all the files in the current directory to the container's /app directory
COPY . /app

# Install the necessary Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port that Flask will run on (by default Flask runs on port 5000)
EXPOSE 5000

# Set the environment variable to tell Flask to run the app
ENV FLASK_APP=app.py

# Run the Flask app when the container starts
CMD ["flask", "run", "--host=0.0.0.0"]
