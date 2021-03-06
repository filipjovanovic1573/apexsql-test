/*=============================================================
SCRIPT HEADER

VERSION:   1.01.0001
DATE:      09-19-2016 12.31.53
SERVER:    DESKTOP-UM0HN19\SQLEXPRESS

DATABASE:	qwer10
	Data types:
		Flag, Name
	Procedures:
		CHECKALLITEMS
	Schemas:
		db_accessadmin, db_backupoperator, db_datareader, db_datawriter
		db_ddladmin, db_denydatareader, db_denydatawriter, db_owner, db_securityadmin
		dbo, guest, INFORMATION_SCHEMA, Production, sys
	Tables:
		FrenchDataTest, Product, ProductCategory, ProductModel, ProductPhoto
		ProductProductPhoto, ProductSubcategory, UnitMeasure
	XML schema collections:
		ManuInstructionsSchemaCollection, ProductDescriptionSchemaCollection


=============================================================*/
SET ANSI_WARNINGS ON
SET XACT_ABORT ON
SET ARITHABORT ON
SET NOCOUNT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
GO
-- BEGINNING TRANSACTION STRUCTURE
PRINT 'Beginning transaction STRUCTURE'
BEGIN TRANSACTION _STRUCTURE_
GO
-- Create Schema [db_backupoperator]
Print 'Create Schema [db_backupoperator]'
GO
-- Create Schema [db_ddladmin]
Print 'Create Schema [db_ddladmin]'
GO
-- Create Schema [db_securityadmin]
Print 'Create Schema [db_securityadmin]'
GO
-- Create Schema [db_denydatareader]
Print 'Create Schema [db_denydatareader]'
GO
-- Create Schema [db_denydatawriter]
Print 'Create Schema [db_denydatawriter]'
GO
-- Create Schema [db_datawriter]
Print 'Create Schema [db_datawriter]'
GO
-- Create Schema [db_owner]
Print 'Create Schema [db_owner]'
GO
-- Create Schema [db_datareader]
Print 'Create Schema [db_datareader]'
GO
-- Create Schema [Production]
Print 'Create Schema [Production]'
GO
CREATE SCHEMA [Production]
	AUTHORIZATION [dbo]
