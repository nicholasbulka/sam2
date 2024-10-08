#!/bin/sh

# Echo the FRONTEND_DOMAIN to see it in the docker logs
echo "Frontend domain is set to: ${FRONTEND_DOMAIN}"
echo "React app env type is set to: ${REACT_APP_ENV_TYPE_URL_PREFIX}"

# Create or overwrite a .env file in /usr/src/app/jsframework
echo "REACT_APP_FRONTEND_DOMAIN=${FRONTEND_DOMAIN}" > /usr/src/app/jsframework/.env
echo "REACT_APP_ENV_TYPE_URL_PREFIX=${REACT_APP_ENV_TYPE_URL_PREFIX}" >> /usr/src/app/jsframework/.env

# Change to the jsframework directory
cd /usr/src/app/jsframework

# Install dependencies if needed
yarn install

# Run Vite in development mode
yarn dev --host 0.0.0.0