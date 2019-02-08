This is an experimental setup to run eclipse and tomcat as two separate containers with docker.

Just run 'docker-compose up' from this directory, and it should work !

To put the .war in tomcat, do the following:

* Import the ~/projects/helloservlet as an existing maven project
* Run Maven Install from within Eclipse
* Bring up the terminal view from within Eclipse
* Create a new terminal
* Run 'firefox' to bring up firefox from withing the docker container
* Go to http://tomcat:8080
* Log in as admin:admin
* Import the generated .war from there
* Take note of the context path
* Go to https://tomcat:8080/${contextPath}/helloworld