GO
-- Create Schema [db_accessadmin]
Print 'Create Schema [db_accessadmin]'
GO
-- Create Xml Schema Collection [Production].[ProductDescriptionSchemaCollection]
Print 'Create Xml Schema Collection [Production].[ProductDescriptionSchemaCollection]'
GO
CREATE XML SCHEMA COLLECTION [Production].[ProductDescriptionSchemaCollection] AS
N'<xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:t="http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/ProductModelWarrAndMain" targetNamespace="http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/ProductModelWarrAndMain" elementFormDefault="qualified"><xsd:element name="Maintenance"><xsd:complexType><xsd:complexContent><xsd:restriction base="xsd:anyType"><xsd:sequence><xsd:element name="NoOfYears" type="xsd:string" /><xsd:element name="Description" type="xsd:string" /></xsd:sequence></xsd:restriction></xsd:complexContent></xsd:complexType></xsd:element><xsd:element name="Warranty"><xsd:complexType><xsd:complexContent><xsd:restriction base="xsd:anyType"><xsd:sequence><xsd:element name="WarrantyPeriod" type="xsd:string" /><xsd:element name="Description" type="xsd:string" /></xsd:sequence></xsd:restriction></xsd:complexContent></xsd:complexType></xsd:element></xsd:schema><xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns1="http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/ProductModelWarrAndMain" xmlns:t="http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/ProductModelDescription" targetNamespace="http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/ProductModelDescription" elementFormDefault="qualified"><xsd:import namespace="http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/ProductModelWarrAndMain" /><xsd:element name="Code" type="xsd:string" /><xsd:element name="Description" type="xsd:string" /><xsd:element name="ProductDescription" type="t:ProductDescription" /><xsd:element name="Taxonomy" type="xsd:string" /><xsd:complexType name="Category"><xsd:complexContent><xsd:restriction base="xsd:anyType"><xsd:sequence><xsd:element ref="t:Taxonomy" /><xsd:element ref="t:Code" /><xsd:element ref="t:Description" minOccurs="0" /></xsd:sequence></xsd:restriction></xsd:complexContent></xsd:complexType><xsd:complexType name="Features" mixed="true"><xsd:complexContent mixed="true"><xsd:restriction base="xsd:anyType"><xsd:sequence><xsd:element ref="ns1:Warranty" /><xsd:element ref="ns1:Maintenance" /><xsd:any namespace="##other" processContents="skip" minOccurs="0" maxOccurs="unbounded" /></xsd:sequence></xsd:restriction></xsd:complexContent></xsd:complexType><xsd:complexType name="Manufacturer"><xsd:complexContent><xsd:restriction base="xsd:anyType"><xsd:sequence><xsd:element name="Name" type="xsd:string" minOccurs="0" /><xsd:element name="CopyrightURL" type="xsd:string" minOccurs="0" /><xsd:element name="Copyright" type="xsd:string" minOccurs="0" /><xsd:element name="ProductURL" type="xsd:string" minOccurs="0" /></xsd:sequence></xsd:restriction></xsd:complexContent></xsd:complexType><xsd:complexType name="Picture"><xsd:complexContent><xsd:restriction base="xsd:anyType"><xsd:sequence><xsd:element name="Name" type="xsd:string" minOccurs="0" /><xsd:element name="Angle" type="xsd:string" minOccurs="0" /><xsd:element name="Size" type="xsd:string" minOccurs="0" /><xsd:element name="ProductPhotoID" type="xsd:integer" minOccurs="0" /></xsd:sequence></xsd:restriction></xsd:complexContent></xsd:complexType><xsd:complexType name="ProductDescription"><xsd:complexContent><xsd:restriction base="xsd:anyType"><xsd:sequence><xsd:element name="Summary" type="t:Summary" minOccurs="0" /><xsd:element name="Manufacturer" type="t:Manufacturer" minOccurs="0" /><xsd:element name="Features" type="t:Features" minOccurs="0" maxOccurs="unbounded" /><xsd:element name="Picture" type="t:Picture" minOccurs="0" maxOccurs="unbounded" /><xsd:element name="Category" type="t:Category" minOccurs="0" maxOccurs="unbounded" /><xsd:element name="Specifications" type="t:Specifications" minOccurs="0" maxOccurs="unbounded" /></xsd:sequence><xsd:attribute name="ProductModelID" type="xsd:string" /><xsd:attribute name="ProductModelName" type="xsd:string" /></xsd:restriction></xsd:complexContent></xsd:complexType><xsd:complexType name="Specifications" mixed="true"><xsd:complexContent mixed="true"><xsd:restriction base="xsd:anyType"><xsd:sequence><xsd:any processContents="skip" minOccurs="0" maxOccurs="unbounded" /></xsd:sequence></xsd:restriction></xsd:complexContent></xsd:complexType><xsd:complexType name="Summary" mixed="true"><xsd:complexContent mixed="true"><xsd:restriction base="xsd:anyType"><xsd:sequence><xsd:any namespace="http://www.w3.org/1999/xhtml" processContents="skip" minOccurs="0" maxOccurs="unbounded" /></xsd:sequence></xsd:restriction></xsd:complexContent></xsd:complexType></xsd:schema>'
GO
-- Create Xml Schema Collection [Production].[ManuInstructionsSchemaCollection]
Print 'Create Xml Schema Collection [Production].[ManuInstructionsSchemaCollection]'
GO
CREATE XML SCHEMA COLLECTION [Production].[ManuInstructionsSchemaCollection] AS
N'<xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:t="http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/ProductModelManuInstructions" targetNamespace="http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/ProductModelManuInstructions" elementFormDefault="qualified"><xsd:element name="root"><xsd:complexType mixed="true"><xsd:complexContent mixed="true"><xsd:restriction base="xsd:anyType"><xsd:sequence><xsd:element name="Location" maxOccurs="unbounded"><xsd:complexType mixed="true"><xsd:complexContent mixed="true"><xsd:restriction base="xsd:anyType"><xsd:sequence><xsd:element name="step" type="t:StepType" maxOccurs="unbounded" /></xsd:sequence><xsd:attribute name="LocationID" type="xsd:integer" use="required" /><xsd:attribute name="SetupHours" type="xsd:decimal" /><xsd:attribute name="MachineHours" type="xsd:decimal" /><xsd:attribute name="LaborHours" type="xsd:decimal" /><xsd:attribute name="LotSize" type="xsd:decimal" /></xsd:restriction></xsd:complexContent></xsd:complexType></xsd:element></xsd:sequence></xsd:restriction></xsd:complexContent></xsd:complexType></xsd:element><xsd:complexType name="StepType" mixed="true"><xsd:complexContent mixed="true"><xsd:restriction base="xsd:anyType"><xsd:choice minOccurs="0" maxOccurs="unbounded"><xsd:element name="tool" type="xsd:string" /><xsd:element name="material" type="xsd:string" /><xsd:element name="blueprint" type="xsd:string" /><xsd:element name="specs" type="xsd:string" /><xsd:element name="diag" type="xsd:string" /></xsd:choice></xsd:restriction></xsd:complexContent></xsd:complexType></xsd:schema>'
GO
-- Create Type [dbo].[Name]
Print 'Create Type [dbo].[Name]'
GO
CREATE TYPE [dbo].[Name]
	FROM [nvarchar](50)
	NULL
