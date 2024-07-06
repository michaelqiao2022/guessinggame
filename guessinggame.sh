#!/bin/bash

# Function to count the number of files in the current directory
function file_count {
    ls -1 | wc -l
}

# Get the correct number of files
correct_count=$(file_count)

# Function to prompt the user for a guess
function prompt_guess {
    echo "How many files are in the current directory?"
    read guess
}

# Start the guessing game
echo "Welcome to the guessing game!"

# Loop until the correct guess is made
while true; do
    prompt_guess
    if [[ $guess -lt $correct_count ]]; then
        echo "Your guess is too low. Try again."
    elif [[ $guess -gt $correct_count ]]; then
        echo "Your guess is too high. Try again."
    else
        echo "Congratulations! You guessed the correct number of files."
        break
    fi
done

echo "Thank you for playing the guessing game!"
