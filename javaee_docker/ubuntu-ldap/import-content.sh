#!/bin/bash
service slapd start
ldapadd -x -D cn=admin,dc=ldap -w admin -f content.ldif  
service slapd stop
