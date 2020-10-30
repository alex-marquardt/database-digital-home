/***
* Get movies with gerne name.
***/

Use MovieLibrary
GO

CREATE PROCEDURE SelectMoviesByGenre
	@Name nvarchar(50) 
AS
BEGIN TRANSACTION SelectMoviesByGenreTransaction
	BEGIN TRY

		SELECT movie.Id, Title, ReleaseYear, PlayTime, AgeLimit, Plot
		FROM Movie movie
		JOIN MovieGenre moviegenre ON movie.Id = moviegenre.MovieId
		WHERE GenreName = @Name

		COMMIT TRANSACTION SelectMoviesByGenreTransaction
	END TRY

	BEGIN CATCH
		ROLLBACK TRANSACTION SelectMoviesByGenreTransaction
	END CATCH
GO