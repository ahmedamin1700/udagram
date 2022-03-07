#!/bin/bash
cd www

eb init --region $AWS_DEFAULT_REGION $EB_APP

eb setenv URL=$URL
eb setenv PORT=$PORT
eb setenv JWT_SECRET=$JWT_SECRET

eb setenv POSTGRES_HOST=$POSTGRES_HOST
eb setenv POSTGRES_PORT=$POSTGRES_PORT
eb setenv POSTGRES_USERNAME=$POSTGRES_USERNAME
eb setenv POSTGRES_PASSWORD=$POSTGRES_PASSWORD
eb setenv POSTGRES_DB=$POSTGRES_DB

eb deploy $EB_ENV