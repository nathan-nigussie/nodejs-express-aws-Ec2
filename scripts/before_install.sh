#!/bin/bash

# Download and install NVM (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

# Load NVM into the current shell session
. ~/.nvm/nvm.sh

# Install the latest Node.js version using NVM
nvm install node

# Create our working directory if it doesn't exist
DIR="/home/ec2-user/express-app"

if [ -d "$DIR" ]; then 
    echo "${DIR} exists"
else
    echo "Creating ${DIR} directory"
    mkdir -p ${DIR}
fi
