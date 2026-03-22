+++
date = '2026-03-22T09:21:15-04:00'
draft = false
title = 'elhaz has been added to 61418's catalog'
description = '61418 is proud to add elhaz into its catalog.'
tags = ['boto3-refresh-session', 'aws', 'open source', '61418', 'mike letts', 'cli']
+++

[elhaz](https://github.com/61418/elhaz) was written by [Mike Letts](https://github.com/michaelthomasletts) and officially released by 61418 on March 22nd, 2026. 

elhaz is a local AWS credential broker daemon exposed over a Unix socket.

Instead of a locally hosted HTTP metadata emulation service (ECS), which requires multiple processes for each assumed RoleArn, elhaz runs a single process (which accepts multiple concurrent connections) and serves automatically refreshed temporary AWS credentials on demand.

It caches AWS sessions for however long the daemon is kept alive, which eliminates redundant session initializations and STS calls.

Unix-socket IPC is lightweight and gives a tighter local boundary than HTTP, avoids exposing local credential endpoints over TCP, and allows temporary credentials to live in memory rather than at rest on disk.

**elhaz makes multi-role local AWS workflows cleaner by combining brokered access, in-memory caching, and host-local IPC in one model.**

Crucially, elhaz is the culmination of every project in 61418's catalog; it depends upon boto3-refresh-session, which depends upon boto3-client-cache. 