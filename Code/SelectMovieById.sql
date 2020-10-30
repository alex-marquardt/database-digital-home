/***
* Get movie with id.
***/

Use MovieLibrary
GO

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