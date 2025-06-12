#!/bin/bash

# This script displays the top N CPU-consuming processes.
# Usage: ./top_cpu_processes.sh [number_of_processes]
# Default is 10 if not specified.

# Exit on any error
set -e

# Set default number of processes to display
NUM_PROCESSES=${1:-10}

# Ensure NUM_PROCESSES is a positive integer
if ! [[ "$NUM_PROCESSES" =~ ^[0-9]+$ ]] || [ "$NUM_PROCESSES" -le 0 ]; then
    echo "Error: Please provide a valid positive integer for number of processes."
    exit 1
fi

echo "Top $NUM_PROCESSES CPU-consuming processes:"
echo "PID   PPID  %CPU  %MEM  CMD"
ps -eo pid,ppid,%cpu,%mem,cmd --sort=-%cpu | head -n $((NUM_PROCESSES + 1))
