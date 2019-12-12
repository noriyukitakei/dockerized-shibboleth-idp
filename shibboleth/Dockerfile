FROM centos:centos7

ENV idp_version=3.4.6

# Inatall the libraries neccesary for building Shibboleth IdP
RUN yum -y update && \
    yum -y install wget java-1.8.0-openjdk

# Download Shibboleth IdP
RUN wget -q https://shibboleth.net/downloads/identity-provider/$idp_version/shibboleth-identity-provider-$idp_version.tar.gz && \
    tar -zxvf  shibboleth-identity-provider-$idp_version.tar.gz -C /opt && \
    ln -s /opt/shibboleth-identity-provider-$idp_version/ /opt/shibboleth-idp

COPY bin/ /usr/local/bin/

RUN chmod 750 /usr/local/bin/init-idp.sh
