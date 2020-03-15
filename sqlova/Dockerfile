# latest is not actually the most recent, currently

FROM ubuntu:18.04

# Install Java
RUN DEBIAN_FRONTEND="noninteractive" \
  apt update && \
  apt install -y unzip openjdk-8-jre-headless git postgresql python-psycopg2 libpq-dev wget jq && \
  apt install -y python3.7 python3-pip python3-dev && \
  rm -rf /var/lib/apt/lists/*

ENV VERSION stanford-corenlp-full-2016-10-31

RUN \
 mkdir -p /opt/corenlp && \
 cd /opt/corenlp && \
 wget --quiet http://nlp.stanford.edu/software/$VERSION.zip -O corenlp.zip && \
 unzip corenlp.zip && \
 mv $VERSION src && \
 rm -r corenlp.zip && \
 rm -rf /var/lib/apt/lists/*

RUN \
  cd /opt && \
  echo v2 && \
  git clone https://github.com/TransityGroup/sqlova -b prediction_api

WORKDIR /opt/sqlova

add support support
add pretrained pretrained

add run_services.sh run_services.sh

RUN \
  pip3 install -r requirements.txt

ADD http://worldtimeapi.org/api/timezone/Europe/London.txt /tmp/bustcache
RUN \
  cd /opt/sqlova && \
  git pull

CMD ["./run_services.sh"]

EXPOSE 5050
