#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

DELETE_RESULT=$($PSQL "DELETE FROM current_game;")


TO_GUESS=$((1+ $RANDOM %1000))
readonly CURRENT_NUMBER=$TO_GUESS
echo $CURRENT_NUMBER
let "guesses=0"
#NUMBER_INSERT_RESULT=$($PSQL "INSERT INTO current_game(secret_number) VALUES('$TO_GUESS');")
#CURRENT_NUMBER=$($PSQL "SELECT secret_number FROM current_game;")

echo "Enter your username:"; read USERNAME

USERNAME_EXISTS=$($PSQL "SELECT username FROM player WHERE username='$USERNAME';")

if [[ $USERNAME_EXISTS ]]
  then
    PLAYED=$($PSQL "SELECT games_played FROM player WHERE username='$USERNAME';")
    BEST=$($PSQL "SELECT best_game FROM player WHERE username='$USERNAME';")
    echo "Welcome back, $USERNAME! You have played $PLAYED games, and your best game took $BEST guesses."
  else
    INSERT_RESULT=$($PSQL "INSERT INTO player(username) VALUES('$USERNAME');")
    echo "Welcome, $USERNAME! It looks like this is your first time here."
fi

echo "Guess the secret number between 1 and 1000:"

GUESSED=false

while [[ "$GUESSED"==false ]]
do
  read GUESS
  if ! [[ $GUESS =~ ^[0-9]+$ ]]
    then
    echo That is not an integer, guess again:
  elif (( $CURRENT_NUMBER < $GUESS  ))
    then
    echo "It's lower than that, guess again:"
    let "guesses++"
    #INCREMENT_CURRENT=$($PSQL "UPDATE current_game SET number_of_guesses = number_of_guesses + 1;")
  elif (( $CURRENT_NUMBER > $GUESS ))
    then
    echo "It's higher than that, guess again:"
    let "guesses++"
    #INCREMENT_CURRENT=$($PSQL "UPDATE current_game SET number_of_guesses = number_of_guesses + 1;")
  else
    INCREMENT_CURRENT=$($PSQL "UPDATE current_game SET number_of_guesses = number_of_guesses + 1;")
    let "guesses++"
    #GUESSES=$($PSQL "SELECT number_of_guesses FROM current_game;")
    echo You guessed it in $guesses tries. The secret number was $CURRENT_NUMBER. Nice job!
    break
  fi
done

##GUESSES=$($PSQL "SELECT number_of_guesses FROM current_game;")
BEST=$($PSQL "SELECT best_game FROM player WHERE username='$USERNAME';")
if (( $guesses < $BEST ))
    then
      UPDATE_BEST=$($PSQL "UPDATE player SET best_game = '$guesses' WHERE username='$USERNAME';")
fi

SET_PLAYED=$($PSQL "UPDATE player SET games_played = games_played+1 WHERE username='$USERNAME';")


DELETE_RESULT=$($PSQL "DELETE FROM current_game;")
