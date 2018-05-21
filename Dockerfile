FROM python:2.7
RUN apt-get update && apt-get install nginx -y && \
	apt-get install git -y && \
	apt-get install libsasl2-dev libldap2-dev python-ldap gettext -y
VOLUME ["/var/opt/helios-server"]
WORKDIR /var/opt/helios-server 
CMD sh /var/opt/helios-server/start.sh