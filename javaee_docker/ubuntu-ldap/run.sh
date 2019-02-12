#!/bin/bash

docker container run --name slapd --rm -p 389:389 -p 636:636 -d xavierdpt/ubuntu-ldap
