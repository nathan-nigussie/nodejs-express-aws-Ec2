#!/bin/bash

# Navigate to the application directory
cd /home/ec2-user/express-app || exit

# Add npm and node to the path (for NVM users)
export NVM_DIR="$HOME/.nvm"

# Load NVM
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Load NVM bash completion (optional)
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Install dependencies
npm install

# Start our Node.js app in the background
node app.js > app.out.log 2> app.err.log < /dev/null &