GO
-- Create Type [dbo].[Flag]
Print 'Create Type [dbo].[Flag]'
GO
CREATE TYPE [dbo].[Flag]
	FROM [bit]
	NOT NULL
GO
-- Create Table [Production].[ProductProductPhoto]
Print 'Create Table [Production].[ProductProductPhoto]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING OFF
GO
CREATE TABLE [Production].[ProductProductPhoto] (
		[ProductID]          [int] NOT NULL,
		[ProductPhotoID]     [int] NOT NULL,
		[Primary]            [dbo].[Flag] NOT NULL,
		[ModifiedDate]       [datetime] NOT NULL,
		CONSTRAINT [PK_ProductProductPhoto_ProductID_ProductPhotoID]
		PRIMARY KEY
		NONCLUSTERED
		([ProductID], [ProductPhotoID])
	ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [Production].[ProductProductPhoto]
	ADD
	CONSTRAINT [DF_ProductProductPhoto_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [Production].[ProductProductPhoto]
	ADD
	CONSTRAINT [DF_ProductProductPhoto_Primary]
	DEFAULT ((0)) FOR [Primary]
GO
ALTER TABLE [Production].[ProductProductPhoto] SET (LOCK_ESCALATION = TABLE)
GO

-- Create Table [dbo].[FrenchDataTest]
Print 'Create Table [dbo].[FrenchDataTest]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[FrenchDataTest] (
		[TestData]     [varchar](50) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FrenchDataTest] SET (LOCK_ESCALATION = TABLE)
GO

-- Create Table [Production].[UnitMeasure]
Print 'Create Table [Production].[UnitMeasure]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [Production].[UnitMeasure] (
		[UnitMeasureCode]     [nchar](3) NOT NULL,
		[Name]                [dbo].[Name] NOT NULL,
		[ModifiedDate]        [datetime] NOT NULL,
		CONSTRAINT [PK_UnitMeasure_UnitMeasureCode]
		PRIMARY KEY
		CLUSTERED
		([UnitMeasureCode])
	ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [Production].[UnitMeasure]
	ADD
	CONSTRAINT [DF_UnitMeasure_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_UnitMeasure_Name]
	ON [Production].[UnitMeasure] ([Name])
	ON [PRIMARY]
GO
ALTER TABLE [Production].[UnitMeasure] SET (LOCK_ESCALATION = TABLE)
GO

-- Create Table [Production].[Product]
Print 'Create Table [Production].[Product]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [Production].[Product] (
		[ProductID]                 [int] IDENTITY(1, 1) NOT NULL,
		[Name]                      [dbo].[Name] NOT NULL,
		[ProductNumber]             [nvarchar](25) NOT NULL,
		[MakeFlag]                  [dbo].[Flag] NOT NULL,
		[FinishedGoodsFlag]         [dbo].[Flag] NOT NULL,
		[Color]                     [nvarchar](15) NULL,
		[SafetyStockLevel]          [smallint] NOT NULL,
		[ReorderPoint]              [smallint] NOT NULL,
		[StandardCost]              [money] NOT NULL,
		[ListPrice]                 [money] NOT NULL,
		[Size]                      [nvarchar](5) NULL,
		[SizeUnitMeasureCode]       [nchar](3) NULL,
		[WeightUnitMeasureCode]     [nchar](3) NULL,
		[Weight]                    [decimal](8, 2) NULL,
		[DaysToManufacture]         [int] NOT NULL,
		[ProductLine]               [nchar](2) NULL,
		[Class]                     [nchar](2) NULL,
		[Style]                     [nchar](2) NULL,
		[ProductSubcategoryID]      [int] NULL,
		[ProductModelID]            [int] NULL,
		[SellStartDate]             [datetime] NOT NULL,
		[SellEndDate]               [datetime] NULL,
		[DiscontinuedDate]          [datetime] NULL,
		[rowguid]                   [uniqueidentifier] NOT NULL ROWGUIDCOL,
		[ModifiedDate]              [datetime] NOT NULL,
		CONSTRAINT [PK_Product_ProductID]
		PRIMARY KEY
		CLUSTERED
		([ProductID])
	ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [Production].[Product]
	ADD
	CONSTRAINT [CK_Product_Class]
	CHECK
	(upper([Class])='H' OR upper([Class])='M' OR upper([Class])='L' OR [Class] IS NULL)
GO
ALTER TABLE [Production].[Product]
CHECK CONSTRAINT [CK_Product_Class]
GO
ALTER TABLE [Production].[Product]
	ADD
	CONSTRAINT [CK_Product_DaysToManufacture]
	CHECK
	([DaysToManufacture]>=(0))
GO
ALTER TABLE [Production].[Product]
CHECK CONSTRAINT [CK_Product_DaysToManufacture]
GO
ALTER TABLE [Production].[Product]
	ADD
	CONSTRAINT [CK_Product_ListPrice]
	CHECK
	([ListPrice]>=(0.00))
GO
ALTER TABLE [Production].[Product]
CHECK CONSTRAINT [CK_Product_ListPrice]
GO
ALTER TABLE [Production].[Product]
	ADD
	CONSTRAINT [CK_Product_ProductLine]
	CHECK
	(upper([ProductLine])='R' OR upper([ProductLine])='M' OR upper([ProductLine])='T' OR upper([ProductLine])='S' OR [ProductLine] IS NULL)
GO
ALTER TABLE [Production].[Product]
CHECK CONSTRAINT [CK_Product_ProductLine]
GO
ALTER TABLE [Production].[Product]
	ADD
	CONSTRAINT [CK_Product_ReorderPoint]
	CHECK
	([ReorderPoint]>(0))
GO
ALTER TABLE [Production].[Product]
CHECK CONSTRAINT [CK_Product_ReorderPoint]
GO
ALTER TABLE [Production].[Product]
	ADD
	CONSTRAINT [CK_Product_SafetyStockLevel]
	CHECK
	([SafetyStockLevel]>(0))
GO
ALTER TABLE [Production].[Product]
CHECK CONSTRAINT [CK_Product_SafetyStockLevel]
GO
ALTER TABLE [Production].[Product]
	ADD
	CONSTRAINT [CK_Product_SellEndDate]
	CHECK
	([SellEndDate]>=[SellStartDate] OR [SellEndDate] IS NULL)
GO
ALTER TABLE [Production].[Product]
CHECK CONSTRAINT [CK_Product_SellEndDate]
GO
ALTER TABLE [Production].[Product]
	ADD
	CONSTRAINT [CK_Product_StandardCost]
	CHECK
	([StandardCost]>=(0.00))
GO
ALTER TABLE [Production].[Product]
CHECK CONSTRAINT [CK_Product_StandardCost]
GO
ALTER TABLE [Production].[Product]
	ADD
	CONSTRAINT [CK_Product_Style]
	CHECK
	(upper([Style])='U' OR upper([Style])='M' OR upper([Style])='W' OR [Style] IS NULL)
GO
ALTER TABLE [Production].[Product]
CHECK CONSTRAINT [CK_Product_Style]
GO
ALTER TABLE [Production].[Product]
	ADD
	CONSTRAINT [CK_Product_Weight]
	CHECK
	([Weight]>(0.00))
GO
ALTER TABLE [Production].[Product]
CHECK CONSTRAINT [CK_Product_Weight]
GO
ALTER TABLE [Production].[Product]
	ADD
	CONSTRAINT [DF_Product_FinishedGoodsFlag]
	DEFAULT ((1)) FOR [FinishedGoodsFlag]
GO
ALTER TABLE [Production].[Product]
	ADD
	CONSTRAINT [DF_Product_MakeFlag]
	DEFAULT ((1)) FOR [MakeFlag]
GO
ALTER TABLE [Production].[Product]
	ADD
	CONSTRAINT [DF_Product_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [Production].[Product]
	ADD
	CONSTRAINT [DF_Product_rowguid]
	DEFAULT (newid()) FOR [rowguid]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_Product_Name]
	ON [Production].[Product] ([Name])
	ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_Product_ProductNumber]
	ON [Production].[Product] ([ProductNumber])
	ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_Product_rowguid]
	ON [Production].[Product] ([rowguid])
	ON [PRIMARY]
