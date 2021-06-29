FROM openjdk:11
RUN mkdir -p /deployments/config &&  \
    chown -R 1001:0 /deployments/ && \
    chmod -R 775 /deployments/
ADD target/fooservice.jar /deployments/fooservice.jar
WORKDIR /deployments
USER 1001
EXPOSE 8081
ENTRYPOINT ["java","-jar", "/deployments/fooservice.jar"]
