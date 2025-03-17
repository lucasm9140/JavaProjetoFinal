# Descrição preve
Este projeto é uma aplicação web construída com Spring Boot para o agendamentos de serviços e gerenciamento dos colaboradores e produtos. O sistema permite cadastro, edição e visualização de dados, com interfaces intuitivas para interagir com as informações.

O projeto se inicia em uma ferramenta online "Spring Initializr" utilizada para gerar projetos iniciais baseados no framework Spring Boot. Ele permite configurar o projeto selecionando as dependências desejadas, o gerenciador de build (Maven ou Gradle), a linguagem de programação (Java, Kotlin ou Groovy) e outras configurações relevantes. Após a configuração, o Spring Initializr fornece um arquivo contendo a estrutura básica do projeto, otimizando o processo de inicialização de aplicações com o Spring Boot.
# 1.0 Início

# 1.1 Pré-requesitos
- Java 21: Certifique-se de ter o JDK 21 instalado.
- Maven: Usaremos Maven para gerenciamento de dependências e build.
- Banco de dados: MySQL Workbench.
- IDE: VS Code.

# 1.2 Gerando o Projeto
- Você pode criar um novo projeto Spring Boot através do Spring Initializr com as seguintes configurações:
- Project: Maven Project
- Language: Java
- Spring Boot: Use a versão mais recente que suporte Java 21 (por exemplo, 3.4.3).
- Group: com.erp
- Artifact: estetica
- Packaging: Jar
- Java: 21

# 1.3 Aplicação
A aplicação segue a arquitetura **MVC** (Model-View-Controller) e utiliza as seguintes tecnologias:

- **Spring Boot**: Framework principal para o desenvolvimento da aplicação.
- **Spring Security**: Para gerenciar a autenticação e autorização de usuários.
- **Spring Data JPA**: Para interação com o banco de dados e operações CRUD.
- **Thymeleaf**: Motor de templates para renderização de páginas HTML.
- **Base64**: Para codificar e exibir imagens (como avatares e imagens de tarefas).

- **Spring Boot**: Framework para simplificar o desenvolvimento de aplicações Java.
- **Spring Security**: Para segurança da aplicação, incluindo autenticação de usuários.
- **Spring Data JPA**: Para fácil acesso a dados no banco de dados relacional.
- **Thymeleaf**: Para renderizar a interface do usuário com HTML dinâmico.
- **Base64**: Para representar imagens binárias em formato textual, como avatares de perfil e imagens de tarefas.

## Estrutura de Pastas

- **Controller**: Contém os controllers responsáveis por lidar com as requisições HTTP e a lógica de negócios.
- **Model**: Contém as classes que representam os dados do sistema, como `Agendamento`, `Funcionario`, `Produto` `Servico`,`Venda`.
- **Repository**: Responsável pela persistência de dados utilizando o Spring Data JPA.
- **View (Templates)**: Contém as páginas HTML renderizadas com Thymeleaf.

