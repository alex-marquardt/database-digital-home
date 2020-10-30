/***
* Create DigitalHome database.
***/

CREATE DATABASE [DigitalHome]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DigitalHome_data', FILENAME = N'C:\Databases\DigitalHome_data.mdf' , SIZE = 5120KB , FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DigitalHome_log', FILENAME = N'C:\Databases\DigitalHome_log.ldf' , SIZE = 1024KB , FILEGROWTH = 10%)
GO
