#!/bin/bash

# Inicializa as listas de números pares e ímpares
numeros_pares=()
numeros_impares=()

# Lê o arquivo de texto e itera sobre cada número
while IFS= read -r numero; do
    if [ $((numero % 2)) -eq 0 ]; then
        # Se o número for par, adiciona à lista de números pares
        numeros_pares+=("$numero")
    else
        # Se o número for ímpar, adiciona à lista de números ímpares
        numeros_impares+=("$numero")
    fi
done <texto.txt

# Imprime os números pares
echo "Números pares:"
for numero in "${numeros_pares[@]}"; do
    echo "$numero"
done

# Imprime os números ímpares
echo "Números ímpares:"
for numero in "${numeros_impares[@]}"; do
    echo "$numero"
done
