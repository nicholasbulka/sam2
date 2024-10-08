#!/bin/sh

# Echo the FRONTEND_DOMAIN to see it in the docker logs
echo "Frontend domain is set to: ${FRONTEND_DOMAIN}"
echo "React app env type is set to: ${REACT_APP_ENV_TYPE_URL_PREFIX}"

# Create or overwrite a .env file in /usr/src/app
echo "REACT_APP_FRONTEND_DOMAIN=${FRONTEND_DOMAIN}" >> /usr/src/app/.env
#prod doesn't use an env type prefix for URLS...
echo "REACT_APP_ENV_TYPE_URL_PREFIX="${REACT_APP_ENV_TYPE_URL_PREFIX}"" >> /usr/src/app/.env

exec npm run build