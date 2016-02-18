FROM ubuntu:14.04
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
# Install base dependencies
RUN DEBIAN_FRONTEND=noninteractive apt-get update \
    && apt-get install -y -q --no-install-recommends \
        build-essential \
        curl \
        git \
        libssl-dev \
        python \
        rsync \
        software-properties-common \
        wget \
        jpegoptim \
    && sed -i '1s/^/force_color_prompt=yes\n/' /root/.bashrc

CMD ["bash"]
