####################################################################
FROM node
WORKDIR /app
COPY package.json .
RUN npm i
COPY . .
##### EXPOSE [Port you mentioned in the vite.config file]
EXPOSE 80
CMD ["npm", "run", "dev"]

####### useful docker commands
#docker build -t [any name] .
#docker images
#docker run -d --rm -p 4173:4173 --name [name of the container] [your docker image name]
#docker ps
#docker rmi -f $(docker images -aq)