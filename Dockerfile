# DOCKER-VERSION	1.5.0

FROM nhoag/nodejs
MAINTAINER Stephen Price, stephen@stp5.net

ENV BOTVERSION 0.0.3
ENV BOTDIR /opt/hubot
ENV BOTARCHIVE https://github.com/steeef/hubot-gerty/archive/${BOTVERSION}.tar.gz

RUN mkdir -p ${BOTDIR}
RUN wget -q -O - ${BOTARCHIVE} | tar xz --strip-components=1 -C ${BOTDIR}

WORKDIR ${BOTDIR}

RUN npm install
