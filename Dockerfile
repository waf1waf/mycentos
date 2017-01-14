FROM centos:7
RUN yum update -y && \
    yum install -y git \
        zsh \
        net-tools \
        iproute \
        sudo \
        vim && \
    cd && \
    git clone https://github.com/waf1waf/dotfiles.git && \
    cd dotfiles && \
    ./getohmyzsh.sh && \
    ./makesymlinks.sh
