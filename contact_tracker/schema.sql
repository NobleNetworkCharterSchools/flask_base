DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS contacts;

CREATE TABLE user (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	username TEXT UNIQUE NOT NULL,
	password TEXT NOT NULL
);

CREATE TABLE contacts (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	owner_id INTEGER NOT NULL,
	start_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	uses_remaining INTEGER NOT NULL,
	end_date TIMESTAMP,
	FOREIGN KEY (owner_id) REFERENCES user (id)
);
