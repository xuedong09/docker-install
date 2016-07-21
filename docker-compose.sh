# !/bin/bash
sudo pip install docker-compose && \
sudo sh -c "curl -L https://raw.githubusercontent.com/docker/compose/$(docker-compose version --short)/contrib/completion/bash/docker-compose > /etc/bash_completion.d/docker-compose"
