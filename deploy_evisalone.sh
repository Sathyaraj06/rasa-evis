echo "started---------------"

git reset --hard

git pull

sudo chmod 777 deploy_evisalone.sh

sudo docker compose up --build --force-recreate -d evisalone

echo "ended---------------"

