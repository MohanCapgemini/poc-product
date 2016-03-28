FROM java:8
COPY poc-product-environment.properties /usr/src/poc-product-environment.properties
COPY microservice-demo-products-0.0.1-SNAPSHOT.jar /usr/src/microservice-demo-products-0.0.1-SNAPSHOT.jar
WORKDIR /usr/src
CMD java -jar -Dconfig.home="/usr/src" microservice-demo-products-0.0.1-SNAPSHOT.jar