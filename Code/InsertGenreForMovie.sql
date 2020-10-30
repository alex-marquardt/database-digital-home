/***
* Insert genres for a movie.
***/

Use MovieLibrary
GO

CREATE PROCEDURE [dbo].[InsertGenreForMovie] 
	@GenreName nvarchar(50)
AS
BEGIN TRANSACTION InsertMovieGenreTransaction
	BEGIN TRY

		INSERT INTO [dbo].[MovieGenre] ([MovieId], [GenreName])
		VALUES ((SELECT MAX(Id) FROM Movie), @GenreName);

		COMMIT TRANSACTION InsertMovieGenreTransaction
	END TRY

	BEGIN CATCH
		ROLLBACK TRANSACTION InsertMovieGenreTransaction
	END CATCH
GO