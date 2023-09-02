echo "started---------------"

git reset --hard

git pull

sudo chmod 777 deploy_chat.sh

sudo docker-compose up --build --force-recreate -d chat

echo "ended---------------"

