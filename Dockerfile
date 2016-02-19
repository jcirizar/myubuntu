FROM ubuntu:14.04
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
# Install base dependencies
RUN DEBIAN_FRONTEND=noninteractive apt-get update \
    && apt-get install -y -q --no-install-recommends \
        zip \
        unzip \
        apt-transport-https \
        build-essential \
        ca-certificates \
        curl \
        git \
        libssl-dev \
        python \
        rsync \
        vim \
        software-properties-common \
        wget \
    && sed -i '1s/^/force_color_prompt=yes\n/' /root/.bashrc

CMD ["bash"]
