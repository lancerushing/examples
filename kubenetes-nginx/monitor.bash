#!/usr/bin/env bash



HOST_URL="http://$1/"
TIMEFORMAT=%R

while true ; do

  echo -n "."
  time curl --head -s "${HOST_URL}" | grep "Server: "
  sleep 0.5

done
