#!/bin/bash
set -e  # Sai imediatamente se ocorrer algum erro

# Arquivo de configuração onde os aliases serão adicionados
CONFIG_FILE="$HOME/.bashrc"

# Função para adicionar um alias ao arquivo de configuração
add_alias() {
  local alias_name=$1
  local alias_command=$2

  # Verifica se o alias já existe no arquivo de configuração
  if ! grep -q "alias $alias_name=" "$CONFIG_FILE"; then
    echo "Adicionando alias '$alias_name' ao $CONFIG_FILE..."
    echo "alias $alias_name='$alias_command'" >> "$CONFIG_FILE"
  else
    echo "Alias '$alias_name' já existe no $CONFIG_FILE."
  fi
}

# Adicionando aliases ao bashrc
add_alias "run-user" "docker compose up user-backend"
add_alias "run-messaging" "docker compose up messaging-backend"
add_alias "c-user" "docker compose exec user-backend rails console"
add_alias "c-messaging" "docker compose exec messaging-backend rails console"
add_alias "run-front" "cd front && npm run dev"
add_alias "c-db" "docker compose exec database psql -U postgres"
add_alias "odio" "echo Relaxa e respira fundo... Você consegue! 😌"
add_alias "viajando" "echo Terra para Rafaella, volte rafa, o mundo precisa de você!" 

# Mensagem final
echo "Todos os aliases foram adicionados ao $CONFIG_FILE. 🚀"
echo "Execute 'source $CONFIG_FILE' para carregar os novos aliases no seu terminal atual."
