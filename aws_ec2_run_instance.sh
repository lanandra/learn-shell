#!/bin/bash
# simple shell script to run ec2 instance from launch template via aws cli

# list all launch template with yaml output
aws ec2 describe-launch-templates --output yaml

# run ec2 instance based on launch tempate
# set number of instance that will be launched
# set tag with name as a key
aws ec2 run-instances \
	--launch-template LaunchTemplateId=[id] \
	--count 1 \
	--tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=[name]}]'
