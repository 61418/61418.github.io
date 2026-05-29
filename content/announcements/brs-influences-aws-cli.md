+++
date = '2026-04-13T13:33:54-04:00'
draft = false
title = 'boto3-refresh-session influenced new features in AWS CLI v2'
description = '61418 is proud to share boto3-refresh-session influenced the creation of new features in the AWS CLI.'
tags = ['boto3-refresh-session', 'aws', 'open source', '61418', 'mike letts', 'aws cli']
+++

In September 2025, AWS released [v2.30.3](https://github.com/aws/aws-cli/blob/5bffffcc1bd0aa0e73bdcc1cfe432b37563a58bb/CHANGELOG.rst#L2081) of AWS CLI v2, which is the developer version of the AWS CLI. 

Among many new features included in v2.30.3, the aws configure command was updated in two different ways:

- The creation of a mfa-login command
- The introduction of a aws_session_token parameter

[boto3-refresh-session](https://github.com/61418/boto3-refresh-session), among other projects maintained by different open source maintainers focused on AWS credentials and identity, influenced the creation of those new features. These features improve the experience of working with temporary credentials and OTP's locally.

61418 is proud to continue maintaining boto3-refresh-session and we are grateful that AWS meaningfully considers and iterates on user and open source contributions and feedback.
