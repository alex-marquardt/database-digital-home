/***
* Deployment script for DigitalHome "Creation"
***/

-- Create database.
CREATE DATABASE [DigitalHome]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DigitalHome_data', FILENAME = N'C:\Databases\DigitalHome_data.mdf' , SIZE = 5120KB , FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DigitalHome_log', FILENAME = N'C:\Databases\DigitalHome_log.ldf' , SIZE = 1024KB , FILEGROWTH = 10%)
GO

-- Create table for gernes.
BEGIN TRANSACTION CreateGenreTableTransaction
	BEGIN TRY
		USE DigitalHome

		CREATE TABLE Genre (
			Name nvarchar(50) PRIMARY KEY NOT NULL
		);

		COMMIT TRANSACTION CreateGenreTableTransaction
	END TRY

	BEGIN CATCH
		ROLLBACK TRANSACTION CreateGenreTableTransaction
	END CATCH
GO

-- Create table for movies.
BEGIN TRANSACTION CreateMovieTableTransaction
	BEGIN TRY
		USE DigitalHome

		CREATE TABLE Movie (
			Id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
			Title nvarchar(100) NOT NULL,
			PlayTime int NOT NULL,
			AgeLimit int NOT NULL,
			ReleaseYear int NOT NULL,
			Plot nvarchar(MAX) NULL
		);

		COMMIT TRANSACTION CreateMovieTableTransaction
	END TRY

	BEGIN CATCH
		ROLLBACK TRANSACTION CreateMovieTableTransaction
	END CATCH
GO

-- Create table for movie's gernes.
BEGIN TRANSACTION CreateMovieGenreTableTransaction
	BEGIN TRY
		USE DigitalHome

		CREATE TABLE MovieGenre (
			Id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
			MovieId int NOT NULL,
			GenreName nvarchar(50) NOT NULL
		);

		COMMIT TRANSACTION CreateMovieGenreTableTransaction
	END TRY

	BEGIN CATCH
		ROLLBACK TRANSACTION CreateMovieGenreTableTransaction
	END CATCH
GO