# Adicione este conteúdo em um arquivo chamado project-aliases.sh
# e carregue-o no seu shell (por exemplo, usando `source project-aliases.sh`)

# Rodar o user-backend
alias run-user="docker compose up user-backend"

# Rodar o messaging-backend
alias run-messaging="docker compose up messaging-backend"

# Acessar o Rails console do user-backend
alias c-user="docker compose exec user-backend rails console"

# Acessar o Rails console do messaging-backend
alias c-messaging="docker compose exec messaging-backend rails console"

# Rodar o front (assumindo que o front será um serviço chamado "frontend" no docker-compose.yml)
alias run-front="cd front && npm start"

# Acessar o console do banco de dados PostgreSQL
alias db-console="docker compose exec database psql -U postgres"
