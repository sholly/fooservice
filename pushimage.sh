#!/bin/sh 
docker tag foo:latest docker.io/sholly/foo:1.0
docker push docker.io/sholly/foo:1.0
