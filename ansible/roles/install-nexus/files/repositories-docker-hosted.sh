#!/bin/bash

creds=$1
json="{\
    "userId": "devops1",\
    "firstName": "Dev",\
    "lastName": "Ops",\
    "emailAddress": "dev@ops.org",\
    "password": "devops123",\
    "status": "active",\
    "roles": [\
      "nx-admin"\
    ]\
  }"

curl -u "$creds" --header "Content-Type: application/json" "http://192.168.56.5:8081/service/rest/v1/repositories/docker/hosted" -d @$jsonFile