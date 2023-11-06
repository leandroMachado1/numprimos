#!/bin/bash

is_prime() {
  num=$1
  if [ $num -le 1 ]; then
    return 1
  fi
  for ((i = 2; i * i <= num; i++)); do
    if [ $((num % i)) -eq 0 ]; then
      return 1
    fi
  done
  return 0
}

for ((n = 0; n <= 100; n++)); do
  if is_prime "$n"; then
    echo "$n"
  fi
done
