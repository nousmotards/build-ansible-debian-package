#!/bin/bash -x
[[ -n $VERSION ]] || VERSION=devel
CMD="git pull ; git checkout $VERSION ; git submodule init ; git submodule update ; make deb ; find /mnt/ansible -name '*.deb' -exec mv {} /mnt/deb/ \;"

docker build -t nousmotards/ansible .
docker run -v $(pwd):/mnt/deb nousmotards/ansible /bin/bash -c "$CMD"
