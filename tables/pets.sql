CREATE TABLE pets (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    photo_urls TEXT,  -- Stored as JSON array string
    status TEXT CHECK (status IN ('available', 'pending', 'sold'))
);
