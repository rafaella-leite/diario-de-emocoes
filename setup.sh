#!/bin/bash
set -e  # Para sair imediatamente se algum comando falhar

# Verifica se o docker-compose está instalado
if ! command -v docker compose &> /dev/null; then
  echo "docker compose não encontrado. Por favor, instale-o primeiro."
  exit 1
fi

echo "Construindo e iniciando os containers..."
docker compose up --build -d

echo "Aguardando os containers inicializarem..."
# Pode ajustar o tempo de espera conforme necessário
sleep 10

# Configurando o banco de dados para o user-backend
echo "Criando e migrando o banco para o user-backend..."
docker compose exec user-backend rails db:create db:migrate

# Configurando o banco de dados para o messaging-backend, se precisar (caso esse serviço também necessite de migrações)
echo "Criando e migrando o banco para o messaging-backend..."
docker compose exec messaging-backend rails db:create db:migrate

echo "Setup concluído com sucesso!"
