#!/bin/bash

echo "Deploy Imagens"

docker build -t martinssmatheus/projeto-backend:1.0 backend/.
docker build -t martinssmatheus/projeto-database:1.0 database/.

echo "Push Imagens"

docker push martinssmatheus/projeto-backend:1.0
docker push martinssmatheus/projeto-database:1.0

echo "Criando Serviços de conexão"
kubectl apply -f ./services.yml

echo "Criando PV"
kubectl apply -f ./volumes.yml

echo "Criando as aplicações"
kubectl apply -f ./deployment.yml

