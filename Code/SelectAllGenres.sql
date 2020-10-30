/***
* Get all genres.
***/

Use MovieLibrary
GO

CREATE PROCEDURE SelectAllGenres	 
AS
BEGIN TRANSACTION SelectAllGenresTransaction
	BEGIN TRY

		SELECT Name 
		FROM Genre

		COMMIT TRANSACTION SelectAllGenresTransaction
	END TRY

	BEGIN CATCH
		ROLLBACK TRANSACTION SelectAllGenresTransaction
	END CATCH
GO