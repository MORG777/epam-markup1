FROM ubuntu

#Install node.js
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install npm 

# Expose port
EXPOSE 8080

# Install app dependencies
COPY package.json /public_html/
COPY package.json /root/

# Install app dependencies
RUN cd /public_html && \
    npm install

# Bundle app source
COPY . /public_html/
    
# Create app directory
WORKDIR /public_html/

# Start building project 
RUN npm run prod

# Start server
CMD [ "npm", "start" ]
