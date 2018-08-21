#!/bin/bash

function show_usage {
    echo "Использование: $0 key"
    echo "backup -- резервное копирование"
    echo "rescue -- восстановление"
    exit 1
}

if [ $# -ne 1 ]; then
    show_usage
elif [ $1 == "backup" ]; then
    suffix=BACKUP--$(date '+%Y%m%d-%H%M')
    mkdir ~/$suffix
    touch ~/backup.baksystem 
    echo "$suffix" >> ~/backup.baksystem
    echo "Backup system to ~/$suffix"
   # cp -r / ~/$suffix
#elif [$1 == "rescue"]; then
    #добавить восстановление
else
    show_usage
fi
