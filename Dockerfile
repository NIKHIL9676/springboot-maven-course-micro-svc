FROM adoptopenjdk/openjdk8
COPY target/springboot-maven-course-micro-svc-0.0.1-SNAPSHOT.jar springboot-maven-course-micro-svc-0.0.1-SNAPSHOT.jar
EXPOSE 8082:8082
ENTRYPOINT ["java","-jar","springboot-maven-course-micro-svc-0.0.1-SNAPSHOT.jar"]
