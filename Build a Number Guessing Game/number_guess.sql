psql --username=freecodecamp --dbname=postgres
CREATE DATABASE number_guess;
\c number_guess

CREATE TABLE users(
	user_id SERIAL NOT NULL, 
	username VARCHAR(22) UNIQUE NOT NULL,
	frequent_games INTEGER DEFAULT 0 NOT NULL
);
CREATE TABLE games(
 	game_id    SERIAL NOT NULL, 
 	user_id    INTEGER NOT NULL, 
 	best_guess INTEGER DEFAULT 0 NOT NULL
);
ALTER TABLE users ADD PRIMARY KEY (user_id)
ALTER TABLE games ADD PRIMARY KEY (game_id)
ALTER TABLE games ADD FOREIGN KEY (user_id) REFERENCES users (user_id)
