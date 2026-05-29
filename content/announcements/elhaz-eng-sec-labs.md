+++
date = '2026-04-27T22:58:57-04:00'
draft = false
title = "elhaz featured in EngSecLab's blog for securely sandboxing AI agents"
tags = ['aws', 'open source', '61418', 'mike letts', 'cli', 'elhaz']
+++

[Alex Smolen](https://alexsmolen.com/) of [EngSecLabs](https://engseclabs.com) released a wonderful [blog post](https://engseclabs.com/blog/agent-credential-isolation/) earlier today that is absolutely worth reading. 

There has been _a lot_ of discussion lately among security professionals about how to isolate AI agents from AWS credentials. In the above-linked blog post, Alex's solution is to cleverly mount a Docker container with the Unix socket maintained by elhaz, install elhaz and the AWS CLI inside of that container, and create an AWS profile with a credential process which ingests temporary credentials emitted by the [elhaz export](https://61418.io/elhaz/cli/elhaz-export.html) command. Alex's technique places firm policy + identity guardrails around any agent sandboxed by that container, effectively treating elhaz as a credential proxy. In the post, Alex also mentions a tool named [TrailTool](https://github.com/engseclabs/trailtool), which he maintains, which he uses to actively monitor AWS actions by agents and institute an intent-based approach to permissioning. 

It is worth noting [Alex will be presenting the above research at the upcoming fwd:cloudsec conference in Bellevue, WA in about two months](https://pretalx.com/fwd-cloudsec-2026/talk/9LRLDS/).

elhaz was explicitly designed with use cases exactly like Alex's in mind, so 61418 is extremely pleased to see serious security professionals like Alex finding creative applications for elhaz. We are excited to see what other creative applications people find for elhaz.