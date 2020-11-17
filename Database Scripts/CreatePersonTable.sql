USE [master]
GO

/****** Object:  Table [dbo].[Person]    Script Date: 11/17/2020 3:46:37 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Person](
	[PersonID] [int] IDENTITY(1,1) NOT NULL,
	[AccountsID] [int] NULL,
	[Gender] [nchar](6) NULL,
	[Age] [int] NULL,
	[Height] [int] NULL,
	[Weight] [int] NULL,
	[Calories] [int] NULL,
	[Goals] [nchar](30) NULL,
	[Email] [nchar](50) NULL,
 CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED 
(
	[PersonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


