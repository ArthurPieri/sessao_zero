CREATE TABLE player_character (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(64) NOT NULL,
    description VARCHAR(5000) NOT NULL
);

CREATE TABLE guild (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(64) NOT NULL
);


CREATE TABLE player (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    username VARCHAR(64) NOT NULL,
    password VARCHAR(64) NOT NULL,
    admin BOOLEAN,
    FOREIGN KEY (char_id) REFERENCES player_character (id),
    FOREIGN KEY (guild_id) REFERENCES guild (id)
);


CREATE TABLE campaign (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(64) NOT NULL,
    description VARCHAR(5000) NOT NULL,
    players_limit INTEGER,
    FOREIGN KEY (game_master) REFERENCES player (id),
    FOREIGN KEY (player_id) REFERENCES player (id)
);

CREATE TABLE campaign_session (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    session_date DATETIME NOT NULL,
    description VARCHAR(5000),
    FOREIGN KEY (campaing_id) REFERENCES campaign (id)
);

CREATE TABLE note (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title VARCHAR(64) NOT NULL,
    description VARCHAR(5000) NOT NULL,
    FOREIGN KEY (sesion_id) REFERENCES campaign_session (id)
);
