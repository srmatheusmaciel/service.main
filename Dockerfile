# Etapa de build (nomeando como "build")
FROM maven:3.9.6-amazoncorretto-21-debian AS build  

COPY src /app/src  
COPY pom.xml /app  

WORKDIR /app  
RUN mvn clean install

# Etapa final (imagem menor para rodar o app)
FROM amazoncorretto:21  

WORKDIR /app  
COPY --from=build /app/target/service.main-0.0.1-SNAPSHOT.jar /app/app.jar  

EXPOSE 8888  

CMD ["java", "-jar", "app.jar"]  
