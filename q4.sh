# Question 4
# making an empty directory, Assignment, in Home directory
mkdir ~/Documents/Assignment
# making a file, File1.txt, in Assignment directory
touch ~/Documents/Assignment/File1.txt
# moving the contents of the source file Table.sh, to the destination file File1.txt 
cat Table.sh >> ~/Documents/Assignment/File1.txt
# Appending the text "Welcome to Sigmoid" in File1.txt
echo "Welcome to Sigmoid" >> ~/Documents/Assignment/File1.txt
# Displaying all the directories and files present in the Desktop folder
ls -al /Users/ratinderpalsingh/Desktop