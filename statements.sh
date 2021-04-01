read first
read second

if [ $first -gt $second ]
then
    echo "X is greater than Y"
elif [ $first -eq $second ]
then
    echo "X is equal to Y"
elif [ $first -lt $second ]
then
    echo "X is less than Y"
fi
