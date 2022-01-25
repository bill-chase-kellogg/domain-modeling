-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;

-- CREATE TABLES
DROP TABLE IF EXISTS salespersons;
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS companies;
DROP TABLE IF EXISTS activity;


CREATE TABLE salespersons (
  salesperson_id INTEGER PRIMARY KEY AUTOINCREMENT,
  title TEXT,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  phone_number TEXT
);

CREATE TABLE contacts (
  contact_id INTEGER PRIMARY KEY AUTOINCREMENT,
  company_id INTEGER,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  phone_number TEXT
);

CREATE TABLE companies (
  company_id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  industry TEXT 
);

CREATE TABLE activity (
  action_id INTEGER PRIMARY KEY AUTOINCREMENT,
  Date DATE,
  Time TIME,
  salesperson_id INTEGER,
  contact_id INTEGER,
  company_id INTEGER,
  log TEXT 
);