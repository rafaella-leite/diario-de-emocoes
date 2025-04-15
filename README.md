# diario-de-emocoes
Repositório central do aplicativo Diario de emoções

Este repositório deve ser utilizado como uma raiz para os componentes da aplicação, os componentes integrantes são:
- ![Rails](https://img.shields.io/badge/rails-%23CC0000.svg?style=for-the-badge&logo=ruby-on-rails&logoColor=white) **user-backend:** Backend principal da aplicação que será responsável por gerenciar os dados dos usuários
- ![Rails](https://img.shields.io/badge/rails-%23CC0000.svg?style=for-the-badge&logo=ruby-on-rails&logoColor=white) **messaging-backend:** Backend secundário que irá gerenciar os serviços de mensageria
- ![Next JS](https://img.shields.io/badge/Next-black?style=for-the-badge&logo=next.js&logoColor=white) **front:** Front end da aplicação.

## Requisitos

Para executar esse projeto é necessário possuir as seguintes aplicações

- [Docker Desktop](https://www.docker.com/products/docker-desktop/)
- [Node.JS](https://nodejs.org/pt/download)

## Instruções para execução do projeto

#### Backend

 1. Dentro do diretório atual, clone os dois projetos do backend
    
    ```bash
    git clone https://github.com/ZxalFox/user-backend.git
    git clone https://github.com/ZxalFox/messaging-backend.git
    ```
 3. Conceda a permissão de acesso ao script de setup
    
    ```bash
    chmod +x setup.sh
    ```
 4. Abra o Docker Desktop e o deixe executando em segundo plano
      - Certifique-se de que a mensagem <span style="color:green">*Engine running*</span> esteja sendo exibida no canto inferior esquerdo da aplicação

 5. Execute o script de setup
    
    ```bash
    ./setup.sh
    ```
 6. Verifique se os backends estão acessiveis nas seguintes rotas
   
   - user-backend: `http://localhost:3000`
   - messaging-backend: `http://localhost:3001`

 7. Em caso de sucesso podemos parar os containers

      ```bash
      docker compose stop
      ```
      
 Agora que o backend já está configurado, podemos seguir para o front!

 #### Frontend
   
   O frontend é uma parte mais independente da aplicação, ele não precisa obrigatoriamente ser alocado dentro do diretório 
   `diario-de-emocoes` e também não necessita de um conteiner dedicado no Docker.

   1. Clone o projeto do frontend

   ```bash
   git clone https://github.com/ZxalFox/front.git
   ```

   2. Acesse o diretório

   ```bash
   cd front
   ```

   3. Instale as dependencias

   ```bash
   npm install
   ```

   4. Rode o projeto

   ```bash
   npm run dev
   ```

   5. Verifique se o projeto está acessivel na rota `http://localhost:5000`

#### Aliases

   Para facilitar a manutenção do projeto foram adicionados alguns aliases para terminal

   1. Adicione o script de aliases ao seu terminal 

   ```bash
   source ./aliases.sh
   ```
   2. Recarregue o terminal

   ```bash
   source ~/.bashrc 
   ```
   


     
