book="black hat bash"
echo "This book's name is ${book}"
echo "This book's name is $book"
root_directory=$(ls -ld /)
echo "${root_directory}"

book="Black Hat Bash" 
unset book 
echo "${book}"

#1. What is the difference between global and local variables in Bash?

# Global variables are defined outside functions and can be used anywhere in the script.

# Local variables are created inside a function and are only available within that function.

#2. What are the main characteristics of global and local variables in Bash?

# Global variables keep their values throughout the script execution unless they are modified.

# Local variables are limited to the function scope and are removed when the function finishes.

#3. How does calling functions affect the scope of variables in Bash scripts?

# Functions have access to variables defined in the global scope.

# Variables declared with the `local` keyword remain private to the function and do not interfere with variables outside of it.