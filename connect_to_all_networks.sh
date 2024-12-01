#!/bin/bash

# Nome do contêiner que será conectado às redes
CONTAINER_NAME="nginx-proxy-manager"

# Lista todas as redes disponíveis (exclui redes especiais como 'bridge', 'host' e 'none')
NETWORKS=$(docker network ls --filter driver=bridge --format "{{.Name}}" | grep -v -E "bridge|host|none")

# Conecta o contêiner a cada rede encontrada
for NETWORK in $NETWORKS; do
    echo "Conectando $CONTAINER_NAME à rede $NETWORK..."
    docker network connect "$NETWORK" "$CONTAINER_NAME" 2>/dev/null || echo "Já conectado à rede $NETWORK ou erro ao conectar."
done

echo "Conexão às redes concluída."
