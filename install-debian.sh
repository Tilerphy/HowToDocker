echo "Remove old versions"
apt-get remove -y docker docker-engine docker.io
apt-get install -y apt-transport-https ca-certificates curl 
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
apt-get update
apt-get install docker-ce
docker run hello-world
