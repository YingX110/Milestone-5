INSERT INTO Company.SITE(Mgr_ssn, SiteNumber)
    VALUES
    ('213456789', '20'),
    ('777777777', '12');
    
INSERT INTO Company.DEPARTMENT(Dname, Dnumber)
    VALUES
    ('Sale', '4'),
    ('Warehouse','2');

INSERT INTO Company.EMPLOYEE (Fname, Lname, Ssn, Bdate, Sex, SiteNo, Dno)
	VALUES
    ('Jim', 'Halpert', '123456789', 09/20/1987, 'M', '20', '4'),
    ('Rachel', 'White', '986745231', 08/01/1992, 'F', '12', '2'),
    ('Philip', 'Fry', '213456789', 06/17/1985, 'M', '20', '4');

    
INSERT INTO Company.HOURLY_WORKER (Essn, ActualHours, ExpectedHours, Wage)
	VALUES
    ('986745231', '36', '40', '18.00');

INSERT INTO Company.SUPERVISOR (Super_ssn, SiteNo, Dno)
    VALUES
    ('213456789', '20', '4');

INSERT INTO Company.ADDRESS (Essn, Street, City, State, Zip)
    VALUES
    ('123456789', '1998 N High St', 'Columbus', 'OH', '43210');

INSERT INTO Company.DEPENDENT (Essn, DFname, DLname, Sex, Bdate, Relationship, Dssn)
    VALUES
    ('123456789', 'Mary', 'Halpert', 'F', 05/27/2015, 'Daughter', '223456789');


INSERT INTO Company.PART (PartNumber, PartName)
    VALUES
    ('101000', 'PVC Tube');

INSERT INTO Company.MANUFACTURER (MName, PartNo)
    VALUES
    ('THC', '101000');

INSERT INTO Company.PRODUCT (ProductNo, ProductName)
    VALUES
    ('212000','Vacuum Pump');

INSERT INTO Company.BILL_OF_MATERIALS (PartNo, Quantity, ProductNo)
    VALUES
    ('101000','2','212000');

INSERT INTO Company.INSURANCE (InsuranceNo, HealthInsurance, DentalInsurance, LifeInsurance, VisionInsurance)
        VALUES
    ('9080706', '1111112', '1111113', '1111114', '1111115');

INSERT INTO Company.BENEFITS (Essn, InsuranceNo, SavingsNo)
    VALUES
    ('123456789', '9080706', '11223344');
    
INSERT INTO Company.DISABILITY (Essn, StartDate, EndDate, WorkRelated)
    VALUES
    ('123456789', STR_TO_DATE('09-22-2002', '%m-%d-%Y'), STR_TO_DATE('10-02-2002', '%m-%d-%Y'), true);
    

INSERT INTO Company.CORPORATE_ADDRESS (SiteNumber, Street, City, State, Zip)
    VALUES
    ('20', '2065 W High St', 'Columbus', 'OH', '43202');

INSERT INTO Company.COMMISSION_WORKER (Essn, Commission, SalesRegion)
    VALUES
    ('123456789', '5.42', '10');

INSERT INTO Company.WAREHOUSE (SiteNo, PartNo, Quantity, ReorderPt)
    VALUES
    ('20', '101000', 1, 200);

INSERT INTO Company.CUSTOMER (Fname, Lname, CustomerId, SalesEssn)
    VALUES
    ('Martha', 'Smith', '555555555', '123456789');

INSERT INTO Company.QUESTIONNAIRE (CustomerId, Essn, YearSent, Score1, Score2, Score3)
    VALUES
    ('555555555', '986745231', '2008', 6, 7, 10);

INSERT INTO Company.DISCOUNT (Dcode, Ddescription)
    VALUES
    ('15', 'Late');

INSERT INTO Company.ORDERS (OrderNumber, CustomerId, DateReceived, DateReviewed, DateShipped, Reviewer_ssn, Discount, Approver_ssn)
    VALUES
    ('1', '555555555', 08/09/2008, 08/10/2008, 08/10/2008, '986745231', '15', '123456789');
    
INSERT INTO Company.COMPLAINT (CustomerId, OrderNo, Discount, Notes)
    VALUES
    ('555555555', '1', '15', 'Received Late');
    
INSERT INTO Company.INVOICE (InvoiceNo, Essn, CustomerId, Total, Balance)
    VALUES
    ('101010', '123456789', '555555555', 3204.32, 1800.92);

INSERT INTO Company.CONTACTS (CustomerId, Contact)
    VALUES
    ('555555555', '123-456-7890');
    
INSERT INTO Company.ROUTING_SHEET (RoutingID, ProductNo, StepNo, StartTime, EndTime, Essn)
    VALUES
    ('45678910', '212000', 1, 12, 13, '888888888');