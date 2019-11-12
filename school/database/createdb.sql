--- CIT-285 Group Project
-- Script to create book_store database
-- and the Author and Book tables.
-- 
-- The script for the rest of tables for project should be
-- developed by each group.
--
-- To run this script on the command line use the following syntax:
-- MySql>> source patheToThisSqlFile
--
-- For example, if the bookstore.sql is located in C:\Users\Desktop\BHCC\CLASSES\CIT-285\projects, 
-- then run it as follow:
-- MySql>> source C:/Users/Desktop/BHCC/CLASSES/CIT-285/projects/schooldb.sql
--
--
--
--DROP DATABASE IF EXISTS schooldb;
--
-- Create a new database.
--CREATE DATABASE IF NOT EXISTS schooldb;
--
-- Change the database to book_store.
--USE schooldb;
--
-- Change delimiter
--DELIMITER //
--
-- Create tables in book_store database.
DROP TABLE IF EXISTS student;
DROP TABLE IF EXISTS faculty;
DROP TABLE IF EXISTS course;
DROP TABLE IF EXISTS student_course;
DROP TABLE IF EXISTS faculty_course;
--
create table student(StudentID BIGINT NOT NULL,
                    StudentFirstName VARCHAR(20),
                    StudentLastName VARCHAR(20),
                    StudentAddress VARCHAR(100),
                    StudentPhone BIGINT,
                    StudentEmail VARCHAR(50),
                    PRIMARY KEY (StudentID));
--
create table faculty(FacultyID BIGINT NOT NULL,
                    FacultyFirstName VARCHAR(20),
                    FacultyLastName VARCHAR(20),
                    PRIMARY KEY (FacultyID));
--
create table course(CourseID BIGINT NOT NULL,
                  CourseCode VARCHAR(30) NOT NULL,
                  CourseTitle VARCHAR(100) NOT NULL,
                  CourseDescription VARCHAR(250),
                  PRIMARY KEY (CourseID));
--
create table student_course(StudentID BIGINT NOT NULL,
                            CourseID BIGINT NOT NULL,
                            PRIMARY KEY (StudentID,CourseID));
--
create table faculty_course(FacultyID BIGINT NOT NULL,
                            CourseID BIGINT NOT NULL,
                            PRIMARY KEY (FacultyID,CourseID));
--
-- Change delimiter to ;
--DELIMITER ;
