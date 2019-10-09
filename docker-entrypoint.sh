#!/usr/bin/env bash
export YOURAPP_PORT=":${PORT}"
# Execute the rest of your ENTRYPOINT and CMD as expected.
exec "$@"