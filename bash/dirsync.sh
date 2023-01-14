#!/bin/bash
rsync -avuq --delete --log-file=/var/log/rsync.log $1 $2