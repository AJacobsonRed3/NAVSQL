/*I don't assume that you will want to combine all companies.
  In addition, while we could use the name that NAv uses for each of your companies in the query, sometimes it's easier to create
  an abbreviation.  
 */
USE ReportingDatabase -- Replace This with your reporting database name
GO
CREATE TABLE [dbo].[Companies](
	[ReportingDatabaseName] [sysname] NOT NULL,
	[NAVDatabaseName] [sysname] NOT NULL,
	[SQLCompanyPrefix] [NVARCHAR](128) NOT NULL,
	[Abbr] [NVARCHAR](20) NULL,
	[Name] [NVARCHAR](30) NULL ,
	[DefaultCompany] [CHAR](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[ReportingDatabaseName] ASC,
	[NAVDatabaseName] ASC,
	[SQLCompanyPrefix] ASC
)
) 
GO
/* Explanation
ReportingDatabaseName - I create one reporting database for each NAV Database I have.
this reduces audit and authority issues as well.  It also lets me have full control of all my objects.
so, the views I create over NAV tables reside in the reporting database.
NAVDatabaseName - The database where youare storing NAV Data
SQLCompanyPrefix - the prefix uses for a company's data (special Characters removed)
  For example: CRONUS Canada, Inc_
Abbr - an abbreviation to store in the view. For example, I use CAN for Canada
Name - the name of the company.  (not required in this context, used for other reporting example that I may post on Github)
Default Company - Y/N - (not required in this context, used for other reporting example that I may post on Github)
*/
