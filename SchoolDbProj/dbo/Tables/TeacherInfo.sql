CREATE TABLE [dbo].[TeacherInfo] (
    [Id]             INT            IDENTITY (1, 1) NOT NULL,
    [TeacherName]    NVARCHAR (MAX) NULL,
    [ModeOfTeaching] INT            NOT NULL,
    CONSTRAINT [PK_dbo.TeacherInfo] PRIMARY KEY CLUSTERED ([Id] ASC)
);

