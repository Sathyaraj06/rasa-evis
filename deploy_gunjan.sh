echo "started---------------"

git reset --hard

git pull

sudo chmod 777 deploy_gunjan.sh

sudo docker-compose up --build --force-recreate -d gunjan

echo "ended---------------"

