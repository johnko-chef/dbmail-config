#
# Cookbook Name:: dbmail-config
# Recipe:: default
#
# Author:: John Ko <git@johnko.ca>
# Copyright 2014, John Ko
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

set['dbmail']['enable_imapd']  = 'yes'
set['dbmail']['enable_lmtpd']  = 'yes'
set['dbmail']['enable_pop3d']  = 'no'
set['dbmail']['enable_sieved'] = 'yes'

set['dbmail']['dbmail']['dburi'] = 'sqlite:///var/tmp/dbmail.db'
set['dbmail']['dbmail']['authdriver'] = '' # for DB
set['dbmail']['dbmail']['sendmail'] = '/usr/local/sbin/sendmail'
set['dbmail']['dbmail']['authlog']    = 'yes'
set['dbmail']['dbmail']['bindip'] = node['ipaddress']
set['dbmail']['http']['bindip'] = node['ipaddress']

set['dbmail']['dbmail']['tls_cafile'] = ''
set['dbmail']['dbmail']['tls_cert'] = ''
set['dbmail']['dbmail']['tls_key'] = ''
set['dbmail']['dbmail']['tls_ciphers'] = ''

set['dbmail']['imap']['tls_port'] = '993'
set['dbmail']['lmtp']['tls_port'] = ''
set['dbmail']['sieve']['tls_port'] = ''

set['dbmail']['ldap']['hostname'] = 'ldap'
default['dbmail']['ldap']['base_dn'] = 'ou=People,dc=mydomain,dc=com'
default['dbmail']['ldap']['bind_dn'] = ''
default['dbmail']['ldap']['bind_pw'] = ''
default['dbmail']['ldap']['field_mail']= 'mail' # a comma-separated list of attributes to match when searching for users or forwards that match a delivery address. A match on any of them is a hit.
default['dbmail']['ldap']['field_quota]'= 'mailQuota' # field that holds the mail-quota size for a user.
default['dbmail']['ldap']['field_fwdtarget']= 'mailForwardingAddress' # field that holds the forwarding address.
#default['dbmail']['ldap']['query_string'] = '(mail=%s)' # override the query string used to search for users or forwards with a delivery address.
