echo "started---------------"

git reset --hard

git pull

sudo chmod 777 deploy_kalani.sh

sudo docker-compose up --build --force-recreate -d kalani

echo "ended---------------"

