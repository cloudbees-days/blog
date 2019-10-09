#!/usr/bin/env sh
export PORT=":${PORT}"
# Execute the rest of your ENTRYPOINT and CMD as expected.
exec "$@"