FROM debian:jessie
MAINTAINER Pierre Mavro <pmavro@nousmotards.com>

RUN apt-get update && apt-get -y install \
python-yaml python-paramiko python-jinja2 cdbs debhelper dpkg-dev git-core reprepro asciidoc grep coreutils sed

WORKDIR /mnt
RUN git clone https://github.com/ansible/ansible.git
WORKDIR /mnt/ansible
