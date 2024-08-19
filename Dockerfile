# Use CentOS 7 as the base image
FROM centos:7
RUN cd /etc/yum.repos.d/
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
# Install httpd (Apache HTTP Server)
RUN yum -y update && \
    yum -y install httpd && \
    yum clean all

# Copy custom index.html to the Apache default directory (optional)
COPY index.html /var/www/html/index.html

# Set the environment variable to run Apache in the foreground
ENV FOREGROUND=true

# Expose port 80 to the host
EXPOSE 80

# Start the httpd service
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
