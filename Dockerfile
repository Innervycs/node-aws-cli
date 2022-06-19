FROM node:14

ENV LANG C.UTF-8

RUN apt-get update && apt-get install -y \
        python3 python3-pip \
        python3-setuptools groff less \
    && pip3 install --upgrade pip \
    && apt-get clean

RUN pip3 --no-cache-dir install --upgrade --user awsebcli awscli

ENV PATH "${PATH}:/root/.local/bin"

CMD ["node"]
