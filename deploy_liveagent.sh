echo "started---------------"

git reset --hard

git pull

sudo chmod 777 deploy_liveagent.sh

sudo docker-compose up --build --force-recreate -d liveagent

echo "ended---------------"

