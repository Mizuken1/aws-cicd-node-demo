#!/bin/bash
set -e

systemctl restart node-demo
systemctl status node-demo --no-pager