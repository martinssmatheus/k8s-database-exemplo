#!/bin/bash

echo Criando PV
kubectl apply -f volumes.yml

echo Criando Serviços de conexão
kubectl apply -f services.yml

echo Criando as aplicações
kubectl apply -f deployment.yml