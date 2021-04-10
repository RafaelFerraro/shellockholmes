#!/bin/bash

echo "Please, be sure you have defined AUTH_HOST_URL, AUTH_USERNAME and AUTH_PASSWORD properly for the correct environment"

getAccessToken() {
  authTokenUrl="$1/api/consultants/tokens"
  userName=$2
  password=$3
  grantType="password"

  authTokenResponse=$( curl --request POST --url $authTokenUrl --header 'Accept: application/json' --header 'Content-Type: application/json' -d '{"username": "'"$userName"'", "password": "'"$password"'", "grant_type": "'"$grantType"'"}')

  accessToken=$( echo $authTokenResponse | jq -r '.access_token' )

  if [ -z $accessToken ]
  then
    echo "Error when fetching authentication token"
    exit
  fi
}

getAccessToken $AUTH_HOST_URL $AUTH_USERNAME $AUTH_PASSWORD
echo $accessToken
