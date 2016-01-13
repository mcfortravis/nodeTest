#!/bin/bash

echo testhere

tar -xvf apache-tomcat-7.0.64.tar.gz
ls
./apache-tomcat-7.0.64/bin/catalina.sh run
curl "http://localhost:8080"