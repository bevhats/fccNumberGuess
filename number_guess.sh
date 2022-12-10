#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess --tuples-only -c"

GUESS_NUMBER() {  
  read GUESS
  NUMBER_OF_GUESSES=$(($NUMBER_OF_GUESSES+1))

  if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
    GUESS_NUMBER
  else
    if (( $GUESS == $SECRET_NUMBER ))
    then
      echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"
      EXIT
    elif (( $GUESS > $SECRET_NUMBER ))
    then
      echo "It's higher than that, guess again:"    
      GUESS_NUMBER
    else
      echo "It's lower than that, guess again:"
      GUESS_NUMBER
    fi
  fi
}


START_GUESSING() {
  # generate secret number
  SECRET_NUMBER=$(( $RANDOM % 1000 ))

  NUMBER_OF_GUESSES=0

  echo "Guess the secret number between 1 and 1000:$SECRET_NUMBER"
  GUESS_NUMBER
}


MAIN_MENU () {
  # ask for username
  echo "Enter your username:"
  read USER_NAME

  # get user id from db
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE name = '$USER_NAME'")

  # if not found 
  if [[ -z $USER_ID ]] 
  then
    # add user name in database
    RESULT_OF_INSERT_USER=$($PSQL "INSERT INTO users (name) VALUES ('$USER_NAME')")

    USER_ID=$($PSQL "SELECT user_id FROM users WHERE name = '$USER_NAME'")
    
    # print welcome
    echo -e "\nWelcome, $USER_NAME! It looks like this is your first time here."
  else
    # get data form user (games_played, best_game)
    GAMES_DATA=$($PSQL "SELECT COUNT(*) AS total_games, MIN(number_of_guesses) AS best_game FROM games WHERE user_id = $USER_ID")
    echo -e "$GAMES_DATA" | while read TOTAL_GAMES BAR BEST_GAME
    do
      echo "Welcome back, $USER_NAME! You have played $TOTAL_GAMES games, and your best game took $BEST_GAME guesses."
    done    
  fi
  
  START_GUESSING
}

EXIT() {
  RESULT_OF_INSERT_GAME=$($PSQL "INSERT INTO games (start_date, number_of_guesses, secret_number, user_id) VALUES (NOW(), $NUMBER_OF_GUESSES, $SECRET_NUMBER, $USER_ID)")
}

MAIN_MENU
