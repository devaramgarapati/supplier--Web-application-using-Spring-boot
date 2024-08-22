<h1> Web Clients Supplier Spring boot Starter </h1>
Web Clients Supplier allow you to inject in the spring context beans of web client configured in multiple fashion.
<h2>Web Clients Supplier Installation:</h2>
import the dependency in your pom.xml,This library implement spring boot autoconfiguration, so to enable the behavior of Web Clients Supplier you just need to use @SpringBootApplication or @EnableAutoConfiguration on one of your beans definition.
<h2>Create Web Client Bean:</h2>
In order to inject in the spring context a web client bean you just need to insert in your configuration the following configuration.
<h2>Run the Application</h2>
You can run the Spring Boot application using Maven or by directly running the JAR file.
 <h3>option 1:</h3> Run with maven using this (mvn spring-boot:run)
 <h3>option 2:</h3>run the JAR file
 After building the project, you'll find a JAR file in the target directory. Run it using the following command
 (java -jar target/your-app-name.jar)
