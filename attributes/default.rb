[DBMAIL] 
dburi                = sqlite:///var/tmp/dbmail.db
authdriver           =
table_prefix         = dbmail_   
encoding             = utf8
default_msg_encoding = utf8
sendmail              = /usr/sbin/sendmail     
file_logging_levels       = 7
syslog_logging_levels     = 31
query_time_info       = 10
query_time_notice     = 20
query_time_warning    = 30
query_timeout         = 300 
effective_user        = nobody
effective_group       = nogroup
bindip                = 0.0.0.0		# IPv4 only - all IP's
timeout               = 300             
login_timeout         = 60
resolve_ip            = no
authlog               = no
logfile               = /var/log/dbmail.log        
errorlog              = /var/log/dbmail.err        
pid_directory         = /var/run/dbmail
tls_cafile            =
tls_cert              =
tls_key               =
tls_ciphers           =
[LMTP]
port                  = 24                 
[POP]
port                  = 110
pop_before_smtp       = no      
[HTTP]
port                  = 41380
bindip                = 127.0.0.1
admin                 = admin:secret
[IMAP]
port                  = 143                
timeout               = 4000            
imap_before_smtp      = no     
[SIEVE]
port                  = 2000               
tls_port              =
[LDAP]
port                  = 389
version               = 3
hostname              = ldap
base_dn               = ou=People,dc=mydomain,dc=com
bind_dn               = 
bind_pw               = 
scope                 = SubTree
referrals             = yes
user_objectclass      = top,account,dbmailUser
forw_objectclass      = top,account,dbmailForwardingAddress
cn_string             = uid
field_passwd          = userPassword
field_uid             = uid
field_nid             = uidNumber
min_nid               = 10000
max_nid               = 15000
field_cid             = gidNumber
min_cid               = 10000
max_cid               = 15000
field_mail            = mail
field_quota           = mailQuota
field_fwdtarget       = mailForwardingAddress
[DELIVERY]
SIEVE                 = yes               
SUBADDRESS            = yes          
SIEVE_VACATION        = yes      
SIEVE_NOTIFY          = yes
SIEVE_DEBUG           = no          
AUTO_NOTIFY           = no
 
AUTO_REPLY            = no
suppress_duplicates	= no
quota_failure           = hard
