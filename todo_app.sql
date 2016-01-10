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

