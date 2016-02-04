FROM debian:jessie
MAINTAINER Pierre Mavro <pmavro@nousmotards.com>

RUN apt-get update && apt-get -y install \
python-yaml python-paramiko python-jinja2 cdbs debhelper dpkg-dev git-core reprepro asciidoc

VOLUME /mnt
WORKDIR /mnt
RUN git clone https://github.com/ansible/ansible.git && cd ansible && git checkout ${ANSIBLE_VERSION}
RUN git submodule update
RUN make deb
