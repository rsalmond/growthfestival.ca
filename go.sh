#!/bin/bash

quarto render --log-level warning
tar --no-xattrs -czf growth.tgz -C docs/ .
scp growth.tgz brazen:~/
ssh brazen tar xf growth.tgz -C /mnt/kubedata/growth/
