 #/bin/ash

 /usr/sbin/crond -b
 /usr/bin/supervisord --configuration /etc/supervisor/supervisord.conf
