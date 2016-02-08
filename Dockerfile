FROM debian:jessie
MAINTAINER Pierre Mavro <pmavro@nousmotards.com>

RUN apt-get update && apt-get -y --fix-missing install \
python-paramiko python-yaml python-jinja2 python-httplib2 python-setuptools python-six sshpass cdbs debhelper dpkg-dev git-core reprepro python-support fakeroot asciidoc devscripts docbook-xml xsltproc grep coreutils sed

WORKDIR /mnt
RUN git clone https://github.com/ansible/ansible.git
WORKDIR /mnt/ansible
