/* First, note that all my work assumes that you will create a separate reporting database for each actual NAV database you use.
   I do this to ensure that my objects never get clobbered.  Further, this eliminates many audit issues as a reporting developer only 
   needs to be able to read the actual NAV Database and need have no other authority */
   
/* Step 1 - Create a list of all Tables you will be reporting over.
    While NAV has hundreds of tables, you will probably not need the vast majority for reporting.
    */
CREATE TABLE [dbo].[Tables](
	[NAVTableName] [NVARCHAR](128) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[NAVTableName] ASC
)
)
/* Here's a list to get your started:
INSERT INTO dbo.Tables
(
    NAVTableName
)
VALUES
( N'Accounting Period' ), 
( N'Bank Account Ledger Entry' ), 
( N'Change Log Entry' ), 
( N'Check Ledger Entry' ), 
( N'Config_ Package Data' ), 
( N'Config_ Package Error' ), 
( N'Config_ Package Field' ), 
( N'Cust_ Ledger Entry' ), 
( N'Customer' ), 
( N'Customer Posting Group' ), 
( N'Default Dimension' ), 
( N'Detailed Cust_ Ledg_ Entry' ), 
( N'Detailed Vendor Ledg_ Entry' ), 
( N'Dimension Set Entry' ), 
( N'Dimension Value' ), 
( N'G_L Account' ), 
( N'G_L Budget Entry' ), 
( N'G_L Budget Name' ), 
( N'G_L Entry' ), 
( N'Gen_ Journal Batch' ), 
( N'Gen_ Journal Line' ), 
( N'General Ledger Setup' ), 
( N'Item' ), 
( N'Item Category' ), 
( N'Item Journal Line' ), 
( N'Item Ledger Entry' ), 
( N'Location' ), 
( N'Posted Bank Rec_ Header' ), 
( N'Posted Bank Rec_ Line' ), 
( N'Purch_ Cr_ Memo Hdr_' ), 
( N'Purch_ Cr_ Memo Line' ), 
( N'Purch_ Inv_ Header' ), 
( N'Purch_ Inv_ Line' ), 
( N'Purchase Header' ), 
( N'Purchase Line' ), 
( N'Purchase Price' ), 
( N'Sales Cr_Memo Header' ), 
( N'Sales Cr_Memo Line' ), 
( N'Sales Header' ), 
( N'Sales Invoice Header' ), 
( N'Sales Invoice Line' ), 
( N'Sales Line' ), 
( N'Ship-to Address' ), 
( N'Value Entry' ), 
( N'Vendor' ), 
( N'Vendor Ledger Entry' )

