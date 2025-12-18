#! /bin/bash

# decompress nodejs
if [ -n "$NODE_TAR_XZ" ] && [ -f "$NODE_TAR_XZ" ]; then
  tar -xvf "$NODE_TAR_XZ" -C /opt || true
  rm -f "$NODE_TAR_XZ"
fi
if [ -n "$NODE_DIR" ] && [ -x "$NODE_DIR/bin/node" ] && [ ! -e "/usr/local/bin/node" ]; then
  ln -s "$NODE_DIR/bin/node" /usr/local/bin/node || true
fi

# start main
/main
