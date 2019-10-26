--use master
--1
--USE MASTER

CREATE LOGIN mynewlogin WITH PASSWORD = 'THISISMYPASSWORD';


--2 CONNECT TO CLIENT DATABASE
CREATE USER mynewlogin FROM LOGIN mynewlogin; 


exec sp_addrolemember 'db_owner', 'mynewlogin'