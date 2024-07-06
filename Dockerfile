
# Use the official Python image from the Docker Hub
FROM python:3.9.8-alpine3.14
RUN mkdir /test
# Set the working directory in the container
WORKDIR /test

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt
# Copy the requirements file into the container
COPY . .
# Specify the command to run your Python file
CMD ["python", "manage.py"]

EXPOSE 8000