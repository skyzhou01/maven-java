# Assume you have maven install and configure. you can 
cd maven-java

# and run
mvn compile

# you will see the build be successful. Note that the jar life cycle consists of
# compile
# package - build the jar
# install - install the jar at maven repository.


# Directory Template
# standard java project, maven will look into Directory Template
# project root -> src -> main -> java -> resources

# standard java project, maven will look into Directory Template for unit test
# project root -> src -> test -> java and resources

# standard java project, maven will look into Directory Template for web app
# project root -> src -> main -> webapp

# standard java project, maven will look into Directory Template for groovy
# project root -> src -> main -> groovy

# using the following to create 
mkdir -p src/main/resource
mkdir -p src/main/java
mkdir -p src/test/java
mkdir -p src/test/resource

# To preserve folers with Git
touch src/main/java/.gitkeep
touch src/main/resource/.gitkeep
touch src/test/java/.gitkeep
touch src/test/resource/.gitkeep

# To add java source application.
mkdir -p src/main/java/dataengineering/com/training
# create Application.java where the package being: dataengineering.com.training;

# Let go back the project root to run (package which is part of jar lifecycle).
mvn package

# If the package build successful, we will see that there is a folder
# named "target" at the project root. Within this target folder, one of the file is 
# "maven-java-1.0.jar". The jar file contains the compiled version of the java project. 
# We can run the application use jave command by provide the class to run.
java -cp  target/maven-java-1.0.jar dataengineering.com.training.Application

# 8. Once we are done with our build, we can use 
mvn clean 
# to clean the target fold. clean is part of the clean cycles that is different from
# the jar life cycle. After running the above command, we will see that the "target" 
# fold will be removed.

# 9. As part of the residaul removing, we can run
mvn clean package
# which allow us to remove any previous build before the current build. 
# Note that clean and package are from different life cycles.

# 10. maven install.
mvn clean install
# will install the jar at maven respository, which wil be at ~/.m2/repository/...
# The follow command shows the .jar and .pom file in the repository.
 
ls ~/.m2/repository/com/dataengineering/maven-java/1.0                            ─╯

# _remote.repositories maven-java-1.0.jar   maven-java-1.0.pom
# Note that Maven first finds the .pom, which is the metadata that defines what is in the .jar file.

# 11. Maven plugin..
# The default java version maven uses is 1.5. Suppose the application requires java 1.8, then one should modify the pom.xml
# by adding the following
 <build>
    
    <plugins>
      <plugin>
        <groupId>org.apache.maven.plugins</groupId>
        <artifactId>maven-compiler-plugin</artifactId>
        <version>3.8.1</version>
        <configuration>
          <source>1.8</source>
          <target>1.8</target>
        </configuration>
      </plugin>
    </plugins>
    
  </build>


# The above xml can be found from: https://maven.apache.org/plugins/maven-compiler-plugin/examples/set-compiler-source-and-target.html

# 11.a. Let run 
mvn clean install

# and 
java -cp target/maven-java-1.0.jar dataengineering/com/training/Application

# we will see the result of the greet method.





