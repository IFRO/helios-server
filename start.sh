#git clone --depth=1 https://github.com/IFRO/helios-server.git /var/opt/helios-server
#cd /var/opt/helios-server && \
python -m pip install --user virtualenv && \
python -m virtualenv env && \
/bin/bash -c "source env/bin/activate" && \
pip install -r requirements.txt && \
sh ./reset.sh && \
python manage.py runserver 0.0.0.0:8000