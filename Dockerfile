FROM openjdk:23-ea-8-jdk-oraclelinux8

RUN apt-get update && \
    apt-get install build-essential maven default-jdk cowsay netcat -y && \
    update-alternatives --config javac
COPY . .

CMD ["mvn", "spring-boot:run"]
