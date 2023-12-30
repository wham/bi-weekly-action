#!/bin/bash

first_run_date="2023-11-27"
current_date="2023-12-25"

weekdiff=$((($(date -d $current_date +%s) - $(date -d $first_run_date +%s)) / 60 / 60 / 24 / 7))
weekindex=$((weekdiff % 2))

echo $weekdiff # -> 4
echo $weekindex # -> 0