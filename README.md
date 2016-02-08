[![Build Status](https://travis-ci.org/nousmotards/build-ansible-debian-package.svg?branch=master)](https://travis-ci.org/nousmotards/build-ansible-debian-package)

# build-ansible-debian-package
A Dockerfile to run to quickly make an Ansible (latest stable version) Debian package

To build, indicate the version (if not, will take devel branch) and launch script:
```
VERSION=v2.0.0.2-1
./build.sh
```
Now you'll have the .deb package in your current directory
