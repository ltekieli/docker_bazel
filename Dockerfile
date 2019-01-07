FROM ubuntu:18.04

RUN apt-get update && apt-get install -y \
    pkg-config \
    zip \
    g++ \
    git \
    libpython-dev \
    zlib1g-dev \
    unzip \
    python \
    curl \
    openjdk-8-jdk \
 && rm -rf /var/lib/apt/lists/*

RUN echo "deb [arch=amd64] http://storage.googleapis.com/bazel-apt stable jdk1.8" | tee /etc/apt/sources.list.d/bazel.list

RUN curl https://bazel.build/bazel-release.pub.gpg | apt-key add -

RUN apt-get update && apt-get install -y \
    bazel \
 && rm -rf /var/lib/apt/lists/*
