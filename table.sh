#!/bin/bash

first_run_date="2023-11-27"
current_dates=("2023-11-27" "2023-12-04" "2023-12-11" "2023-12-18" "2023-12-25" "2024-01-01" "2024-01-08" "2024-01-15" "2024-03-04" "2024-03-11" $(date +%Y-%m-%d))

echo "| first_run_date | current_date | weekdiff | weekindex |"
echo "| -------------- | ------------ | -------- | --------- |"

for current_date in "${current_dates[@]}"
do
  start=$(date -d $first_run_date +%s)
  end=$(date -d $current_date +%s)

  weekdiff=$(((end-start) / 60 / 60 / 24 / 7))
  weekindex=$((weekdiff % 2))

  echo "| $first_run_date     | $current_date   | $(printf '%8s' $weekdiff) | $(printf '%9s' $weekindex) |"
done