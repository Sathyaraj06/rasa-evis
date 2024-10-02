echo "started---------------"

git reset --hard

git pull

sudo chmod 777 deploy_saftek_model.sh

sudo docker compose up --build --force-recreate -d saftek-model

echo "ended---------------"

