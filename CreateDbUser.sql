--use master
--1
--USE MASTER

CREATE LOGIN mynewlogin WITH PASSWORD = 'THISISMYPASSWORD';


--2 CONNECT TO CLIENT DATABASE
CREATE USER mynewlogin FROM LOGIN mynewlogin; 

--3a MAKE USER DBO
exec sp_addrolemember 'db_owner', 'mynewlogin'

--3a MAKE USER READONLY (datareader)
exec sp_addrolemember 'db_datareader', 'mynewlogin'
