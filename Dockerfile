FROM amazonlinux:latest

RUN yum install -y python3 python3-pip

COPY . /opt/app
WORKDIR /opt/app
RUN python3 -m pip install -r requirements.txt

# Copy the local folder to the Docker image
COPY ./ /usr/local/aws_batch_tutorial

# Set the working directory to the newly created folder
WORKDIR /usr/local/aws_batch_tutorial
