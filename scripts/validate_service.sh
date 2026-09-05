#!/bin/bash
set -e

sleep 3
curl -fsS http://localhost:3000/health | grep -q "ok"