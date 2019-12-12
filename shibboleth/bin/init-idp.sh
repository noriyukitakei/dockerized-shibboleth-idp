#!/bin/bash

export JAVA_HOME=/usr/lib/jvm/jre-1.8.0-openjdk
export PATH=$PATH:$JAVA_HOME/bin

cd /opt/shibboleth-idp/bin

echo "Please complete the following for your IdP environment:"
./ant.sh -Didp.target.dir=/opt/shibboleth-idp-tmp -Didp.src.dir=/opt/shibboleth-idp/ install

cp -rf /opt/shibboleth-idp/ /ext-mount/customized-shibboleth-idp/
cp -rf /opt/shibboleth-idp-tmp/* /ext-mount/customized-shibboleth-idp/
sed -i -e 's/idp\.authn\.LDAP\.ldapURL.*/idp\.authn\.LDAP\.ldapURL = ldap:\/\/\${LDAP_HOST}:389/g' /ext-mount/customized-shibboleth-idp/conf/ldap.properties
