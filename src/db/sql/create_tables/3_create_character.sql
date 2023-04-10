CREATE TABLE IF NOT EXISTS player_character (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(64) NOT NULL,
    description VARCHAR(5000) NOT NULL,
    FOREIGN KEY (player_id) REFERENCES player (id),
);
