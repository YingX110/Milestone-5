-- drop SCHEMA Company;

CREATE SCHEMA Company;

CREATE TABLE Company.DEPARTMENT
(Dname char(25),
Dnumber int,
PRIMARY KEY (Dnumber));

CREATE TABLE Company.SITE
(Mgr_ssn char(9),
SiteNumber varchar(25) NOT NULL,
PRIMARY KEY (SiteNumber));

CREATE TABLE Company.ORDERS
(    OrderNumber        varchar(25)        not null,
    CustomerId        varchar(25)            not null,
    DateReceived    date,
    DateReviewed    date,
    DateShipped        date,
    Reviewer_ssn    char(9),
	Discount		varchar(25),
    Approver_ssn    char(9),
    PRIMARY KEY (OrderNumber));

CREATE TABLE Company.EMPLOYEE 
(Fname varchar(25) not NULL,
Lname varchar(25) not NULL,
Ssn char(9) not NULL,
Bdate date not NULL,
Sex char(1) not NULL,
SiteNo varchar(25),
Dno int not NULL,
PRIMARY KEY (Ssn));

CREATE TABLE Company.ADDRESS
(Essn char(9),
Street varchar(50),
City varchar(50),
State char(2),
Zip char(5),
PRIMARY KEY (Essn));

CREATE TABLE Company.SUPERVISOR
(Super_ssn char(9),
SiteNo varchar(25) NOT NULL,
Dno int NOT NULL,
PRIMARY KEY (Super_ssn));

CREATE TABLE Company.MANUFACTURER
(MName varchar(25)    not null,
PartNo varchar(25),
PRIMARY KEY (MName));

CREATE TABLE Company.INVENTORY
(PartNo varchar(25),
ManufacturerName varchar(25),
PRIMARY KEY (ManufacturerName));

CREATE TABLE Company.PRODUCT
( ProductNo varchar(25) not null,
ProductName varchar(25) not null,
    PRIMARY KEY (ProductNo));
    
CREATE TABLE Company.ROUTING_SHEET
( RoutingID varchar(25) not null,
ProductNo varchar(25) not null,
	StepNo int not null,
    StartTime time    not null,
    EndTime time not null,
    Essn char(9) not null,
PRIMARY KEY (ProductNo));

CREATE TABLE Company.COMMISSION_WORKER
( Essn char(9) not null,
Commission double not null,
    SalesRegion varchar(25),
PRIMARY KEY (Essn));

CREATE TABLE Company.HOURLY_WORKER
( Essn char(9) not null,
ActualHours double,
    ExpectedHours double,
    Wage double not null,
PRIMARY KEY (Essn));

CREATE TABLE Company.SALARIED_WORKER
(    Essn char(9)    not null,
    Salary    double    not null,
    PRIMARY KEY (Essn));

CREATE TABLE Company.QUESTIONNAIRE
( CustomerId varchar(25) not null,
Essn char(9) not null,
    YearSent char(4) not null,
    Score1 int,
    Score2 int,
    Score3 int,
PRIMARY KEY (Essn));

CREATE TABLE Company.CUSTOMER
( Fname varchar(25) not null,
    Lname varchar(25) not null,
    CustomerId varchar(25) not null,
    SalesEssn char(9) not null,
    PRIMARY KEY (CustomerId));
    
CREATE TABLE Company.COMPLAINT
( CustomerId varchar(25) not null,
    OrderNo varchar(25),
    Discount varchar(25),
    Notes varchar(500) not null,
PRIMARY KEY (CustomerId, OrderNo));

CREATE TABLE Company.CONTACTS
( CustomerId varchar(25) not null,
Contact varchar(500),
PRIMARY KEY (CustomerId, Contact));

CREATE TABLE Company.DISCOUNT
(    Dcode            varchar(25)        not null,
    Ddescription        varchar(500)    not null,
    PRIMARY KEY (Dcode));

CREATE TABLE Company.QUANTITY
( OrderNo varchar(25) not null,
ProductNo varchar(25) not null,
    Quantity int not null,
PRIMARY KEY (OrderNo, ProductNo));

CREATE TABLE Company.INVOICE
( InvoiceNo varchar(25) not null,
Essn char(9) not null,
    CustomerId varchar(25) not null,
    Total double    not null,
    Balance double    not null,
PRIMARY KEY (InvoiceNo));

CREATE TABLE Company.DEPENDENT
(    Essn            char(9)                not null,
    DFname            varchar(25)            not null,
    DLname            varchar(25)            not null,
    Sex                char(1)                not null,
    Bdate            date                not null,
    Relationship    varchar(25)            not null,
    Dssn            char(9)                not null,
    PRIMARY KEY (Dssn));
    
CREATE TABLE Company.BENEFITS
(    Essn            char(9)                not null,
    InsuranceNo        varchar(25),
    SavingsNo        varchar(25),
    PRIMARY KEY (Essn));

CREATE TABLE Company.INSURANCE
(    InsuranceNo            varchar(25)            not null,
    HealthInsurance        varchar(25),
    DentalInsurance        varchar(25),
    LifeInsurance        varchar(25),
    VisionInsurance        varchar(25),
    PRIMARY KEY (InsuranceNo));

CREATE TABLE Company.DISABILITY
(    Essn        char(9)        not null,
    StartDate    date        not null,
    EndDate        date        not null,
    WorkRelated    bool        not null,
    PRIMARY KEY (Essn));
    
CREATE TABLE Company.CORPORATE_ADDRESS
(    SiteNumber        varchar(25)                not null,
    Street            varchar(50)        not null,
    City            varchar(25)        not null,
    State            char(2)            not null,
    Zip                char(5)            not null,
    PRIMARY KEY (SiteNumber));
    
CREATE TABLE Company.PART
(    PartNumber        varchar(25)        not null,
    PartName        varchar(25)        not null,
    PRIMARY KEY (PartNumber));
    
CREATE TABLE Company.BILL_OF_MATERIALS
(    PartNo            varchar(25)                not null,
    ProductNo        varchar(25)        not null,
    Quantity        int                not null,
    PRIMARY KEY (PartNo, ProductNo));

CREATE TABLE Company.WAREHOUSE
(    SiteNo        varchar(25)        not null,
    PartNo        varchar(25)        not null,
    Quantity    int        not null,
    ReorderPt    int        not null,
    PRIMARY KEY (SiteNo, PartNo));

