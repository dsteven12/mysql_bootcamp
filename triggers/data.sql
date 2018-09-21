INSERT INTO users (username, age) VALUES
("amy", 19);

-- SHOULD GIVE ERROR 1644 (45000): MUST BE AN ADULT OVER 18! --
INSERT INTO users (username, age) VALUES 
("pietro", 12),
("peter", 14);

