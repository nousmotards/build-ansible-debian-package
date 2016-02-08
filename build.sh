#!/bin/bash

docker build -t nousmotards/ansible .
docker run -v $(pwd):/mnt/deb nousmotards/ansible /bin/bash -c "git pull ; git checkout $(git tag -l | sort | grep -ve '.rc' -ve '.beta' -ve '.alpha' | tail -1) ; git submodule update ; make deb ; find /mnt/ansible -name '*.deb' -exec mv {} /mnt/deb/ \;"
