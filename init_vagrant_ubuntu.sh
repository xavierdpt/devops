# WARNING : This script runs everything without checking anything
# BETTER COPY EACH LINE MANUALLY AND SEE WHAT IT DOES
# IT PROBABLY BROKE YESTERDAY AND I DIDN'T FIX IT

vagrant box add ubuntu/trusty64
vagrant init ubuntu/trusty64
vagrant up
vagrant ssh
