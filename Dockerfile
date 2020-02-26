FROM python:3.8

ARG OPENSTACKCLIENT_VERSION=

RUN set -x && \
    pip install python-openstackclient==${OPENSTACKCLIENT_VERSION}

ENTRYPOINT ["openstack"]