GO
ALTER TABLE [Production].[Product] SET (LOCK_ESCALATION = TABLE)
GO

-- Create Table [Production].[ProductPhoto]
Print 'Create Table [Production].[ProductPhoto]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [Production].[ProductPhoto] (
		[ProductPhotoID]             [int] IDENTITY(1, 1) NOT NULL,
		[ThumbNailPhoto]             [varbinary](max) NULL,
		[ThumbnailPhotoFileName]     [nvarchar](50) NULL,
		[LargePhoto]                 [varbinary](max) NULL,
		[LargePhotoFileName]         [nvarchar](50) NULL,
		[ModifiedDate]               [datetime] NOT NULL,
		CONSTRAINT [PK_ProductPhoto_ProductPhotoID]
		PRIMARY KEY
		CLUSTERED
		([ProductPhotoID])
	ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [Production].[ProductPhoto]
	ADD
	CONSTRAINT [DF_ProductPhoto_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [Production].[ProductPhoto] SET (LOCK_ESCALATION = TABLE)
GO

-- Create Table [Production].[ProductModel]
Print 'Create Table [Production].[ProductModel]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [Production].[ProductModel] (
		[ProductModelID]         [int] IDENTITY(1, 1) NOT NULL,
		[Name]                   [dbo].[Name] NOT NULL,
		[CatalogDescription]     [xml](CONTENT [Production].[ProductDescriptionSchemaCollection]) NULL,
		[Instructions]           [xml](CONTENT [Production].[ManuInstructionsSchemaCollection]) NULL,
		[rowguid]                [uniqueidentifier] NOT NULL ROWGUIDCOL,
		[ModifiedDate]           [datetime] NOT NULL,
		CONSTRAINT [PK_ProductModel_ProductModelID]
		PRIMARY KEY
		CLUSTERED
		([ProductModelID])
	ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [Production].[ProductModel]
	ADD
	CONSTRAINT [DF_ProductModel_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [Production].[ProductModel]
	ADD
	CONSTRAINT [DF_ProductModel_rowguid]
	DEFAULT (newid()) FOR [rowguid]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_ProductModel_Name]
	ON [Production].[ProductModel] ([Name])
	ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_ProductModel_rowguid]
	ON [Production].[ProductModel] ([rowguid])
	ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE PRIMARY XML INDEX [PXML_ProductModel_CatalogDescription]
	ON [Production].[ProductModel] ([CatalogDescription])
