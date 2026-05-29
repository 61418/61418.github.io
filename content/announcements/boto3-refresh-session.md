+++
date = '2026-03-06T05:20:11-05:00'
draft = false
title = 'boto3-refresh-session has been transferred to 61418'
description = '61418 is proud to add boto3-refresh-session into its catalog.'
tags = ['boto3-refresh-session', 'aws', 'open source', '61418', 'mike letts']
+++

[boto3-refresh-session](https://github.com/61418/boto3-refresh-session) was written by [Mike Letts](https://github.com/michaelthomasletts) in February 2025, and it was transferred to 61418's catalog on March 6th, 2026. 

Since releasing, boto3-refresh-session has been downloaded approximately 185K times on PyPI, adopted and used by large companies like Netflix (at an enterprise scale), and featured in [TL;DR Sec](https://github.com/61418/boto3-refresh-session#:~:text=Featured%20in%20TL%3BDR%20Sec) and [CloudSecList](https://github.com/61418/boto3-refresh-session?tab=readme-ov-file#:~:text=Featured%20in%20CloudSecList). Notably, boto3-refresh-session also uses [boto3-client-cache](https://github.com/61418/boto3-client-cache) as a dependency. 

boto3-refresh-session fills a niche but underserved need in the AWS ecosystem, specifically for developers using the AWS Python SDK (boto3). Although boto3 automatically refreshes temporary AWS credentials when authenticated using an AWS profile, this is not so in serverless environments where AWS profiles are untenable and/or impractical, among various other scenarios. Not every developer runs into this problem; however, those who have run into this problem historically were forced to refresh temporary credentials themselves. boto3-refresh-session standardizes an out-of-the-box solution to this gap. More, by leveraging boto3-client-cache, developers managing multiple sessions and many different clients/resources can also worry less about memory management due to duplicative client/resource objects and slow initialization times. 

A brief testimonial from an engineer using boto3-refresh-session:

> _Most of my work is on tooling related to AWS security, so I'm pretty choosy about boto3 credentials-adjacent code. I often opt to just write this sort of thing myself so I at least know that I can reason about it. But I found boto3-refresh-session to be very clean and intuitive [...] We're using AWS Lambda to perform lots of operations across several regions in hundreds of accounts, over and over again, all day every day. And it turns out that there's a surprising amount of overhead to creating boto3 clients (mostly deserializing service definition json), so we can run MUCH more efficiently if we keep a cache of clients, all equipped with automatically refreshing sessions._

boto3-refresh-session has been proven to enhance the AWS ecosystem, specifically for developers using the AWS Python SDK at scale, so we are happy to add it to 61418's catalog. 