FROM openjdk:11-jre-slim
COPY HelloWorld.class /app/
WORKDIR /app
CMD ["java", "App"]
