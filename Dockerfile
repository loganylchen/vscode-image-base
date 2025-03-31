FROM ubuntu:22.04

ENV PATH=/opt/bin/:$PATH
ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /opt/bin
SHELL ["/bin/bash", "-o", "errexit", "-c"]

RUN apt update -y && \
    apt upgrade -y && \
    apt install -y dirmngr gnupg apt-transport-https ca-certificates software-properties-common wget libgit2-dev && \
    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9 && \
    wget -O- https://cloud.r-project.org/bin/linux/ubuntu/marutter_pubkey.asc | gpg --dearmor | tee /usr/share/keyrings/cran.gpg && \
    echo deb [signed-by=/usr/share/keyrings/cran.gpg] https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran40/ | tee /etc/apt/sources.list.d/cran.list && \
    apt update && \
    apt install -y \
    locales python3 python3-dev python3-pip \
    r-base libcurl4-openssl-dev libssl-dev curl wget libpoppler-cpp-dev  libgsl-dev \
    libxml2-dev libproj-dev libfontconfig1-dev git liblz4-dev libzstd-dev libavfilter-dev libwebp-dev libtesseract-dev libleptonica-dev cargo \
    libmagick++-dev libhdf5-dev libfftw3-dev tesseract-ocr-eng \
    libharfbuzz-dev libfribidi-dev build-essential cmake && \
    sed -i '/en_US.UTF-8/s/^# //g' /etc/locale.gen && \
    locale-gen && \
    update-alternatives --install /usr/bin/python python /usr/bin/python3 1 && \
    pip3 install --upgrade pip setuptools --no-cache-dir && \
    pip3 install jupyter==1.0.0 --no-cache-dir  && \
    pip3 install ipykernel==6.22.0 --no-cache-dir  && \
    Rscript -e "install.packages(c('BiocManager','devtools','languageserver','IRkernel', 'ggpubr', 'pheatmap'))"  && \
    Rscript -e "BiocManager::install(c('edgeR', 'DESeq2','limma','PCAtools','MAST','org.Hs.eg.db', 'dittoSeq','multtest', 'clusterProfiler', 'ComplexHeatmap'))" && \
    rm -rf /tmp/*  /var/lib/apt/lists/* 

ENV LANG=en_US.UTF-8  
ENV LANGUAGE=en_US:en  
ENV LC_ALL=en_US.UTF-8 



