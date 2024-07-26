FROM openjdk:11-jre-slim
COPY App.class /app/
WORKDIR /app
CMD ["java", "App"]
