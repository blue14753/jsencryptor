### Dockerfile
# Use an official node as a parent image
FROM node:latest

# Set the working directory to /home/node
WORKDIR /home/node

# Copy js you want to encrypt to container
COPY . /home/

# Install javascript-obfuscator
RUN npm install --save-dev javascript-obfuscator
    
# Run encryptJS.sh when the container launches
CMD ["/home/js/encryptJS.sh"]
#CMD ["sh", "-c", "tail -f /dev/null"]
