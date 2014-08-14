name             'dbmail-config'
maintainer       'John Ko'
maintainer_email 'git@johnko.ca'
license          'Apache 2.0'
description      'Creates a /usr/local/etc/dbmail.conf'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

recipe           'dbmail-config', 'Creates a /usr/local/etc/dbmail.conf'
depends          'dbmail'
depends          'svc'

%w(freebsd).each do |os|
  supports os
end
