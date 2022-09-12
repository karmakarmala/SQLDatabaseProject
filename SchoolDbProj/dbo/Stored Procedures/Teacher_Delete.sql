CREATE PROCEDURE [dbo].[Teacher_Delete]
    @Id [int]
AS
BEGIN
    DELETE [dbo].[TeacherInfo]
    WHERE ([Id] = @Id)
END