GO
SET ANSI_PADDING ON
GO
CREATE PRIMARY XML INDEX [PXML_ProductModel_Instructions]
	ON [Production].[ProductModel] ([Instructions])
GO
ALTER TABLE [Production].[ProductModel] SET (LOCK_ESCALATION = TABLE)
GO

-- Create Table [Production].[ProductSubcategory]
Print 'Create Table [Production].[ProductSubcategory]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [Production].[ProductSubcategory] (
		[ProductSubcategoryID]     [int] IDENTITY(1, 1) NOT NULL,
		[ProductCategoryID]        [int] NOT NULL,
		[Name]                     [dbo].[Name] NOT NULL,
		[rowguid]                  [uniqueidentifier] NOT NULL ROWGUIDCOL,
		[ModifiedDate]             [datetime] NOT NULL,
		CONSTRAINT [PK_ProductSubcategory_ProductSubcategoryID]
		PRIMARY KEY
		CLUSTERED
		([ProductSubcategoryID])
	ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [Production].[ProductSubcategory]
	ADD
	CONSTRAINT [DF_ProductSubcategory_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [Production].[ProductSubcategory]
	ADD
	CONSTRAINT [DF_ProductSubcategory_rowguid]
	DEFAULT (newid()) FOR [rowguid]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_ProductSubcategory_Name]
	ON [Production].[ProductSubcategory] ([Name])
	ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_ProductSubcategory_rowguid]
	ON [Production].[ProductSubcategory] ([rowguid])
	ON [PRIMARY]
GO
ALTER TABLE [Production].[ProductSubcategory] SET (LOCK_ESCALATION = TABLE)
GO

