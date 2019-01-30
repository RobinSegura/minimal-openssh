FROM alpine

LABEL maintainer Robin SEGURA <rsegura@outlook.fr>

RUN apk --update add openssh && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

VOLUME /git
WORKDIR /home

CMD ["sh"]