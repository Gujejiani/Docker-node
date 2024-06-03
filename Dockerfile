FROM node

# all commands will be executed in the /app folder
WORKDIR /app

# All folders and files in the current directory will be copied to the /app folder in the container
COPY . /app

RUN npm install

# RUN node server.js is a mistake image is not supposed to run the server but just to give the instructions to run the server

EXPOSE 80

# CMD is the command that will be executed when the container is started

CMD ["node", "server.js"]

# docker ps => list all running containers

# docker ps -a => list all containers

# docker stop => stop a running container

# docker rm => remove a container

# docker rmi => remove an image

# docker build -t <image-name> . => build an image

# docker run -p 3000:80 <image-name> => run a container      comment 80 is exposed in the Dockerfile, 3000 is the port on the host machine

