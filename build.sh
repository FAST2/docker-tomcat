#!/bin/bash
PROJECT="webdocker:5000/tomcat:tomcat7-java8"
echo Bygger $PROJECT
docker build -t $PROJECT .

if [ "$?" == "0" ]; then
  echo
  echo Lyckades
  echo Om du vill pusha den här bilden manuellt kör
  echo docker push $PROJECT
  echo
  echo Men egentligen skall det här köras från webdockers jenkins. 
  echo
fi
