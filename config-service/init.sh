#!/bin/bash
export AWR_GIT_PKEY=$(cat ./awr_rsa)
exec java -jar ./serv.jar