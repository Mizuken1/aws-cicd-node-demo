#!/bin/bash
set -e

systemctl stop node-demo || true

mkdir -p /opt/node-demo
rm -rf /opt/node-demo/*