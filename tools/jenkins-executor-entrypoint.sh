#! /bin/bash

mkdir -p /var/jenkins &&
cd /var/jenkins &&
curl -sO http://jenkins-server/jnlpJars/agent.jar &&
ls &&
pwd &&
java -jar agent.jar -url http://jenkins-server/ -secret $SECRET -name $NAME -webSocket -workDir "/var/jenkins"