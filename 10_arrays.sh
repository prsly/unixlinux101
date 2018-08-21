#!/bin/bash

example=(aa 'bb cc' dd)
example[3]=ee

echo "example[@] = ${example[@]}"
echo "Массив example содержит ${#example[@]} элементов"

for elt in "${example[@]}"; do
    echo " Элемент = $elt"
done