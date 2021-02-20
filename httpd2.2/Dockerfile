FROM httpd:2.2

ARG TOMCAT_VERSION=8.0.18
ARG TOMCAT_MAJOR_VERSION=8
ARG uid=1000
ARG uname=tomcat
ARG gid=1000
ARG gname=mw

RUN apt-get update && \
    apt-get install -y curl unzip procps net-tools && \
    rm -rf /var/cache/apt/*

RUN groupadd \
      --gid ${gid} ${gname} && \
    adduser \
      --uid ${uid} \
      --system \
      --shell /bin/bash \
      --home /opt/mw \
      --gid ${gid} \
      ${uname}

WORKDIR /opt/mw
USER ${uname}
    
RUN curl -sSL --output apache-tomcat-${TOMCAT_VERSION}.tar.gz https://archive.apache.org/dist/tomcat/tomcat-${TOMCAT_MAJOR_VERSION}/v${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION}.tar.gz && \
    curl -sSL --output apache-tomcat-${TOMCAT_VERSION}.tar.gz.sha1 https://archive.apache.org/dist/tomcat/tomcat-${TOMCAT_MAJOR_VERSION}/v${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION}.tar.gz.sha1 && \
    sha1sum --check --status apache-tomcat-${TOMCAT_VERSION}.tar.gz.sha1 && \
    tar -xzf apache-tomcat-${TOMCAT_VERSION}.tar.gz -C /opt/mw/ && \
    rm apache-tomcat-${TOMCAT_VERSION}.tar.*

RUN curl -sSL --output jdk-8u275-ojdkbuild-linux-x64.zip https://github.com/ojdkbuild/contrib_jdk8u-ci/releases/download/jdk8u275-b01/jdk-8u275-ojdkbuild-linux-x64.zip && \
    unzip -q jdk-8u275-ojdkbuild-linux-x64.zip && \
    rm jdk-8u275-ojdkbuild-linux-x64.zip

COPY --chown=${uname}:${gname} files/entrypoint.sh .
RUN chmod u+x entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]
