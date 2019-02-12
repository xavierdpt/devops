#!/bin/bash
ldapsearch -x -LLL -b dc=ldap 'uid=user' cn gidNumber
