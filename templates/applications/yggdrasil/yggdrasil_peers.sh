#!/usr/bin/env bash

YGGDRASIL=$(which yggdrasilctl)

if [ "${YGGDRASIL}" == "" ]; then
        exit 1
fi

echo $[ $(${YGGDRASIL} getpeers | wc -l) - 1 ]
