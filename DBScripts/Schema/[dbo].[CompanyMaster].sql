Begin Tran A
-- Commit Tran A
-- Rollback Tran A

/*

		History:
		---------
		DateTime			By								Remarks
	   03/07/2023	    Siva Sugan		     Created CompanyMaster Table which stores all company related data
*/

CREATE TABLE [dbo].[CompanyMaster](

	CompanyMasterID		  bigint  Primary Key Identity (1,1),
	CompanyCode			  varchar(250),
	CompanyName           varchar(250),
	Address1              varchar(250),
	Address2			  varchar(250),
	State                 varchar(250),
	PIN                   varchar(250),
	Country               varchar(250),
	IsActive              Bit,
	IsDeleted             Bit,
	CreatedDate           DateTime,
	ModifiedDate          DateTime,
)

select * from [CompanyMaster]
