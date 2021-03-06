#!/bin/bash

function show_usage{
    echo "Использование: $0 source_dir dest_dir"
    if [ $# -eq 0 ]; then
        exit 99
    else
        exit $1
    fi
}
#Основная программа начинается здесь
if [ $# -ne 2 ]; then
    show_usage
else
    if [ -d $1 ]; then
        source_dir=$1
    else
        echo "Недопустимый каталог-источник"
        show_usage
    fi
    if [ -d $2 ]; then
        dest_dir=$2
    else
        echo "Недопустимый каталог-приемник"
        show_usage
    fi
fi

printf "Каталог-источник: ${source_dir}\n"
printf "Каталог-приемник: ${dest_dir}\n"