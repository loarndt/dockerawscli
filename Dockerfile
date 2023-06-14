FROM python:3.9-alpine

RUN apk --no-cache add \
    bash \
    curl \
    jq \
    postgresql-client \
    openssh \
    && pip install awscli \
    && mkdir /root/.aws

ENTRYPOINT ["/bin/bash"]

