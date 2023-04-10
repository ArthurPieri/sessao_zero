CREATE TABLE IF NOT EXISTS note (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    session_id INTEGER,
    title VARCHAR(64) NOT NULL,
    description VARCHAR(5000) NOT NULL,
    FOREIGN KEY (sesion_id) REFERENCES campaign_session (id)
);
