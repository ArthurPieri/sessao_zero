CREATE TABLE campaign_session (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    session_date DATETIME NOT NULL,
    description VARCHAR(5000),
    FOREIGN KEY (campaing_id) REFERENCES campaign (id)
);
