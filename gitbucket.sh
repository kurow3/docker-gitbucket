#!/bin/bash
set -euo pipefail

exec java "${GITBUCKET_JAVA_OPTS}" -jar /opt/gitbucket.war

