#!/bin/sh

set -e

if [ -z "$MONGO_URL" ]; then
  export MONGO_URL="mongodb://${MONGODB_USERNAME}:${MONGODB_PASSWORD}@${MONGODB_HOST}:${MONGODB_PORT:-27017}/${MONGODB_DATABASE}"
fi

if [ "$MONGODB_HOST" ]; then
  echo "Waiting for MongoDB to start..."
  while ! nc -z "${MONGODB_HOST}" "${MONGODB_PORT:-27017}"; do sleep 0.1; done
  echo "MongoDB is up"
fi

exec bundle exec "$@"
