FROM openjdk
WORKDIR /app
COPY *.class /app/
EXPOSE 4000
CMD ["java", "HelloWorldServer"]
