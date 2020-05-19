#/bin/sh

# https://stackoverflow.com/questions/18502945/how-to-execute-a-remote-command-over-ssh-with-arguments
ssh -i ~/.ssh/id_rsa_digital-ocean root@167.172.6.96 "docker-compose --file /usr/local/src/alun/docker-compose.yml down --rmi all --remove-orphans"

# https://linuxize.com/post/how-to-use-scp-command-to-securely-transfer-files/
scp -i ~/.ssh/id_rsa_digital-ocean ./docker-compose.digital-ocean.yml root@167.172.6.96:/usr/local/src/alun/docker-compose.yml

ssh -i ~/.ssh/id_rsa_digital-ocean root@167.172.6.96 "docker-compose --file /usr/local/src/alun/docker-compose.yml up --detach"