CREATE TABLE IF NOT EXISTS campaign_session (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    campaing_id INTEGER NOT NULL,
    session_date DATETIME NOT NULL,
    description VARCHAR(5000)
);
