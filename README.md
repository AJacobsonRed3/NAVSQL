# NAVSQL
SQL Code for Dynamics NAV

In this repository, I'm going to be placing the various SQL code I've developed for Dynamics NAV.
Depending on feedback from presentations, I may include my custom report code in this repository or in a separate repository.

For anyone trying to use the code, note that all my code uses Generic Views I build over the NAV database.
So, instead of something like this:

SELECT * FROM dbo.[CRONUS USA, Inc_$G_L Account]

You'll see code that looks like this:

SELECT * FROM dbo.[vNAV_G_L Account] where Company = 'USA'

Check the folder for Dealing with Multiple Companies for an explanation.

