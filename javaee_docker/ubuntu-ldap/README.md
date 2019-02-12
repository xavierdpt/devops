# xavierdpt/ubuntu-ldap
Docker container based on ubuntu with OpenLDAP server and defaults suitable for experimentation

* run.sh : Start the container and give it the name "ldap"
* connect.sh : Connects to the running instance (assuming it is named "ldap")

# Provided scripts within the image
* show-user.sh : Script to show the current user
* stop.sh : Stops the container

# Build files

These files are use for building the image
* build.sh : Builds the image
* Dockerfile : The docker file
* conf : Debfonf default for slapd
* content.ldif : Initial content for LDAP database
* import-content.sh : Imports the LDAP content into the database 
* init.sh : Starts the image
