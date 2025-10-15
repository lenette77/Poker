#!/usr/bin/env bash
set -euo pipefail
BASE=${BASE:-http://localhost:8080}
curl -s $BASE/ping
curl -s $BASE/actuator/health
curl -s $BASE/actuator/metrics | head
