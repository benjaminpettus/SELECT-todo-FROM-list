-- if user exist drop it
DROP USER IF EXISTS Michael;
-- create user 
CREATE USER Michael;
-- drop todo_app database if it exists
DROP DATABASE IF EXISTS todo_app;
-- create todo_app database
CREATE DATABASE todo_app;
-- \c to todo_app
\c todo_app;
-- create table name tasks with defined columns
CREATE TABLE tasks (
  ID INT PRIMARY KEY  NOT NULL,
  title char(255) NOT NULL,
  description TEXT NULL,
  created_at TIMESTAMP DEFAULT NOW(),
  updated_at TIMESTAMP without time zone NULL,
  completed BOOLEAN NOT NUll
);

ALTER TABLE tasks 
DROP COLUMN completed;

ALTER TABLE tasks 
ADD COLUMN completed_at TIMESTAMP;

ALTER TABLE tasks 
ALTER COLUMN updated_at SET DEFAULT now();

INSERT INTO tasks (ID, title, description)
VALUES (1,'Study SQL', 'Complete this exercise' );

INSERT INTO tasks (ID, title, description)
VALUES (2, 'Study PostgreSQL', 'Read all the documentation');

SELECT *
FROM tasks
WHERE completed_at = NULL;

UPDATE tasks 
SET completed_at = NOW()
WHERE id = 1;

SELECT *
FROM tasks
WHERE completed_at = NULL;

SELECT *
FROM tasks
ORDER BY created_at DESC;

INSERT INTO tasks (ID, title, description)
VALUES (3, 'mistake 1', 'a test entry');

INSERT INTO tasks (ID, title, description)
VALUES (4, 'mistake 2', 'another test entry');

INSERT INTO tasks (ID, title, description)
VALUES (5, 'third mistake', 'another test entry');

SELECT title
FROM tasks
WHERE title similar to '%mistake%';

DELETE 
FROM tasks
WHERE title = 'mistake 1'; 

SELECT title, description
From tasks
WHERE title similar to '%mistake%';

DELETE 
FROM tasks
WHERE title similar to '%mistake%';

SELECT *
FROM tasks
ORDER BY title ASC;

SELECT *
From tasks;






