FROM compufour/compufacil-php

ENV PYTHON_VERSION=2.7.12-r0
ENV PY_PIP_VERSION=8.1.2-r0
ENV SUPERVISOR_VERSION=3.3.0

COPY run.sh /run.sh
RUN apk update \
    && apk add -u python=$PYTHON_VERSION py-pip=$PY_PIP_VERSION  \
    && apk add sudo \
    && pip install supervisor==$SUPERVISOR_VERSION \
    && chmod +x /run.sh \
    && rm -rf /var/cache/apk/* \
    && mkdir /var/log/supervisor/ \
    && touch /var/log/supervisor/supervisord.log

WORKDIR /
CMD ./run.sh
