#!/bin/bash

curl "http://localhost:4741/climbs" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "credentials": {
      "route_name": "'"${RNAME}"'",
      "route_grade": "'"${RGRADE}"'",
      "number_of_tries": "'"${NUMTRY}"'",
      "send": "'"${SEND}"'"
    }
  }'

echo
