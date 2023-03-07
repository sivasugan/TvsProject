Begin Tran A
-- Commit Tran A
-- Rollback Tran A

/*

		History:
		---------
		DateTime			By								Remarks
	   03/07/2023	    Siva Sugan		     Created BranchMaster Table which stores all branch related data
*/

CREATE TABLE [dbo].[BranchMaster](

	BranchMasterID		  bigint  Primary Key Identity (1,1),
	CompanyMasterID       bigint,
	BranchCode			  varchar(250),
	BranchName            varchar(250),
	Address1              varchar(250),
	Address2			  varchar(250),
	State                 varchar(250),
	PIN                   varchar(250),
	Country               varchar(250),
	Mobile                varchar(250),
	Email				  varchar(250),
	ContactPerson         varchar(250),
	IsActive              Bit,
	IsDeleted             Bit,
	CreatedDate           DateTime,
	ModifiedDate          DateTime,
)

ALTER TABLE [dbo].[BranchMaster] ADD CONSTRAINT FK_BranchMaster_CompanyMaster FOREIGN KEY (CompanyMasterID) REFERENCES CompanyMaster(CompanyMasterID);

select * from [BranchMaster]
