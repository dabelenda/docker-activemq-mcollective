#!/bin/sh

/opt/puppetlabs/puppet/bin/augtool -Ast "Xml incl /etc/activemq/instances-available/main/activemq.xml" "set //authenticationUser[#attribute/username = 'mcollective']/#attribute/password $STOMP_PASSWORD"
/opt/puppetlabs/puppet/bin/augtool -Ast "Xml incl /etc/activemq/instances-available/main/activemq.xml" "set //authenticationUser[#attribute/username = 'admin']/#attribute/password $(pwgen -s 12 1)"
