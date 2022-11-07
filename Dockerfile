FROM perl:5.32.0

LABEL maintainer "Steve Bertrand <steveb@cpan.org>"

ENV DEBUG=0

RUN cpanm --notest File::Find::Rule

RUN mkdir -p /data
RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

# Copy all files from the repo into the container

COPY . .

RUN chmod +x /usr/src/app/jsonc_syntax_check

ENTRYPOINT [ "/usr/src/app/jsonc_syntax_check" ]