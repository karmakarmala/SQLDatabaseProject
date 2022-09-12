CREATE PROCEDURE [dbo].[Teacher_Insert]
    @TeacherName [nvarchar](max),
    @ModeOfTeaching [int]
AS
BEGIN
    INSERT [dbo].[TeacherInfo]([TeacherName], [ModeOfTeaching])
    VALUES (@TeacherName, @ModeOfTeaching)
    
    DECLARE @Id int
    SELECT @Id = [Id]
    FROM [dbo].[TeacherInfo]
    WHERE @@ROWCOUNT > 0 AND [Id] = scope_identity()
    
    SELECT t0.[Id]
    FROM [dbo].[TeacherInfo] AS t0
    WHERE @@ROWCOUNT > 0 AND t0.[Id] = @Id
END