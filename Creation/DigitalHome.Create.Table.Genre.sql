/***
* Create table for gernes.
***/

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