-- Create Table [Production].[ProductCategory]
Print 'Create Table [Production].[ProductCategory]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [Production].[ProductCategory] (
		[ProductCategoryID]     [int] IDENTITY(1, 1) NOT NULL,
		[Name]                  [dbo].[Name] NOT NULL,
		[rowguid]               [uniqueidentifier] NOT NULL ROWGUIDCOL,
		[ModifiedDate]          [datetime] NOT NULL,
		CONSTRAINT [PK_ProductCategory_ProductCategoryID]
		PRIMARY KEY
		CLUSTERED
		([ProductCategoryID])
	ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [Production].[ProductCategory]
	ADD
	CONSTRAINT [DF_ProductCategory_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [Production].[ProductCategory]
	ADD
	CONSTRAINT [DF_ProductCategory_rowguid]
	DEFAULT (newid()) FOR [rowguid]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_ProductCategory_Name]
	ON [Production].[ProductCategory] ([Name])
	ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_ProductCategory_rowguid]
	ON [Production].[ProductCategory] ([rowguid])
	ON [PRIMARY]
GO
ALTER TABLE [Production].[ProductCategory] SET (LOCK_ESCALATION = TABLE)
GO

-- Create Procedure [dbo].[CHECKALLITEMS]
Print 'Create Procedure [dbo].[CHECKALLITEMS]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CHECKALLITEMS]
AS


SET NOCOUNT ON;
        DECLARE @T VARCHAR(MAX)
              DECLARE @TARGETDLGHANDLE UNIQUEIDENTIFIER
              DECLARE TEST_CURSOR CURSOR
                           FOR SELECT  CAST(ISNULL(i_itemc, ISNULL(I_ITEMP,ISNULL(I_ITEMG,ISNULL(I_ITEMV,AHZTTX)))) AS VARCHAR(MAX)) AS T
