Writeup
========================================================


Processed the original data file with the following commands:

grep "^[12]/[2]/2007" household_power_consumption.txt > pared_down_data

sed 's/;/,/g' pared_down_data > pared_down_data.csv

