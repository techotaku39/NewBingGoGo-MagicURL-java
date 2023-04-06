FROM gradle:8.0.2-jdk17
ADD ./ ./
RUN gradle shadow
EXPOSE 3003/tcp
EXPOSE 3003/udp
ENTRYPOINT ["java","-jar","./build/libs/NewBingGoGo-MagicURL-java-1.0-SNAPSHOT-all.jar","3003"]