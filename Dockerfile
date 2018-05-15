FROM python:2.7
RUN apt-get update && apt-get install nginx -y && apt-get install git -y
RUN git clone https://github.com/IFRO/helios-server.git /var/opt/helios-server
RUN cd /var/opt/helios-server && \
	python -m pip install --user virtualenv && \
	python -m virtualenv env && \
	/bin/bash -c "source env/bin/activate" && \
	pip install -r requirements.txt
CMD bash