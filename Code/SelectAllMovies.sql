/***
* Get all movies.
***/

Use MovieLibrary
GO

CREATE PROCEDURE SelectAllMovies	 
AS
BEGIN TRANSACTION SelectAllMoviesTransaction
	BEGIN TRY

		SELECT Id, Title, ReleaseYear, PlayTime, AgeLimit, Plot 
		FROM Movie

		COMMIT TRANSACTION SelectAllMoviesTransaction
	END TRY

	BEGIN CATCH
		ROLLBACK TRANSACTION SelectAllMoviesTransaction
	END CATCH
GO