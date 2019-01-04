FROM openjdk:8-jdk-alpine
VOLUME /tmp

ADD /target/spring.jar spring.jar

RUN sh -c 'touch /spring.jar'

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/spring.jar"]

#FROM jboss/wildfly
#ADD /target/spring.war /opt/jboss/wildfly/standalone/deployments/