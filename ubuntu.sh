#!/bin/bash

sudo apt-get install -y git
sudo apt-get install -y python3-pip

sudo pip3 install --upgrade pip
sudo pip3 install scribe
sudo pip3 install thrift3babeltrace
sudo pip3 install facebook-scribe
sudo pip3 install thriftpy
sudo pip3 install scribe_logger

sudo apt-get install -y babeltrace
sudo apt-get install -y python3-babeltrace

git clone https://github.com/openzipkin/zipkin && cd zipkin
wget -O zipkin.jar 'https://search.maven.org/remote_content?g=io.zipkin.java&a=zipkin-server&v=LATEST&c=exec'
java -jar zipkin.jar &
cd ..

git clone https://github.com/vears91/babeltrace-zipkin