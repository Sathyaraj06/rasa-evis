echo "started---------------"

git reset --hard

git pull

sudo chmod 777 deploy_evis_model.sh

sudo docker-compose up --build --force-recreate -d evis-model

echo "ended---------------"

