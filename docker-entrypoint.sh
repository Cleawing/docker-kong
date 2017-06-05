#!/usr/local/bin/dumb-init /bin/bash
set -e

# Read secrets from filesystem and export them as environmnet variables
exec "/setup-secrets.sh"

# Register kong-admin and kong-dashboard api endpoints
# and assicotiate consumer and credentials for admin access
# exec "/setup-admin.sh"

# Disabling nginx daemon mode
export KONG_NGINX_DAEMON="off"

exec "$@"
