FROM tomcat:8.5.49-jdk8-openjdk

RUN apt-get update && \
    apt-get -y install expect

ADD customized-shibboleth-idp /opt/shibboleth-idp

ADD bin/build.sh /usr/local/bin

RUN chmod 755 /usr/local/bin/build.sh && \
    /usr/local/bin/build.sh && \
    cp /opt/shibboleth-idp/war/idp.war /usr/local/tomcat/webapps

