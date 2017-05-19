USE [s17guest44]
GO

/****** Object:  StoredProcedure [dbo].[insertPresentation]    Script Date: 5/18/2017 9:56:26 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Michel Grigory Aghanesians
-- Description:	Inserts a presentation and the speaker
-- associated with it into database
-- =============================================
CREATE PROCEDURE [dbo].[insertPresentation] 
     @speaker VARCHAR(80),
     @presentation VARCHAR(128)
AS
BEGIN TRY
	DECLARE @fName VARCHAR(80)
	DECLARE @lName VARCHAR(80)
	DECLARE @personID int
	DECLARE @description VARCHAR(100)
	DECLARE @difficulty_level int
	DECLARE @classid int

	SET @fName = SUBSTRING(@speaker, 1, CHARINDEX(' ', @speaker) - 1)
	SET @lName = SUBSTRING(@speaker, CHARINDEX(' ', @speaker) + 1, LEN(@speaker) - CHARINDEX(' ', @speaker))
	SET @description = '-'
	SET @difficulty_level = 1

	SET @personID = 0


	SELECT @personID = person.person_id
	FROM person 
	WHERE   person.first_name = @fName
    AND     person.last_name = @lName

	IF @personID = 0
	BEGIN 
		INSERT INTO person (person.first_name, person.last_name) VALUES (@fName, @lName)
		SET @personID = Scope_Identity()
	END

	IF EXISTS
		(SELECT 1 FROM class WHERE class.submitted_by = @personID AND class.title = @presentation)
		BEGIN
			SELECT 'This Presentation Already Exists'
		END
	ELSE
		BEGIN
			INSERT INTO class (title, description, difficulty_level, submitted_by) VALUES (@presentation, @description, @difficulty_level, @personID)
			SET @classid = Scope_Identity()
			INSERT INTO class_presenter VALUES (@classid, @personID)
			SELECT 'Presentation is created successsfully'
		END


END TRY

BEGIN CATCH

DECLARE @ErrorMessage NVARCHAR(4000);
DECLARE @ErrorSeverity INT;
DECLARE @ErrorState INT;

SELECT
	@ErrorMessage = ERROR_MESSAGE(),
	@ErrorSeverity = ERROR_SEVERITY(),
	@ErrorState = ERROR_STATE();

RAISERROR (@ErrorMessage,@ErrorSeverity,@ErrorState);

END CATCH

GO

