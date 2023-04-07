FROM gradle:8.0.2-jdk17
ADD ./ ./
RUN gradle shadow
EXPOSE 443/tcp
EXPOSE 443/udp
ENTRYPOINT ["java","-jar","./build/libs/NewBingGoGo-MagicURL-java-1.0-SNAPSHOT-all.jar","443"]