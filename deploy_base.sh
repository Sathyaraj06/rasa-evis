echo "started---------------"

git reset --hard

git pull

sudo chmod 777 deploy_common.sh

sudo docker-compose up --build --force-recreate -d common

echo "ended---------------"

