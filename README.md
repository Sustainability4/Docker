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

$$
Usage:  docker [OPTIONS] COMMAND

A self-sufficient runtime for containers

Options:
      --config string      Location of client config files (default
                           "C:\\Users\\rohan_sharma1\\.docker")
  -c, --context string     Name of the context to use to connect to the
                           daemon (overrides DOCKER_HOST env var and
                           default context set with "docker context use")
  -D, --debug              Enable debug mode
  -H, --host list          Daemon socket(s) to connect to
  -l, --log-level string   Set the logging level
                           ("debug"|"info"|"warn"|"error"|"fatal")
                           (default "info")
      --tls                Use TLS; implied by --tlsverify
      --tlscacert string   Trust certs signed only by this CA (default
                           "C:\\Users\\rohan_sharma1\\.docker\\ca.pem")
      --tlscert string     Path to TLS certificate file (default
                           "C:\\Users\\rohan_sharma1\\.docker\\cert.pem")
      --tlskey string      Path to TLS key file (default
                           "C:\\Users\\rohan_sharma1\\.docker\\key.pem")
      --tlsverify          Use TLS and verify the remote
  -v, --version            Print version information and quit

Management Commands:
  app*        Docker App (Docker Inc., v0.9.1-beta3)
  builder     Manage builds
  buildx*     Build with BuildKit (Docker Inc., v0.5.1-docker)
  compose*    Docker Compose (Docker Inc., 2.0.0-beta.1)
  config      Manage Docker configs
  container   Manage containers
  context     Manage contexts
  image       Manage images
  manifest    Manage Docker image manifests and manifest lists
  network     Manage networks
  node        Manage Swarm nodes
  plugin      Manage plugins
  scan*       Docker Scan (Docker Inc., v0.6.0)
  secret      Manage Docker secrets
  service     Manage services
  stack       Manage Docker stacks
  swarm       Manage Swarm
  system      Manage Docker
  trust       Manage trust on Docker images
  volume      Manage volumes

Commands:
  attach      Attach local standard input, output, and error streams to a running container
  build       Build an image from a Dockerfile
  commit      Create a new image from a container's changes
  cp          Copy files/folders between a container and the local filesystem
  create      Create a new container
  diff        Inspect changes to files or directories on a container's filesystem
  events      Get real time events from the server
  exec        Run a command in a running container
  export      Export a container's filesystem as a tar archive
  history     Show the history of an image
  images      List images
  import      Import the contents from a tarball to create a filesystem image
  info        Display system-wide information
  inspect     Return low-level information on Docker objects
  kill        Kill one or more running containers
  load        Load an image from a tar archive or STDIN
  login       Log in to a Docker registry
  logout      Log out from a Docker registry
  logs        Fetch the logs of a container
  pause       Pause all processes within one or more containers
  port        List port mappings or a specific mapping for the container
  ps          List containers
  pull        Pull an image or a repository from a registry
  push        Push an image or a repository to a registry
  rename      Rename a container
  restart     Restart one or more containers
  rm          Remove one or more containers
  rmi         Remove one or more images
  run         Run a command in a new container
  save        Save one or more images to a tar archive (streamed to STDOUT by default)
  search      Search the Docker Hub for images
  start       Start one or more stopped containers
  stats       Display a live stream of container(s) resource usage statistics
  stop        Stop one or more running containers
  tag         Create a tag TARGET_IMAGE that refers to SOURCE_IMAGE
  top         Display the running processes of a container
  unpause     Unpause all processes within one or more containers
  update      Update configuration of one or more containers
  version     Show the Docker version information
  wait        Block until one or more containers stop, then print their exit codes

Run 'docker COMMAND --help' for more information on a command.

To get more help with docker, check out our guides at https://docs.docker.com/go/guides/
$$

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
6. 



