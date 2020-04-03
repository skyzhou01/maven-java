# Assume you have maven install and configure. you can 
cd maven-java

# and run
mvn compile

# you will see the build be successful


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
