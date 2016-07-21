# !/bin/bash
set -x

sudo apt-get update && \
sudo apt-get install apt-transport-https ca-certificates -y && \
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D && \
sudo sh -c 'echo "deb https://apt.dockerproject.org/repo ubuntu-trusty main" > /etc/apt/sources.list.d/docker.list' && \
sudo apt-get update && \
sudo apt-get purge lxc-docker -y && \
sudo apt-cache policy docker-engine && \
sudo apt-get upgrade -y && \
sudo apt-get install linux-image-extra-$(uname -r) -y && \
sudo apt-get install apparmor -y && \
sudo apt-get install docker-engine -y && \
sudo apt-get upgrade docker-engine -y && \
sudo service docker start; \
sudo pip install docker-compose && \
sudo sh -c "curl -L https://raw.githubusercontent.com/docker/compose/$(docker-compose version --short)/contrib/completion/bash/docker-compose > /etc/bash_completion.d/docker-compose";
sudo groupadd docker;
#read -p "Please enter your ubuntu user name: " username
sudo usermod -aG docker $USER && \
sudo reboot
