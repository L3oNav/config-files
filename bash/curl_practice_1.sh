#!/bin/bash

curl --write-out "%{http_code}\n" --silent --output /dev/null "$1"
