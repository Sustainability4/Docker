# Docker Introduction 
This repository explain all about the docker operations and its use cases with good idea on how to create an image file. Have a look at docker [website](https://www.docker.com/). One of the biggest use of docker in development is portable application development and helping to provide the same environment throughout. There are three most important technologies i.e git, docker and kubernetes. Hence it is very important to learn docker. It has a smooth integration and also provide a virtual machine without any hassles and is much smaller in size. 

There is always the issues of compatability, dependency, issues of long setup time and different environments while developing an application with developers across divisions. We need four different services for building an application : Hardware, OS, dependencies and libraries. We need an OS that is compatible with all these four steps and hence its becomes an issue for new developers. There are differences of versions as well. It always creates an issue. Owing to these reasons docker was introduced in first place. Docker config file will help you define the boundaries of your environment. No one can also see your source code with docker image, hence there will be a level of abstraction. 

## Containers 

Container is a box that contains a running application. It have its own machine name, address and its own drive. All the containers running on your system use the same OS kernel. Hence container is an isolated environment on the same OS kernel. Docker uses Alexsi containers. One cannot run a Windows OS container on linux kernel. It requires Windows OS host. One interesting question can be than how we are able to run a linux container on windows. It basically creates a linux VM which runs on windows. Windows will assign a linus VM to it and inside this VM the container based on linux will run. 

### Containers vs Virtual Machines 


