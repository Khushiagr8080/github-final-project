
#!/bin/bash

# Simple Interest Calculator

echo "Simple Interest Calculator"

read -p "Enter the principal amount: " p
read -p "Enter the annual interest rate: " r
read -p "Enter the time period in years: " t

if ! command -v bc >/dev/null 2>&1; then
    echo "Error: bc is required to calculate interest."
    exit 1
fi

si=$(echo "scale=2; $p * $t * $r / 100" | bc)

echo "Simple Interest: $si"
