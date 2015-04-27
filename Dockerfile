FROM consol/tomcat-8.0

MAINTAINER chris@cbeer.info

ENV FCREPO_VERSION 4.1.1

RUN wget -q https://github.com/fcrepo4/fcrepo4/releases/download/fcrepo-${FCREPO_VERSION}/fcrepo-webapp-${FCREPO_VERSION}.war -O /tmp/fcrepo4.war

# Move to webapp
RUN mv /tmp/fcrepo4.war /opt/tomcat/webapps/fcrepo.war

CMD /opt/tomcat/bin/deploy-and-run.sh
