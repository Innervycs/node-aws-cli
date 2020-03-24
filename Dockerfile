FROM node:current

ENV LANG C.UTF-8

RUN apt-get update && apt-get install -y \
    python3-setuptools \
    python3-dev \
    zip \
    jq
RUN easy_install3 pip
RUN pip install --upgrade awsebcli awscli

CMD ["node"]
