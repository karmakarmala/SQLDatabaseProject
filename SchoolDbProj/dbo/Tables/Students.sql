CREATE TABLE [dbo].[Students] (
    [StudentID]   INT             IDENTITY (1, 1) NOT NULL,
    [StudentName] NVARCHAR (50)   NOT NULL,
    [DateOfBirth] DATETIME        NULL,
    [Height]      DECIMAL (18, 2) NOT NULL,
    [Weight]      REAL            NOT NULL,
    [RowVersion]  VARBINARY (MAX) NULL,
    [GradeId]     INT             NULL,
    CONSTRAINT [PK_dbo.Students] PRIMARY KEY CLUSTERED ([StudentID] ASC),
    CONSTRAINT [FK_dbo.Students_dbo.Grades_GradeId] FOREIGN KEY ([GradeId]) REFERENCES [dbo].[Grades] ([GradeId])
);


GO
CREATE NONCLUSTERED INDEX [IX_GradeId]
    ON [dbo].[Students]([GradeId] ASC);

