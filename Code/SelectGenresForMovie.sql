/***
* Get genres for a movie.
***/

Use MovieLibrary
GO

CREATE PROCEDURE SelectGenresForMovie 
	@MovieId int
AS
BEGIN TRANSACTION SelectGenresForMovieTransaction
	BEGIN TRY

		SELECT GenreName as Name
		FROM  MovieGenre
		WHERE MovieId = @MovieId

		COMMIT TRANSACTION SelectGenresForMovieTransaction
	END TRY

	BEGIN CATCH
		ROLLBACK TRANSACTION SelectGenresForMovieTransaction
	END CATCH
GO