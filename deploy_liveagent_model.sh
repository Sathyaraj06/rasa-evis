echo "started---------------"

git reset --hard

git pull

sudo chmod 777 deploy_liveagent_model.sh

sudo docker-compose up --build --force-recreate -d liveagent-model

echo "ended---------------"

