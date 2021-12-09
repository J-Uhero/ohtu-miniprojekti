#!/bin/bash

export FLASK_APP=src/index.py
poetry run python3 -m flask run &

while [[ "$(curl -s -o /dev/null -w ''%{http_code}'' localhost:5000/ping)" != "200" ]]; 
  do sleep 1; 
done

poetry run robot src/tests/acceptance.robot

function clean_up {
  kill $(lsof -t -i:5000)
}

trap clean_up EXIT