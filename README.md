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
 5. Execute o script de setup
    
    ```bash
    ./setup.sh
    ```
    
