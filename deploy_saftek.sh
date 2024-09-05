echo "started---------------"

git reset --hard

git pull

sudo chmod 777 deploy_saftek.sh

sudo docker-compose up --build --force-recreate -d saftek

echo "ended---------------"

