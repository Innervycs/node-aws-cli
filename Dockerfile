FROM node:20.18.0

ENV LANG C.UTF-8

RUN apt-get update && apt-get install -y \
        python3 python3-pip \
        zip -y \
        python3-setuptools groff less \
    && pip3 install --upgrade pip \
    && apt-get clean

RUN pip3 --no-cache-dir install --upgrade --user awsebcli awscli

ENV PATH "${PATH}:/root/.local/bin"

CMD ["node"]
