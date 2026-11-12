# Keep the full python image, not -slim: psycopg2 is built from source (psycopg's recommended
# setup for production) and needs the compiler and libpq headers the full image ships.
FROM python:3.12

VOLUME /opt
WORKDIR /opt

COPY setup.py /opt/
COPY requirements.txt /opt/
COPY pgbedrock /opt/pgbedrock
RUN pip install -r requirements.txt
RUN pip install .

ENTRYPOINT ["pgbedrock"]
