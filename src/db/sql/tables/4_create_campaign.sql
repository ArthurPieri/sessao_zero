CREATE TABLE IF NOT EXISTS campaign (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(64) NOT NULL,
    description VARCHAR(5000) NOT NULL,
    players_limit INTEGER,
    FOREIGN KEY (game_master) REFERENCES player (id),
    FOREIGN KEY (player_id) REFERENCES player (id)
);
