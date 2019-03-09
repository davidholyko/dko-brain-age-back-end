#!/bin/bash

curl "http://localhost:4741/users/handle" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "user": {
      "handle": "'"${HANDLE}"'"
    }
  }'

echo
