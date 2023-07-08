echo "started---------------"

 sudo docker rm -f $(sudo docker ps -aq)

 sudo docker rmi $(sudo docker images -q)

 sudo docker rmi $(sudo docker images --filter "dangling=true" -q --no-trunc)

 sudo docker volume prune

 sudo docker network prune

 sudo docker images

 sudo docker ps -a

echo "ended---------------"

# token: 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
