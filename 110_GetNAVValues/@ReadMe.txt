The stored procedure in this folder returns a set of values for a given type of NAV object when given a NAV string.
It has two options for output:
Table = The Data is stored in a table with a unique identifier.  This table can then be used (and cleaned up) by another procedure 
        running report.
List  = A list of values will be displayed and no records will be saved.
