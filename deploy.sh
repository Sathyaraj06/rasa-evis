echo "started---------------"

# sudo docker rm -f $(sudo docker ps -aq)

# sudo docker rmi $(sudo docker images -q)
git reset --hard

git pull

sudo chmod 777 deploy.sh

sudo docker-compose build

sudo docker-compose up -d base

# sudo docker-compose up -d --no-recreate dummy

sudo docker rmi $(sudo docker images --filter "dangling=true" -q --no-trunc)

sudo docker images

sudo docker ps -a

echo "ended---------------"

# token: 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
