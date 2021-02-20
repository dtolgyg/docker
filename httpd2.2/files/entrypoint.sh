#!/bin/bash
export JAVA_HOME="jdk-8u275-ojdkbuild-linux-x64"
export PATH="$PATH:$JAVA_HOME/bin"
export CATALINA_HOME="apache-tomcat-8.0.18"

${CATALINA_HOME}/bin/catalina.sh start && tail -f ${CATALINA_HOME}/logs/catalina.out
