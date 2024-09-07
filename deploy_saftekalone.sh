echo "started---------------"

git reset --hard

git pull

sudo chmod 777 deploy_saftekalone.sh

sudo docker-compose up --build --force-recreate -d saftekalone

echo "ended---------------"

