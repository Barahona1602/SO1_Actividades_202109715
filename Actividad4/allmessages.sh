#!/bin/bash

while true
do
    if read message < person1_to_person2; then
        echo "$message"
    fi
    if read message < person2_to_person1; then
        echo "$message"
    fi
done
