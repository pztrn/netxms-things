#!/usr/bin/env bash

YGGDRASIL=$(which yggdrasilctl)
if [ "${YGGDRASIL}" == "" ]; then
        exit 1
fi

incoming=0
outgoing=0

KNOWN=$(${YGGDRASIL} getpeers | tail -n +2)

export IFS=$'\n'
for line in ${KNOWN[@]}; do
        if [ "$1" == "incoming" ]; then
                incoming=$[ ${incoming}+$(echo ${line} | awk {' print $2 '}) ]
        fi

        if [ "$1" == "outgoing" ]; then
                outgoing=$[ ${outgoing}+$(echo ${line} | awk {' print $3 '}) ]
        fi
done

case $1 in
        incoming)
                echo $incoming
        ;;
        outgoing)
                echo $outgoing
        ;;
        *)
                echo "First parameter should be 'incoming' or 'outgoing'!"
        ;;
esac