FROM DCCOMBINED.ICI 
LEFT JOIN DCCOMBINED.dc ON ici.DC = dc.dc_Id
LEFT JOIN DCCOMBINED.IGI ON I_ITEMC = I_ITEMG AND IGI.DC = ici.DC
LEFT JOIN DCCOMBINED.IVR ON I_ITEMC = I_ITEMV AND IVR.DC = ici.DC
LEFT JOIN DCCOMBINED.IPS ON I_ITEMC = I_ITEMP AND IPS.DC = ici.DC
LEFT JOIN DCCOMBINED.BIAHREP 
ON I_ITEMC = AHZTTX AND BIAHREP.DC = ici.DC
WHERE ici.dc = 3 AND (I_ITEMP IS NULL OR I_ITEMG IS NULL OR I_ITEMV IS NULL OR AHZTTX IS NULL OR I_ITEMC IS NULL)

    DECLARE @SB UNIQUEIDENTIFIER
    select @SB= service_broker_guid from master.sys.databases where name = DB_NAME()
    
              OPEN TEST_CURSOR
              FETCH NEXT FROM TEST_CURSOR INTO @T
              WHILE @@FETCH_STATUS = 0
              BEGIN
                     SET @TARGETDLGHANDLE = NEWID()
                     BEGIN DIALOG CONVERSATION @TargetDlgHandle
                                  FROM SERVICE [//BOPS/CHECKITEM]
                                  TO SERVICE '//BOPS/CHECKITEM', @SB
                                  ON CONTRACT [//EDB/InternalContract]
                                  WITH ENCRYPTION = OFF;
                                  SEND ON CONVERSATION @TargetDlgHandle
                                  MESSAGE TYPE [//EDB/InternalRequest] (@T);
                     --END
              FETCH NEXT FROM TEST_CURSOR INTO @T
              END
              CLOSE TEST_CURSOR
              DEALLOCATE TEST_CURSOR

GO
-- Create Foreign Key FK_ProductProductPhoto_Product_ProductID On ProductProductPhoto
Print 'Create Foreign Key FK_ProductProductPhoto_Product_ProductID On ProductProductPhoto'
GO
ALTER TABLE [Production].[ProductProductPhoto]
	WITH CHECK
	ADD CONSTRAINT [FK_ProductProductPhoto_Product_ProductID]
	FOREIGN KEY ([ProductID]) REFERENCES [Production].[Product] ([ProductID])
ALTER TABLE [Production].[ProductProductPhoto]
	CHECK CONSTRAINT [FK_ProductProductPhoto_Product_ProductID]

GO
-- Create Foreign Key FK_ProductProductPhoto_ProductPhoto_ProductPhotoID On ProductProductPhoto
Print 'Create Foreign Key FK_ProductProductPhoto_ProductPhoto_ProductPhotoID On ProductProductPhoto'
GO
ALTER TABLE [Production].[ProductProductPhoto]
	WITH CHECK
	ADD CONSTRAINT [FK_ProductProductPhoto_ProductPhoto_ProductPhotoID]
	FOREIGN KEY ([ProductPhotoID]) REFERENCES [Production].[ProductPhoto] ([ProductPhotoID])
ALTER TABLE [Production].[ProductProductPhoto]
	CHECK CONSTRAINT [FK_ProductProductPhoto_ProductPhoto_ProductPhotoID]

GO

-- Create Foreign Key FK_Product_ProductModel_ProductModelID On Product
Print 'Create Foreign Key FK_Product_ProductModel_ProductModelID On Product'
GO
ALTER TABLE [Production].[Product]
	WITH CHECK
	ADD CONSTRAINT [FK_Product_ProductModel_ProductModelID]
	FOREIGN KEY ([ProductModelID]) REFERENCES [Production].[ProductModel] ([ProductModelID])
ALTER TABLE [Production].[Product]
	CHECK CONSTRAINT [FK_Product_ProductModel_ProductModelID]

GO
-- Create Foreign Key FK_Product_ProductSubcategory_ProductSubcategoryID On Product
Print 'Create Foreign Key FK_Product_ProductSubcategory_ProductSubcategoryID On Product'
GO
ALTER TABLE [Production].[Product]
	WITH CHECK
	ADD CONSTRAINT [FK_Product_ProductSubcategory_ProductSubcategoryID]
	FOREIGN KEY ([ProductSubcategoryID]) REFERENCES [Production].[ProductSubcategory] ([ProductSubcategoryID])
ALTER TABLE [Production].[Product]
	CHECK CONSTRAINT [FK_Product_ProductSubcategory_ProductSubcategoryID]

GO
-- Create Foreign Key FK_Product_UnitMeasure_SizeUnitMeasureCode On Product
Print 'Create Foreign Key FK_Product_UnitMeasure_SizeUnitMeasureCode On Product'
GO
ALTER TABLE [Production].[Product]
	WITH CHECK
	ADD CONSTRAINT [FK_Product_UnitMeasure_SizeUnitMeasureCode]
	FOREIGN KEY ([SizeUnitMeasureCode]) REFERENCES [Production].[UnitMeasure] ([UnitMeasureCode])
ALTER TABLE [Production].[Product]
	CHECK CONSTRAINT [FK_Product_UnitMeasure_SizeUnitMeasureCode]

GO
-- Create Foreign Key FK_Product_UnitMeasure_WeightUnitMeasureCode On Product
Print 'Create Foreign Key FK_Product_UnitMeasure_WeightUnitMeasureCode On Product'
GO
ALTER TABLE [Production].[Product]
	WITH CHECK
	ADD CONSTRAINT [FK_Product_UnitMeasure_WeightUnitMeasureCode]
	FOREIGN KEY ([WeightUnitMeasureCode]) REFERENCES [Production].[UnitMeasure] ([UnitMeasureCode])
ALTER TABLE [Production].[Product]
	CHECK CONSTRAINT [FK_Product_UnitMeasure_WeightUnitMeasureCode]

GO

-- Create Foreign Key FK_ProductSubcategory_ProductCategory_ProductCategoryID On ProductSubcategory
Print 'Create Foreign Key FK_ProductSubcategory_ProductCategory_ProductCategoryID On ProductSubcategory'
GO
ALTER TABLE [Production].[ProductSubcategory]
	WITH CHECK
	ADD CONSTRAINT [FK_ProductSubcategory_ProductCategory_ProductCategoryID]
	FOREIGN KEY ([ProductCategoryID]) REFERENCES [Production].[ProductCategory] ([ProductCategoryID])
ALTER TABLE [Production].[ProductSubcategory]
	CHECK CONSTRAINT [FK_ProductSubcategory_ProductCategory_ProductCategoryID]

GO

-- COMMITTING TRANSACTION STRUCTURE
PRINT 'Committing transaction STRUCTURE'
IF @@TRANCOUNT>0
	COMMIT TRANSACTION _STRUCTURE_
GO

SET NOEXEC OFF
GO
