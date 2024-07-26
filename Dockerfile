FROM openjdk:11-jre-slim
COPY App.java /app/
WORKDIR /app
RUN javac App.java
CMD ["java", "App"]
