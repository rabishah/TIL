#!/usr/bin/env bash

# monitor your server with NewRelic.
rpm -Uvh https://download.newrelic.com/pub/newrelic/el5/i386/newrelic-repo-5-3.noarch.rpm
yum -y install newrelic-sysmond
nrsysmond-config --set license_key=[Your License Key]
/etc/init.d/newrelic-sysmond start
