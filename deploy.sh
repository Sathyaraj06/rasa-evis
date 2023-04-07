echo "started---------------"

# sudo docker rm -f $(sudo docker ps -aq)

# sudo docker rmi $(sudo docker images -q)

git pull

sudo docker-compose build dummy

sudo docker-compose up -d --no-recreate dummy

sudo docker rmi $(sudo docker images --filter "dangling=true" -q --no-trunc)

sudo docker images

sudo docker ps -a

echo "ended---------------"
