#!/bin/bash

# Welcome to the 2/4 shell script!
# This script searches the Year Month Location and Broodstock from a csv
# This script also finds the average shell height of the Month

echo 'choose the year you would like to search in: '
read Year  

echo 'choose the month of the year you would like to search in: '
read Month

echo 'choose the broodstock you would like to search in: '
read Broodstock

echo 'choose the Location you would like to search in: '
read Location

csvcut -c collection_year,collection_month,broodstock,collection_date,shell_height_mm,Site All-ORS-Data-All-Time.csv | csvgrep -c collection_year -r "$Year" | csvgrep -c collection_month -r "$Month" | csvgrep -c broodstock -r "$Broodstock" | csvgrep -c Site -r "$Location" | csvsort -c collection_date -r | csvlook

echo -n "would you like the average shell height of that month to(y/n)?: " 
read answer

if [ "$answer" != "${answer#[Yy]}" ] ;then
	csvcut -c collection_year,collection_month,broodstock,shell_height_mm,Site All-ORS-Data-All-Time.csv | csvgrep -c collection_year -r "$Year" | csvgrep -c collection_month -r "$Month" | csvgrep -c broodstock -r "$Broodstock" | csvgrep -c Site -r "$Location" | csvcut -c shell_height_mm | csvstat
else
    echo No
fi

