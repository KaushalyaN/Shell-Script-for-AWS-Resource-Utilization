#!/bin/bash
#############

#Author: Kaushalya
#Date: 13th of Feb 2024

#version: V2
#This script will report AWS resource usage.

#############


set -x  #Debug mode

#AWS S3 Buckets
#AWS EC2 Instances
#AWS Lambda Functions
#AWS IAM Users


# list s3 buckets
echo "Print list of s3 buckets"
aws s3 ls

#list ec2 instances
echo "Print list of ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#list of lambda functions
echo "Print list of lambda functions"
aws lambda list-functions

#list of iam users
echo "Print list of iam users"
aws iam list-users

