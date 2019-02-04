# WARNING : This script runs everything without checking anything
# BETTER COPY EACH LINE MANUALLY AND SEE WHAT IT DOES
# IT PROBABLY BROKE YESTERDAY AND I DIDN'T FIX IT
sudo apt-get update 
sudo apt-get upgrade 
sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install docker-ce
sudo usermod -aG docker $USER
echo "Now, use 'sudo su $USER' and run 'docker run hello-world' to check that everything is fine"
