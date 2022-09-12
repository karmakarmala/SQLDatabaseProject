CREATE TABLE [dbo].[Courses] (
    [CourseId]   INT            IDENTITY (1, 1) NOT NULL,
    [CourseName] NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_dbo.Courses] PRIMARY KEY CLUSTERED ([CourseId] ASC)
);

