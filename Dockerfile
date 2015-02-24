# DOCKER-VERSION	1.5.0

FROM nhoag/nodejs
MAINTAINER Stephen Price, stephen@stp5.net

ENV BOTVERSION 0.0.2
ENV BOTDIR /opt/bot-${BOTVERSION}
ENV BOTARCHIVE https://github.com/steeef/hubot-gerty/archive/${BOTVERSION}.tar.gz

RUN wget -q -O - ${BOTARCHIVE} | tar xz -C /opt

WORKDIR ${BOTDIR}

RUN npm install
