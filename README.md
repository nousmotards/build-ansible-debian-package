[![Build Status](https://travis-ci.org/nousmotards/build-ansible-debian-package.svg?branch=master)](https://travis-ci.org/nousmotards/build-ansible-debian-package)

# build-ansible-debian-package
A Dockerfile to run to quickly make an Ansible (latest stable version) Debian package

To build:
```
docker build -t nousmotards/ansible .
docker run -v $(pwd):/mnt/deb nousmotards/ansible /bin/bash -c "git pull ; git checkout $(git tag -l | sort | grep -ve '.rc' -ve '.beta' -ve '.alpha' | tail -1) ; git submodule update ; make deb ; find /mnt/ansible -name '*.deb' -exec mv {} /mnt/deb/ \;"
```
Now you'll have the .deb package in your current directory
