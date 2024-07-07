
# # Use the official Python image from the Docker Hub
# FROM python:3.9.8-alpine3.14
# RUN mkdir /test
# # Set the working directory in the container
# WORKDIR /test

# COPY requirements.txt .

# RUN pip install --no-cache-dir -r requirements.txt
# # Copy the requirements file into the container
# COPY . .
# # Specify the command to run your Python file
# CMD ["python", "manage.py"]

# EXPOSE 8000

# Use an official Python runtime as a parent image
FROM python:3.9

# Set environment variables (optional, but can be useful)
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set the working directory in the container
WORKDIR /code

# Copy the requirements file and install dependencies
COPY requirements.txt /code/
RUN pip install -r requirements.txt

# Copy the rest of the application code
COPY . /code/

# Expose the port that Django runs on
EXPOSE 8000

# Run Django's development server
CMD ["python", "manage.py", "runserver","0.0.0.0:8000"]
