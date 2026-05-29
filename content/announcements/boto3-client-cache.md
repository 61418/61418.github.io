+++
date = '2026-03-02T03:08:26-05:00'
draft = false
title = "boto3-client-cache has been transferred to 61418"
description = "61418 is proud to announce its first project to enter the catalog: boto3-client-cache"
tags = ["boto3-client-cache", "aws", "open source", "61418", "mike letts"]
+++

61418 is proud to announce its first project to enter the catalog: [boto3-client-cache](https://pypi.org/project/boto3-client-cache/).

boto3-client-cache is a concurrency-safe, bounded cache for boto3 clients and resources with deterministic identity semantics and support for LRU and LFU eviction policies.
It was created by [Mike Letts](https://github.com/michaelthomasletts) and officially transferred to 61418 in late February 2026. 
It is also a core dependency for [boto3-refresh-session](https://pypi.org/project/boto3-refresh-session/).

This project was added to 61418's catalogue because it brings clear value to everyone using the AWS Python SDK (boto3) due to the lack of native client and resource caching in boto3 (as mentioned below).

## Why this project matters

[boto3 clients and resources consume a large amount of memory](https://github.com/61418/boto3-client-cache?tab=readme-ov-file#:~:text=boto3%20clients%20and%20resources%20consume%20a%20large%20amount%20of%20memory). 
Many developers never notice this. 
At scale, however, the memory footprint of boto3 clients and resources often becomes clear through manifold consequences. 
Caching is an obvious choice for managing multiple clients and-or resources at scale.

boto3 does not cache client or resource objects natively. 
There are also no other open-source tools available which do what boto3-client-cache does. 
To compensate, bespoke caching solutions [circulate online](https://github.com/boto/boto3/issues/1670). 
boto3-client-cache exists to standardize and democratize client and resource caching for the Python AWS community.

## How this project is designed

The most important but challenging design choice for client and resource caching is selecting and enforcing a robust and standardized methodology for unique keys. 
**boto3-client-cache hashes according to boto3 client and resource signatures.**

Setting and retrieving clients and resources from the client cache therefore requires an explicit declaration of intention -- that is, the developer must explicitly pass client and resource initialization parameters to a ClientCacheKey or ResourceCacheKey object in order to set or retrieve boto3 clients. 
This ensures setting and retrieving clients and resources are unambiguous and deterministic operations. 
By locking the cache, as boto3-client-cache does, race conditions are prevented, enabling developers to confidently employ the cache at scale with predictable cache eviction behavior. 
Lastly, by designing the cache like a dict in the standard Python library, the cache is ergonomically familiar and thus easy to use.

These decisions reflect the core design goals of boto3-client-cache: safety at scale, deterministic behavior, ergonomic interfacing, and explicit identity.