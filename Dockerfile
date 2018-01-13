FROM java:8-jre

MAINTAINER kurow3 <kurow3 [at] dev.skurow.com>

ENV GITBUCKET_VER 4.20.0
ADD https://github.com/gitbucket/gitbucket/releases/download/${GITBUCKET_VER}/gitbucket.war /opt/gitbucket.war

RUN ln -s /gitbucket /root/.gitbucket

VOLUME /gitbucket

# Port for web page
EXPOSE 8080
# Port for SSH access to git repository (Optional)
EXPOSE 29418

CMD ["java", "-jar", "/opt/gitbucket.war"]
