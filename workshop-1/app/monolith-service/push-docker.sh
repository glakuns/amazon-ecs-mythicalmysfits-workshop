#!/usr/bin/bash
MONO_ECR_REPOSITORY_URI=$(aws ecr describe-repositories | jq -r .repositories[].repositoryUri | grep mono)
docker tag monolith-service:latest $MONO_ECR_REPOSITORY_URI:latest
docker push $MONO_ECR_REPOSITORY_URI:latest
