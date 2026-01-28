
mkdir number_guesssing_game
cd number_guesssing_game
git init
git checkout -b main

touch number_guess.sh
git add number_guess.sh
git commit -m "Initial commit"

chmod +x number_guess.sh
git add .
git commit -m "feat: create function to input name and input number guess"
git add .
git commit -m "feat: create function to check the guess number"
git add .
git commit -m "feat: create function to save new user"
git add .
git commit -m "feat: create function to save the game"
