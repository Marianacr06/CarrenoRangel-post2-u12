# ---- Etapa 1: compilacion con Maven ----
FROM eclipse-temurin:21-jdk-alpine AS builder
WORKDIR /app

COPY pom.xml .
RUN ./mvnw dependency:go-offline -q 2>/dev/null || mvn dependency:go-offline -q

COPY src ./src
RUN mvn clean package -DskipTests -q

# ---- Etapa 2: imagen de produccion ----
FROM eclipse-temurin:21-jre-alpine
WORKDIR /app

RUN addgroup -S spring && adduser -S spring -G spring
USER spring

COPY --from=builder /app/target/*.jar app.jar

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
