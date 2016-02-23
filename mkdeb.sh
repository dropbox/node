#!/bin/bash -e

TIMESTAMP=$(python -c "import time; print time.strftime('%Y%m%d%H%M%S', time.gmtime(time.time()))")

fpm --verbose --debug --prefix /usr -C pkg-out -s dir -t deb -n "node" -v "v0.12.9-$TIMESTAMP" bin include lib share
