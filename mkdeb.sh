#!/bin/bash -e

VERSION="0.12.10"
TIMESTAMP=$(python -c "import time; print time.strftime('%Y%m%d%H%M%S', time.gmtime(time.time()))")

fpm --verbose --debug --prefix /usr -C pkg-out -s dir -t deb -n "node" -v "$VERSION-$TIMESTAMP" bin include lib share
