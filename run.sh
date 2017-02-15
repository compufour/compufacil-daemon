 #/bin/ash

 /usr/sbin/crond -b
 /usr/bin/supervisord --nodaemon --configuration /etc/supervisor/supervisord.conf
