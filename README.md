1.Requirements:
	1.Python-3.9
	2.Django
	3.Docker: Ensure Docker is installed on your machine. You can download it from Docker's official website

2. Setup Instructions:
	1.Clone the project from git
		Git url: https://github.com/vamsikreddy2/notes_project
	2. Build docker image using below command
docker build -t my_django_app1 .
	3. Run the Docker Container using below command
docker run -p 8000:8000 my_django_app1
3. Access the Application:
Once the container is running, you can access the Django application in your web browser at “http://localhost:8000”
