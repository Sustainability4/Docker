# Docker Introduction 
This repository explain all about the docker operations and its use cases with good idea on how to create an image file. Have a look at docker [website](https://www.docker.com/). One of the biggest use of docker in development is portable application development and helping to provide the same environment throughout. There are three most important technologies i.e git, docker and kubernetes. Hence it is very important to learn docker. It has a smooth integration and also provide a virtual machine without any hassles and is much smaller in size. 

There is always the issues of compatability, dependency, issues of long setup time and different environments while developing an application with developers across divisions. We need four different services for building an application : Hardware, OS, dependencies and libraries. We need an OS that is compatible with all these four steps and hence its becomes an issue for new developers. There are differences of versions as well. It always creates an issue. Owing to these reasons docker was introduced in first place. Docker config file will help you define the boundaries of your environment. No one can also see your source code with docker image, hence there will be a level of abstraction. 

## Containers 

Container is a box that contains a running application. It have its own machine name, address and its own drive. All the containers running on your system use the same OS kernel. Hence container is an isolated environment on the same OS kernel. Docker uses Alexsi containers. One cannot run a Windows OS container on linux kernel. It requires Windows OS host. One interesting question can be than how we are able to run a linux container on windows. It basically creates a linux VM which runs on windows. Windows will assign a linus VM to it and inside this VM the container based on linux will run. 

### Containers vs Virtual Machines 
Docker provides a platform to run containers on the OS kernel provided by your hardware whereas in Virtual machines, they run on the OS and furthe rcontains containers within them which are running on the OS of VMs. Hence resource utilisation with docker is less than the resource utilisation by Virtual Machines. 

### Containers vs Image
Image is a source code, libraries, dependencies and other stuff whic define the container and needed for application to run. Image is just a template with set of instruction. You need an image to build a docker container. One moves from dockerfile -> Image -> Container. Dockerfile creates an image. 

# Terminologies
1. Docker Client 
2. Docker Server : Underlying service that helps docker. 
3. Docker Images : All files required to run a dockerised container
4. Docker Container

# Docker Setup 
Download and install docker desktop. It can be found on the website of docker for all the versions of OS you require. Open the docker desktop. 

## Windows

### To check whether docker is running or not. Just open the command prompt and type the command docker. You will get something of this sort. 

C:\xxxx\yyyyy>docker

### Check the version : 
C:\Users\rohan_sharma1>docker --version
Docker version 20.10.6, build 370c289


## Linux 

Follow this website : https://docs.docker.com/engine/install/ubuntu/

## Some commands 

1. Stop a running docker container : docker stop <container_id>
2. Run a docker image :  docker run --publish 8000:8000 node-docker
3. See all running containers : docker ps -a
4. go inside a container : docker exec -it <container_id> sh
5. remove all containers which stopped: docker system rm -a
6. Run a container (first it will look the image in local whether this is available or not and if not found will download this image form docker hub): docker run <image_name> 
7. list all the image : docker images
8. remove a particular container : docker rm <container_id>
9. Remove image : docker rmi <image_name>
10. Pulling the image without running : docker pull <image_name>





