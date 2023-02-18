# Command_Line_Assignment
Repository containing bash script files for the command line assignment

### Question 1. Write a bash script to get the current date, time, username, home directory and current working directory.
### Solution:

echo Answer 1:  
*Display Current date*  
echo Current date: `date +%F`  
*Display Current time*  
echo Current time: `date +%T` 
*Display Username*  
echo Username: `whoami` 
*Display Home directory*  
echo Home directory: ~ 
*Display Current working directory*  
echo Current working directory: `pwd`  

### Output:

<img width="623" alt="Screenshot 2023-02-18 at 10 24 39 PM" src="https://user-images.githubusercontent.com/122514456/219878187-a41d239c-48ff-491f-8a3b-b9293d635f53.png">


### Question 2. Write a bash script (name Table.sh) to print the Table of a number by using a while loop. It should support the following requirements.
● The script should accept the input from the command line.  
● If you don’t input any data, then display an error message to execute the script correctly.  
### Solution:

*Taking input from the user*  
echo "Enter the number: "  
read n  

*Checks and prints message "No input entered" if the user provides no input*  
if [[ -z "$n" ]]; then  
   echo "No input entered"  
   exit 1  
fi  

re='^[0-9]+$'  
if ! [[ $n =~ $re ]] ; then  
	echo "Not a number, invalid input";  
	exit 1  
fi  

*initializing i with 1*  
i=1  
  
*Looping i, i should be less than*  
*or equal to 10, i.e., -le stands for less than or equal to*  
while [ $i -le 10 ]  
do  
	res=`expr $i \* $n`  

	*printing on console*  
	echo "$n * $i = $res"  
 
	*incrementing i by one*    
	*i = `expr $i + 1`*  
	((++i))  
  
*end of while loop*    
done  

### Output:

<img width="644" alt="Screenshot 2023-02-18 at 10 49 59 PM" src="https://user-images.githubusercontent.com/122514456/219879594-ae331bc5-8b7f-4da3-a2b2-640cfabb9562.png">


### Question 3. Write a Function in bash script to check if the number is prime or not? It should support the following requirement.  
● The script should accept the input from the User.  
### Solution:  

echo "Enter the number: "  
*User input for number*   
read n  

*Checks and prints message "No input entered" if the user provides no input*   
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

*Looping i, from 2 through n/2*  
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

### Output:

<img width="642" alt="Screenshot 2023-02-18 at 10 50 54 PM" src="https://user-images.githubusercontent.com/122514456/219879626-8880c770-4586-458f-a068-26535e0feafe.png">


### Question 4. Create a bash script that supports the following requirement.  
● Create a folder ‘Assignment’.  
● Create a file ‘File1.txt’ inside ‘Assignment’ Folder.  
● Copy all the content of Table.sh(2nd script) in ‘File1.txt’ without using ‘cp’ and ‘mv’
command.  
● Append the text 'Welcome to Sigmoid' to the ‘File1.txt’ file.  
● List all the directories and files present inside Desktop Folder.  
### Solution:  

*making an empty directory, Assignment, in Home directory*  
mkdir ~/Documents/Assignment  
*making a file, File1.txt, in Assignment directory*  
touch ~/Documents/Assignment/File1.txt  
*moving the contents of the source file Table.sh, to the destination file File1.txt*   
cat Table.sh >> ~/Documents/Assignment/File1.txt  
*Appending the text "Welcome to Sigmoid" in File1.txt*  
echo "Welcome to Sigmoid" >> ~/Documents/Assignment/File1.txt  
*Displaying all the directories and files present in the Desktop folder*  
ls -al /Users/ratinderpalsingh/Desktop  

### Output:

<img width="624" alt="Screenshot 2023-02-18 at 10 51 52 PM" src="https://user-images.githubusercontent.com/122514456/219879668-7868fd4e-235e-4bcf-aea4-ed212edc6a14.png">  

<img width="538" alt="Screenshot 2023-02-18 at 11 22 34 PM" src="https://user-images.githubusercontent.com/122514456/219880913-5274bfc0-f488-4c4b-aae4-eee437a7481e.png">


### Question 5. You have given an array. Using Bash script, print its length, maximum element and minimum element.  
arr=( 2 3 4 1 6 7).  
### Solution:  

echo "Enter an array: "  
*User input for the array*   
read -a arr  

*Initialize max variable with arr[0]*  
max=${arr[0]}  
*Initialize min variable with arr[0]*  
min=${arr[0]}  

*Loop through all elements in the array*  
for i in "${arr[@]}"  
do  
    *Update max if applicable*  
    if [[ "$i" -gt "$max" ]]; then  
        max="$i"  
    fi  

    *Update min if applicable*  
    if [[ "$i" -lt "$min" ]]; then  
        min="$i"  
    fi  
done  
*Output results:*   
echo "Length of the array is: ${#arr[@]}"  
echo "Maximum element is: $max"   
echo "Minimum element is: $min"  

### Output:  

<img width="624" alt="Screenshot 2023-02-18 at 10 52 26 PM" src="https://user-images.githubusercontent.com/122514456/219879703-f3c13f33-89bd-4379-84f2-d985432f9bac.png">

