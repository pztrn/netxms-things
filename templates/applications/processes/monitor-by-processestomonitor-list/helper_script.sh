#!/usr/bin/env bash

PROCESSES=("process1", "process2", "a.*process.*with.*regexp")

for process in ${PROCESSES[@]}; do
        echo -e "${process}"
done
