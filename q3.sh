# Question 3
echo "Enter the number: "
# User input for number
read n

# Checks and prints message "No input entered" if the user provides no input 
if [[ -z "$n" ]]; then
   echo "No input entered"
   exit 1
fi

re='^[0-9]+$'
if ! [[ $n =~ $re ]] ; then
	echo "Not a number, invalid input";
	exit 1
fi

if [ $n -eq 1 ]; then
	echo "$n is not prime"
	exit 0
fi

# Looping i, from 2 through n/2
for((i=2; i<=$n/2; i++))
do
  ans=$(( n%i ))
  if [ $ans -eq 0 ]
  then
    echo "$n is not a prime number."
    exit 0
  fi
done
echo "$n is a prime number."