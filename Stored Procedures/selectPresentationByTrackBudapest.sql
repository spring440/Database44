USE [s17guest44]
GO

/****** Object:  StoredProcedure [dbo].[selectPresentationByTrackBudapest]    Script Date: 5/18/2017 9:57:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[selectPresentationByTrackBudapest] 
AS
BEGIN TRY
	SELECT 
	track.track_id as "Track ID",
	class.title as "Presentation Title",
	CONCAT(person.first_name, ' ', person.last_name) as "Presenter"
	FROM schedule
	LEFT JOIN track on track.track_id = schedule.track_id
	LEFT JOIN class_presenter on class_presenter.class_id = schedule.class_id
	LEFT JOIN class on class.class_id = schedule.class_id
	LEFT JOIN person on person.person_id = class_presenter.presenter_id
	LEFT JOIN event on event.event_id = track.event_id
	LEFT JOIN event_location ON event_location.location_id = event.location_id
	Where event_location.city = 'Budapest'
	ORDER BY track.track_id

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

