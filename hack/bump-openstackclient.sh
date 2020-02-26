#!/usr/bin/env bash

set -e -o pipefail; [[ -n "$DEBUG" ]] && set -x

SCRIPT_ROOT="$(cd "$(dirname $0)"; pwd)"

version="$1"
if [[ -z "$version" ]]; then
  echo "Usage: $0 <version>" >&2
  exit 1
fi

sed -i -e "s/OPENSTACKCLIENT_VERSION := [0-9\.]\+/OPENSTACKCLIENT_VERSION := $version/" "${SCRIPT_ROOT}/../Makefile"
sed -i -e "s/OPENSTACKCLIENT_VERSION=\"[0-9\.]\+\"/OPENSTACKCLIENT_VERSION=\"$version\"/" "${SCRIPT_ROOT}/../openstack"
# vim: ai ts=2 sw=2 et sts=2 ft=sh
