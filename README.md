# Projeto Final Gerenciamento de Agendamento de Serviços

## 📌 Sobre o Projeto

- Este projeto é uma aplicação web desenvolvida com Spring Boot e Java 21, utilizando MySQL como banco de dados. A aplicação permite operações CRUD (Criar, Ler, Atualizar e Deletar) e possui integração com o Thymeleaf para exibição de páginas dinâmicas.

- 🚀 Tecnologias Utilizadas

  - Java 21

  - Spring Boot

  - Spring Data JPA

  - Thymeleaf

  - MySQL

  - Maven

- 🛠️ Pré-requisitos

  - Antes de iniciar, certifique-se de ter instalado na sua máquina:

  - JDK 21

  - Maven

  - MySQL

- 📥 Clonando o Repositório

  - git clone https://github.com/seu-usuario/seu-repositorio.git
  - cd seu-repositorio

- ⚙️ Configuração do Banco de Dados

  - Crie um banco de dados no MySQL:

  - CREATE DATABASE estetica_auto;

- Configure o application.properties ou application.yml com suas credenciais do MySQL:

    - spring.datasource.url=jdbc:mysql://localhost:3306/nome_do_banco
    - spring.datasource.username=seu_usuario
    - spring.datasource.password=sua_senha
    - spring.jpa.hibernate.ddl-auto=update
    - spring.jpa.show-sql=true

# ▶️ Executando o Projeto

- No terminal, dentro da raiz do projeto, execute:

  - mvn spring-boot:run

  - O servidor será iniciado na porta 8080. Agora, acesse a aplicação em:
  - http://localhost:8080

# 🌐 Acesso Remoto

- Caso queira acessar de outros dispositivos na mesma rede:

- Certifique-se de que o firewall permite conexões na porta 8080.

- Descubra o IP local da máquina onde o projeto está rodando (exemplo: 192.168.1.100).

- Acesse a aplicação via:

- http://192.168.1.100:8080

# ☁️ Deploy na Nuvem

- Para disponibilizar o projeto na internet, você pode fazer o deploy em serviços como:

- Heroku

- AWS

- DigitalOcean

- Railway

# 📌 Próximos Passos

- Agora que o projeto está rodando, você pode:

- Melhorar a validação de formulários

- Implementar autenticação e segurança

- Adicionar novas funcionalidades

# 🔧 Mantenedores: Gesiel Henrique/Lucas Matheus (lucas14fdk@gmail.com)
- 📂 Repositório:(https://github.com/lucasm9140/JavaProjetoFinal)

