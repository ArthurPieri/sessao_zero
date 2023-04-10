CREATE TABLE note (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title VARCHAR(64) NOT NULL,
    description VARCHAR(5000) NOT NULL,
    FOREIGN KEY (sesion_id) REFERENCES campaign_session (id)
);
