FROM ubuntu:20.04
# FROM jencryzthers/vboxinsidedocker
ENV DEBIAN_FRONTEND noninteractive
ENV TERM xterm-256color

RUN apt-get update -y && \
    apt-get install -y \
    build-essential \
    linux-image-generic \
    virtualbox \
    curl \
    wget \
    vim \
    ssh \
    net-tools \
    jq && \
    apt-get autoremove -y && \
    apt-get clean


# The virtualbox driver device must be mounted from host
VOLUME /dev/vboxdrv

ENV VAGRANT_VERSION=2.2.19
RUN wget https://releases.hashicorp.com/vagrant/${VAGRANT_VERSION}/vagrant_${VAGRANT_VERSION}_x86_64.deb
RUN dpkg -i vagrant_${VAGRANT_VERSION}_x86_64.deb

# RUN echo "insecure" > $HOME/.curlrc	
RUN vagrant box add --provider virtualbox --insecure peru/windows-10-enterprise-x64-eval
# RUN vagrant init peru/windows-10-enterprise-x64-eval


# Copy
COPY Vagrantfile /
COPY startup.sh /

ENTRYPOINT ["/startup.sh"]

CMD ["/bin/bash"]
