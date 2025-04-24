#!/bin/bash

# Function to count the number of files in the current directory
function count_files {
  echo $(ls -1 | wc -l)
}

# Welcome message
echo "Welcome to the Guessing Game!"
echo "Try to guess how many files are in the current directory."

# Get the correct number of files
correct_count=$(count_files)

# Loop until the user guesses correctly
while true; do
  # Prompt the user for a guess
  read -p "Enter your guess: " user_guess

  # Check if the guess is a number
  if ! [[ "$user_guess" =~ ^[0-9]+$ ]]; then
    echo "Please enter a valid number."
    continue
  fi

  # Compare the guess with the correct count
  if [[ $user_guess -lt $correct_count ]]; then
    echo "Too low! Try again."
  elif [[ $user_guess -gt $correct_count ]]; then
    echo "Too high! Try again."
  else
    echo "Congratulations! You guessed the correct number of files."
    break
  fi
done