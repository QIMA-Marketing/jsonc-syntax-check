FROM perl:5.32.0

LABEL maintainer "Steve Bertrand <steveb@cpan.org>"

ENV DEBUG=0

RUN mkdir -p /data
WORKDIR /usr/src/app

COPY . .

ENTRYPOINT [ "/usr/src/app/jsonc_syntax_check" ]