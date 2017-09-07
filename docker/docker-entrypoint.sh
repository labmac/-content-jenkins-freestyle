#!/usr/bin/env bash
set -e

if [[ "$1" == "--test" ]] ; then # test mode
 echo "Starting test mode"
fi

if [ -f /docker.init.marker ]; then
    echo "Initializing container"
    /docker-initializer.sh && rm -f /docker.init.marker
    echo "Init done."
fi

echo "Startig container"
