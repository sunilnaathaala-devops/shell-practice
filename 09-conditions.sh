#!/bin/bash

NUMBER=25

# -gt -> greater than
# -lt -> less than
# -eq -> equal to
# -ne -> not equal
if [$NUMBER -gt 20] then
echo "$NUMBER is greater than 20"
elif [$NUMBER -eq 20]; then
echo "$NUMBER is equal to 20"
elif [$NUMBER -lt 20]; then
echo "$NUMBER is less than 20"
elif [$NUMBER -ne 20]; then
echo "$NUMBER is not equal to 20"
fi