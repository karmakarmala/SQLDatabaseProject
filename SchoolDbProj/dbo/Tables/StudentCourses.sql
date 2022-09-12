CREATE TABLE [dbo].[StudentCourses] (
    [Student_StudentID] INT NOT NULL,
    [Course_CourseId]   INT NOT NULL,
    CONSTRAINT [PK_dbo.StudentCourses] PRIMARY KEY CLUSTERED ([Student_StudentID] ASC, [Course_CourseId] ASC),
    CONSTRAINT [FK_dbo.StudentCourses_dbo.Courses_Course_CourseId] FOREIGN KEY ([Course_CourseId]) REFERENCES [dbo].[Courses] ([CourseId]) ON DELETE CASCADE,
    CONSTRAINT [FK_dbo.StudentCourses_dbo.Students_Student_StudentID] FOREIGN KEY ([Student_StudentID]) REFERENCES [dbo].[Students] ([StudentID]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_Student_StudentID]
    ON [dbo].[StudentCourses]([Student_StudentID] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Course_CourseId]
    ON [dbo].[StudentCourses]([Course_CourseId] ASC);

