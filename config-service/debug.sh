#!/bin/bash
mvn spring-boot:run -Dspring-boot.run.jvmArguments="-DPROFILE=devel -agentlib:jdwp=transport=dt_socket,address=7001,server=y,suspend=n"