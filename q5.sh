# Question 5
echo "Enter an array: "
# User input for the array
read -a arr

# Initialize max variable with arr[0]
max=${arr[0]}
# Initialize min variable with arr[0]
min=${arr[0]}

# Loop through all elements in the array
for i in "${arr[@]}"
do
    # Update max if applicable
    if [[ "$i" -gt "$max" ]]; then
        max="$i"
    fi

    # Update min if applicable
    if [[ "$i" -lt "$min" ]]; then
        min="$i"
    fi
done

# Output results:
echo "Length of the array is: ${#arr[@]}"
echo "Maximum element is: $max"
echo "Minimum element is: $min"