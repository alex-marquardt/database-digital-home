/***
* Create table for movie's gernes.
***/

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