# Service Main

## Descrição

O `service-main` é um microserviço desenvolvido com Spring Boot que atua como um servidor de configuração centralizado utilizando Spring Cloud Config Server e como um servidor de descoberta de serviços com Eureka Server. Ele facilita a integração e o gerenciamento de configurações para outros microserviços dentro do ecossistema.

## Tecnologias Utilizadas

- **Java 21**
- **Spring Boot 3.4.2**
- **Spring Cloud Config Server** (para gerenciamento de configurações)
- **Spring Cloud Netflix Eureka Server** (para descoberta de serviços)
- **Spring Boot DevTools** (para desenvolvimento)
- **Lombok** (para reduzir código boilerplate)
- **JUnit** (para testes automatizados)

## Como Executar o Projeto

### Pré-requisitos

- Java 21+
- Maven 3+
- Git instalado

### Configuração do Application Properties

O `service-main` utiliza configurações armazenadas em um repositório Git. No arquivo `application.properties`, defina as seguintes configurações:

```properties
spring.application.name=service-main
server.port=8888
spring.cloud.config.server.git.uri=https://github.com/srmatheusmaciel/config-server.git
spring.cloud.config.server.git.clone-on-start=true
spring.cloud.config.server.git.search-paths=config
eureka.client.registerWithEureka=false
eureka.client.fetchRegistry=false
eureka.instance.hostname=localhost
spring.cloud.config.server.prefix=/config
```

### Executando o Projeto

1. Clone o repositório:
   ```sh
   git clone https://github.com/srmatheusmaciel/service-main.git
   ```
2. Acesse a pasta do projeto:
   ```sh
   cd service-main
   ```
3. Compile e execute a aplicação:
   ```sh
   mvn spring-boot:run
   ```
4. O servidor de configuração estará disponível em `http://localhost:8888`



```

## Contribuição

Contribuições são bem-vindas! Para contribuir:

1. Fork o repositório
2. Crie um branch para sua feature: `git checkout -b minha-feature`
3. Faça commit das mudanças: `git commit -m 'Adiciona minha feature'`
4. Faça push para o branch: `git push origin minha-feature`
5. Abra um Pull Request

## Licença

Este projeto está sob a licença MIT. Para mais detalhes, consulte o arquivo `LICENSE`.

