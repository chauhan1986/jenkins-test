FROM	openjdk:8
RUN	mkdir /opt/app
ENV 	PROJECT_HOME /opt/app
COPY	target/addressbook-2.0.war $PROJECT_HOME/addressbook-2.0.war
WORKDIR $PROJECT_HOME
CMD ["java" "-war","addressbook-2.0.war" ]
