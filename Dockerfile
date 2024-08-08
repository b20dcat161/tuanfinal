FROM tomcat

VOLUME /app/upload/
COPY target/1tuanthietke-0.0.1-SNAPSHOT.jar /app/1tuanthietke-0.0.1-SNAPSHOT.jar
WORKDIR /app
USER root
RUN apt-get update && \
    apt-get install -y ffmpeg && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* 
ENTRYPOINT ["java","-jar","1tuanthietke-0.0.1-SNAPSHOT.jar"]

    
