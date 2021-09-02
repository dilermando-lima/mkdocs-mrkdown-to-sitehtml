#!/bin/bash

# bash ./start-docs-in-localhost-9104.bash

NAMEDOC=testmkd

# ======================= start container
echo -e "\nRestarting container doc_${NAMEDOC}..."
docker rm -f doc_${NAMEDOC}
docker run --name doc_${NAMEDOC} -p 9104:9304 -v $PWD/src:/src doc_${NAMEDOC}_img


