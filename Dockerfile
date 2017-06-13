FROM centos:7
RUN yum clean all && \
    yum update -y && \
    yum install -y epel-release && \
    yum install -y git \
        cmake3 \
        zsh \
        tmux \
        net-tools \
        iproute \
        sudo \
        yum-cron \
        vim && \
    cd && \
    rm -rf dotfiles && \
    git clone https://github.com/waf1waf/dotfiles.git && \
    cd dotfiles && \
    ./getohmyzsh.sh && \
    ./makesymlinks.sh
