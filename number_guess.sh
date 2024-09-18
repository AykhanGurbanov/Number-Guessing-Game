#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
NUMBER=$(( RANDOM % 1000 + 1 ))

echo Enter your username:
read USERNAME
GAMES_PLY=$($PSQL "SELECT COUNT(*) FROM games INNER JOIN usernames USING(name_id) WHERE name='$USERNAME'")
BEST_GAME=$($PSQL "SELECT MIN(number_of_guess) FROM games INNER JOIN usernames USING(name_id) WHERE name='$USERNAME'")
CHECKNAME=$($PSQL "SELECT name FROM usernames WHERE name='$USERNAME'")
if [[ -n $CHECKNAME ]]
  then
    echo "Welcome back, $USERNAME! You have played $GAMES_PLY games, and your best game took $BEST_GAME guesses."
  else
  ADDNAME=$($PSQL "INSERT INTO usernames(name) VALUES('$USERNAME')")
  echo -e "Welcome, $USERNAME! It looks like this is your first time here."
fi

NUMBER_OF_GUESS=1
echo "Guess the secret number between 1 and 1000:"
read INPUT
while [[ $INPUT -ne $NUMBER ]]
do
  if [[ ! $INPUT =~ ^[0-9]+$ ]]
    then
    echo "That is not an integer, guess again:"
    else
    if [[ $NUMBER -eq $INPUT ]]
      then
      break;
      else
        if [[ ! $NUMBER -gt $INPUT ]]
        then 
          echo "It's lower than that, guess again:" 
        elif [[ ! $NUMBER -lt $INPUT ]]
        then
          echo "It's higher than that, guess again:"
        fi  
    fi
  fi
  read INPUT
  (( NUMBER_OF_GUESS++ ))  
done

if [[ $NUMBER -eq $INPUT ]]
  then
    echo "You guessed it in $NUMBER_OF_GUESS tries. The secret number was $NUMBER. Nice job!"
  else
    echo "You guessed it in $NUMBER_OF_GUESS tries. The secret number was $NUMBER. Nice job!"
fi 

NAME_ID=$($PSQL "SELECT name_id FROM usernames WHERE name='$USERNAME'")
TEMA=$($PSQL "INSERT INTO games(name_id,number_of_guess) VALUES($NAME_ID,$NUMBER_OF_GUESS)")
