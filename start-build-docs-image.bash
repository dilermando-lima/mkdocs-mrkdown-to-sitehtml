#!/bin/bash

# bash ./start-build-docs-image.bash

NAMEDOC=testmkd

# ======================= build image
echo -e "\nCreating image doc_${NAMEDOC}_img..."
docker rm -f doc_test
docker build -f ./docker/Dockerfile . -t doc_${NAMEDOC}_img
echo -e "\nImage doc_${NAMEDOC}_img is ready! you can start docs up with command 'docker run --name doc_${NAMEDOC} -p 9104:9304 -v src:/src doc_${NAMEDOC}_img'"
