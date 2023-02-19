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

### Explanation:  
● Used date command with format code %F with echo for displaying the full date; same as %Y-%m-%d.  
● Used date command with format code %T with echo for displaying the time; same as %H:%M:%S.  
● Used whoami command with echo for showing the current username.  
● Used ~(tilde) with echo for displaying the home directory.  
● Used pwd command with echo for displaying the current working directory.  

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

### Explanation:  
● Used echo command prompting the user to enter the number, whose table the user wishes to see.  
● Used read command to read user input into a variable n.  
● Used -z switch to test if the expansion of "$n" is a null string or not. If it is a null string then the body is executed.  
● Defined a string re to used as a regular expression to check whether input is valid number or not.  
● re='^[0-9]+$', this regex ensures that the input string starts with a number, a number in between and also ends with a number; disallows any other character.  
● Initialized a variable i with 1.  
● Used a while loop to iterate over i from i=1 through i=10, -le specifies less than or equal to.  
● Used a res variable to store the ith multiple of n.  
● Used expr command to evaluate i*n and store the value in res.  
● Used echo to display the current multiple of n in the format, n * i = res.  
● Incremented the value of i to be used for the next iteration.  
● Loops ends when the while condition evaluates to false; i<=10 in this case.  
● The 'while loop' statement is closed by 'done' keyword.  

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

### Explanation:  
● Used echo command prompting the user to enter the number, which the user wishes to find out if it is prime or not.  
● Used read command to read user input into a variable n.  
● Used -z switch to test if the expansion of "$n" is a null string or not. If it is a null string then the body is executed.  
● Defined a string re to used as a regular expression to check whether input is valid number or not.  
● re='^[0-9]+$', this regex ensures that the input string starts with a number, a number in between and also ends with a number; disallows any other character.  
● Placed a check to display the number isn't prime if the value equals 1.  
● Used a for loop, initializing i as 2, iterating over i from 2 through n/2.  
● Stored remainder of n%i in the variable ans inside the loop.  
● If ans equalled 0, displayed the number isn't prime; exits with status of 0, indicating normal, error-free exit.  
● Used fi keyword to close the if statement.   
● The 'for loop' statement is closed by 'done' keyword.  
● Echoes n is a prime number if the loop executed fully without exiting.  

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

### Explanation:  
● Used mkdir command to create a directory in the Documents directory.  
● Used touch to create a file File.txt in the Assignment directory.  
● Used cat command to redirect the contents of the file Table.sh into File1.txt by giving the absolute file path instead of printing the contents of the file to the standard output.  
● Used >> to append the contents instead of writing.  
● Used echo with >> to append the string "Welcome to Sigmoid" to the file File1.txt.   
● Used ls -al command for displaying all the directories and files present in the Desktop folder; -a, all files and folders, including ones that are hidden and start with a '.'; -l, list all files in long format.  

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

### Explanation:  
● Used echo command prompting the user to enter an array, whose length, maximum and minimum element the user wishes to see.  
● Used read command to read user input as space separated numbers into a variable arr; -a option specifies that the input is assigned to an array.  
● Initialized a variable max with first element of the array.  
● Initialized a variable min with first element of the array.  
● Used a for loop to iterate over the array elements from start to the end; i as the current element of each iteration.  
● Used conditional statement checking if i's value is greater than (hence the option -gt) the value in max variable, and updated max if the expression evaluated to true.  
● Used conditional statement checking if i's value is lesser than (hence the option -lt) the value in min variable, and updated min if the expression evaluated to true.  
● Used fi keyword to close the if statement.   
● The 'for loop' statement is closed by 'done' keyword.  
● Outputting all results, the length, max element, min element of the array.  
● Used echo to display length of the array using ${#arr[@]}; if subscript is @ or *, the word expands to all members of name; by prefixing # to variable we will find length of the array (i.e number of elements).  
● Used echo to display maximum element of the array stored in the max variable.   
● Used echo to display minimum element of the array stored in the min variable.   

### Output:  

<img width="624" alt="Screenshot 2023-02-18 at 10 52 26 PM" src="https://user-images.githubusercontent.com/122514456/219879703-f3c13f33-89bd-4379-84f2-d985432f9bac.png">

