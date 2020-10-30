/***
* Create table for movies.
***/

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