CREATE TABLE students (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    email TEXT NOT NULL,
    dob TEXT,
    department TEXT,
    phone TEXT
);

CREATE TABLE student_logs (
    log_id INTEGER PRIMARY KEY AUTOINCREMENT,
    student_id INTEGER,
    action_type TEXT,
    action_time DATETIME DEFAULT CURRENT_TIMESTAMP,
    name TEXT,
    email TEXT,
    department TEXT
);