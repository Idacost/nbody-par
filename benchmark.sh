#!/bin/bash

# Define output file
output="benchmark_results.txt"
echo "Benchmark Results" > $output
echo "=================" >> $output

# Define thread counts to test
threads=(1 2 4 8)

# Test cases
cases=(
  "planet 200 5000000 500000"
  "100 1 10000 1000"
  "1000 1 10000 1000"
)

names=(
  "Solar System (dt=200, steps=5000000)"
  "100 Particles (dt=1, steps=10000)"
  "1000 Particles (dt=1, steps=10000)"
)

for i in "${!cases[@]}"; do
  echo -e "\nTest Case: ${names[i]}" >> $output
  for t in "${threads[@]}"; do
    export OMP_NUM_THREADS=$t
    echo -n "Threads: $t - " >> $output
    { /usr/bin/time -f "%e seconds" ./nbody ${cases[i]} > /dev/null; } 2>> $output
  done
done

echo -e "\nDone. Results saved to $output."

