CREATE PROCEDURE [dbo].[Teacher_Update]
    @Id [int],
    @TeacherName [nvarchar](max),
    @ModeOfTeaching [int]
AS
BEGIN
    UPDATE [dbo].[TeacherInfo]
    SET [TeacherName] = @TeacherName, [ModeOfTeaching] = @ModeOfTeaching
    WHERE ([Id] = @Id)
END