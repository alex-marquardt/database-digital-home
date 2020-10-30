/***
* Deployment script for MovieLibrary "Code"
***/

Use MovieLibrary
GO

-- Create select all genres stored procedure
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

-- Create select all movies stored procedure
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

-- Create select genres for a movie stored procedure
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

-- Create select movie by id stored procedure
CREATE PROCEDURE SelectMovieById 
	@Id int	 
AS
BEGIN TRANSACTION SelectMovieByIdTransaction
	BEGIN TRY

		SELECT Id, Title, ReleaseYear, PlayTime, AgeLimit, Plot 
		FROM Movie
		WHERE Id = @Id

		COMMIT TRANSACTION SelectMovieByIdTransaction
	END TRY

	BEGIN CATCH
		ROLLBACK TRANSACTION SelectMovieByIdTransaction
	END CATCH
GO

-- Create select movie by genre stored procedure
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

-- Create insert genre for movie stored procedure
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