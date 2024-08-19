Use the above docker file to create an image with httpd process installed
Building and Running the Docker Image:
1.Build the Docker Image:
docker build -t my-centos-httpd .
2.Run the Docker Container:
docker run -d -p 80:80 my-centos-httpd
