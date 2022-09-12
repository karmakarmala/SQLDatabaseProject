CREATE TABLE [dbo].[Grades] (
    [GradeId]   INT            IDENTITY (1, 1) NOT NULL,
    [GradeName] NVARCHAR (MAX) NULL,
    [Section]   NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_dbo.Grades] PRIMARY KEY CLUSTERED ([GradeId] ASC)
);

