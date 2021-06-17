#!/bin/bash

#Ask for input number
echo "Berapa banyak angka yang akan ditulis? Masukkan angka (1-10): "
read max_number

echo ""

# Ask for company name
echo "Masukkan nama perusahaan:"
read company_name

echo ""

# Check wheter number is between 1 and 10. If not prompt for error input
if [ $max_number -lt 1 ] || [ $max_number -gt 10 ]
then
        echo "Salah input"
else
        # Loop number as much as input number
        for ((number=1; number <= max_number; number++))
        do
                echo $number
        done
fi

# Check company name string, wheter it match or not
if [ "$company_name" = "Compnet" ]
then
        echo "Nama perusahaan kita"
else
        echo "Bukan nama perusahaan kita"
fi
