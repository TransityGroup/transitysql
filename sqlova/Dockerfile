# latest is not actually the most recent, currently

FROM ubuntu:18.04

# Install Java
RUN \
  apt update && \
  apt install -y unzip openjdk-8-jre-headless git wget jq && \
  apt install -y python3.7 python3-pip python3-dev && \
  rm -rf /var/lib/apt/lists/*

ENV VERSION stanford-corenlp-full-2016-10-31
ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

ADD install_depedencies.sh /install_depedencies.sh
RUN /install_depedencies.sh

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
  echo v2
  # git clone https://github.com/TransityGroup/sqlova -b prediction_api

ADD ./src /opt/sqlova

WORKDIR /opt/sqlova

ADD support support
ADD pretrained pretrained

ADD run_services.sh run_services.sh

RUN pip3 install -r requirements.txt
RUN pip3 install uvicorn

ADD http://worldtimeapi.org/api/timezone/Europe/London.txt /tmp/bustcache

CMD ["./run_services.sh"]

EXPOSE 5050
