FROM maven:3.5-jdk-8

COPY src /usr/src/myapp/src
COPY pom.xml /usr/src/myapp
RUN mvn -f /usr/src/myapp/pom.xml package -Dmaven.test.skip=true

EXPOSE 8989

CMD ["java", "-cp", "/usr/src/myapp/target/Elastos.ELA.Utilities.Java-1.0-SNAPSHOT-jar-with-dependencies.jar", "org.elastos.elaweb.HttpServer"]
