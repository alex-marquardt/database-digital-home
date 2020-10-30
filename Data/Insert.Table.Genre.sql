/***
* Insert genre names into the Genre-tabel.
***/

BEGIN TRANSACTION InsertGenresTransaction
	BEGIN TRY	
		USE [MovieLibrary]

		INSERT INTO [dbo].[Genre]([Name])
		VALUES('Action')   
		INSERT INTO [dbo].[Genre]([Name])
		VALUES('Adventure')
		INSERT INTO [dbo].[Genre]([Name])
		VALUES('Animation')
		INSERT INTO [dbo].[Genre]([Name])
		VALUES('Biography')
		INSERT INTO [dbo].[Genre]([Name])
		VALUES('Comedy')   
		INSERT INTO [dbo].[Genre]([Name])
		VALUES('Crime')	   
		INSERT INTO [dbo].[Genre]([Name])
		VALUES('Documentary')
		INSERT INTO [dbo].[Genre]([Name])
		VALUES('Drama')	   
		INSERT INTO [dbo].[Genre]([Name])
		VALUES('Family')   
		INSERT INTO [dbo].[Genre]([Name])
		VALUES('Horror')   
		INSERT INTO [dbo].[Genre]([Name])
		VALUES('Musical')  
		INSERT INTO [dbo].[Genre]([Name])
		VALUES('Mystery')  
		INSERT INTO [dbo].[Genre]([Name])
		VALUES('Romance')  
		INSERT INTO [dbo].[Genre]([Name])
		VALUES('Science-Fiction')   
		INSERT INTO [dbo].[Genre]([Name])
		VALUES('Thriller') 
		INSERT INTO [dbo].[Genre]([Name]) 
		VALUES('War')	   
		INSERT INTO [dbo].[Genre]([Name])
		VALUES('Western')

		COMMIT TRANSACTION InsertGenresTransaction
	END TRY

	BEGIN CATCH
		ROLLBACK TRANSACTION InsertGenresTransaction
	END CATCH
GO