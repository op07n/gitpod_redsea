FROM gitpod/workspace-full-vnc:latest

USER root

# Install dependencies
RUN apt-get update \
    && apt-get install -y build-essential autoconf libsndfile1-dev libliquid-dev \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*

USER gitpod

RUN git clone https://github.com/windytan/redsea.git
 
RUN cd redsea
 
RUN ./autogen.sh && ./configure && make

RUN make install

USER root
