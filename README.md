Use the above docker file to create an image with httpd process installed
Building and Running the Docker Image:
1.Build the Docker Image:
docker build -t my-centos-httpd .
2.Run the Docker Container:
docker run -d -p 80:80 my-centos-httpd


This will start a container running Apache, and you should be able to access the default Apache test page by navigating to http://localhost on your host machine.
