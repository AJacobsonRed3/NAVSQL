Totaling accounts are a challenge in SQL.
Given a Totaling account, how do we know which detail accounts we want?
If we use totaling accounts, do we know if we've covered every account in the sequence?
Or if we've duplicated accounts?

This code relies on the following logic to solve these problems:
1)  In NAV you set up a series of totaling accounts all starting with the same three characters.
For example, you might have these totaling accounts:
Company	No_	      Name	               Totaling	
USA	    R02-40000	Revenue	            41100..49999	
USA	    R02-50000	COGS	              50000..59999	
USA	    R02-60000	SG&A	              60000..69999	
USA	    R02-70000	Other Expense	      70000..80199|80400..84099|85000..99999	
USA	    R02-80000	Interest and Taxes	80200..80399|84100..84299	
USA	    R03-40000	Revenue	            41100..49999	
USA	    R03-50000	COGS	              50000..59999	
USA	    R03-60000	SG&A	              60000..69999	
USA	    R03-70000	Other Expense	      70000..80199|81000..84099|86000..99999	
USA	    R03-80000	Interest and Taxes	80200..80399|81100..84299	
In this case, I have two structures - R02 and R03.
You should set up these value in the Structures talbe (see Step 100 in this folder).
YOu can then use the pBuildTotalingPostingProcedure to populate the TotalingPosting Table -
mapping totaling accounts to positng accounts.
YOu can use the pREP101DuplicateAccountCheckTable to check for duplicate or missing posting accounts in your range.
