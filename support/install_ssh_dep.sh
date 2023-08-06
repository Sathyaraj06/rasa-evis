#install ssh server
sudo docker stop webssh2
sudo docker rm webssh2
sudo docker run --name webssh2 -d -p 8001:2222 billchurch/webssh2

#install portainer.io

sudo docker volume create portainer_data

sudo docker stop portainer
sudo docker rm portainer
sudo docker run -d -p 8000:8000 -p 8002:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest

# portainer reset password
docker container stop portainer
docker run --rm -v portainer_data:/data portainer/helper-reset-password


# List of ports exposed in linux
# sudo lsof -i -P -n | grep LISTEN