FROM kasmweb/ubuntu-noble-desktop:1.16.0

USER root

ENV DEBIAN_FRONTEND=noninteractive

RUN sed -i 's@//.*archive.ubuntu.com@//mirrors.ustc.edu.cn@g' /etc/apt/sources.list.d/ubuntu.sources \
    && sed -i 's/security.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list.d/ubuntu.sources \
    && mv /etc/apt/sources.list.d/ubuntu.sources /tmp/ \
    && rm /etc/apt/sources.list.d/* \
    && mv /tmp/ubuntu.sources /etc/apt/sources.list.d/ \
    && apt update \
    && apt install -y \
        language-pack-zh-hans \
        openjdk-21-jdk \
        fonts-wqy-microhei \
        texlive-latex-base \
        texlive-fonts-recommended \
        texlive-extra-utils \
        texlive-latex-extra \
        texlive-xetex \
        pandoc \
        wireshark \
        ffmpeg \
        wkhtmltopdf \
    && rm -rf /var/lib/apt/lists/*

USER kasm-user
