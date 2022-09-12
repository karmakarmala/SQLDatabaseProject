CREATE TABLE [dbo].[StudentAddresses] (
    [StudentAddressId] INT            NOT NULL,
    [Address1]         NVARCHAR (MAX) NULL,
    [Address2]         NVARCHAR (MAX) NULL,
    [City]             NVARCHAR (MAX) NULL,
    [Zipcode]          INT            NOT NULL,
    [State]            NVARCHAR (MAX) NULL,
    [Country]          NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_dbo.StudentAddresses] PRIMARY KEY CLUSTERED ([StudentAddressId] ASC),
    CONSTRAINT [FK_dbo.StudentAddresses_dbo.Students_StudentAddressId] FOREIGN KEY ([StudentAddressId]) REFERENCES [dbo].[Students] ([StudentID])
);


GO
CREATE NONCLUSTERED INDEX [IX_StudentAddressId]
    ON [dbo].[StudentAddresses]([StudentAddressId] ASC);

