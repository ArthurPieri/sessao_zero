CREATE TABLE IF NOT EXISTS player (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    username VARCHAR(64) NOT NULL,
    password VARCHAR(64) NOT NULL,
    admin BOOLEAN,
    FOREIGN KEY (guild_id) REFERENCES guild (id),
    FOREIGN KEY (campaign_id) REFERENCES campaign (id)
);
