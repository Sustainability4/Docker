# The from command established the base of your docker image. In this case we have lets say ubuntu. If you want to run both python, R and Java. Its always good to go with
# an ubuntu base. But if you are sure that your entire code will be under python then the command could be From python(version). First line is telling that we need 
# a particular OS. 
From ubuntu 

# One can also provide commands lie sleep within the docker file only. One can over run these commands by specifying the new one while running the image. 
CMD ["sleep","25"]

# Run command exists as a package upadte commands. They are there to update within the package. 
RUN apt-get update
RUN apt-get install -y python3 python3-pip
RUN pip3 install flask
RUN mkdir /opt/app

# Working directory specify where your application will be running 
WORKDIR /opt/app

# Copy operation from the main folder
COPY . /opt/app

# Running the flask application 
ENTRYPOINT FLASK_APP = /opt/app/app.py flask run --host = 0.0.0.0

# In order to build this image 
# docker build <dockerfile> -t <location of saving this image> 

# One can also create an evironment file with a docker file to store things like password and username 
# One can run the image using the environement file as well 
# docker run --env-file <environment file> <image_file>
