FROM eclipse-temurin:17-jdk-alpine
VOLUME /tmp
# 변수를 Command로 전달. 이미지 생성. 
# docker build --build-arg JAR_FILE=build/libs/*.jar -t tps/coffee-back .
# https://spring.io/guides/topicals/spring-boot-docker
# docker run -d -it --name coffee-backend --network coffee-network tps/coffee-back
ARG JAR_FILE
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]