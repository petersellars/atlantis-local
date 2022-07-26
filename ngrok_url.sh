#!/bin/bash

function echoUrl {
  ngrok_tunnels=$(curl -s http://localhost:4040/api/tunnels)
  index=$(echo $ngrok_tunnels | jq '.tunnels | map(.proto == "https") | index(true)')
  echo $ngrok_tunnels | jq -r ".tunnels[$index].public_url"
}

n=0
until [ "$n" -ge 5 ]
do
  echoUrl && break
  n=$((n+1))
  sleep 5
done