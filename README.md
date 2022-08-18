# Description

- .js encrypted by javascript-obfuscator
- build in Docker image for multi-stage

# Usage

```
# Encrypt-js stage
# Use an jsencryptor as a parent image
FROM jsencryptor:latest AS encrypt-js

# Set the working directory to /home
WORKDIR /home

# Copy js you want to encrypt to container
COPY ./static/js /home/js

# Run encryptJS.sh
RUN /home/encryptJS.sh


# Final stage
COPY --from=encrypt-js /home/enc ./static/js
```
