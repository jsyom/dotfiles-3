#!/bin/bash

# install npm packages if package json file exists
if [ -e package.json ]
  echo "ok"
  echo "going to now install npm packages"
else 
  echo "you are in the wrong folder"
  echo "no package json file here"
fi

