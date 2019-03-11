#!/bin/bash

curl "http://localhost:4741/suggestions" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "suggestion": {
      "text": "'"${TEXT}"'"
    }
  }'

echo
