FROM python:3.7

VOLUME /opt
WORKDIR /opt

COPY setup.py /opt/
COPY requirements.txt /opt/
COPY pgbedrock /opt/pgbedrock
RUN pip install "cython<3.0.0" && pip install --no-build-isolation pyyaml==5.4.1
RUN pip install -r requirements.txt
RUN pip install .
RUN pip install --force-reinstall psycopg2

ENTRYPOINT ["pgbedrock"]
