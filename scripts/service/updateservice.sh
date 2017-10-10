#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/services"
curl "${API}${URL_PATH}/$ID"\
  --include \
  --request PATCH \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "service": {
      "category": "'"${CATEGORY}"'"

    }
  }'

echo
