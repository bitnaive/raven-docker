FROM ubuntu:18.04

RUN apt-get update && apt-get install -y build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils python3 git
RUN apt-get install -y libboost-all-dev

RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:bitcoin/bitcoin
RUN apt-get update
RUN apt-get install -y libdb4.8-dev libdb4.8++-dev

WORKDIR /
RUN git clone https://github.com/RavenProject/Ravencoin.git

WORKDIR /Ravencoin

RUN ./autogen.sh
RUN ./configure --without-gui
RUN make
RUN make install

EXPOSE 8766

ADD raven.conf /root/.raven/raven.conf

ADD ./entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]