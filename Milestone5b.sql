ALTER table Company.EMPLOYEE add constraint
employee_SiteNo foreign key (SiteNo)
references Company.SITE (SiteNumber)
on delete cascade
on update cascade;

ALTER table Company.EMPLOYEE add constraint
employee_dno foreign key (Dno)
references Company.DEPARTMENT (Dnumber)
on delete cascade
on update cascade;

ALTER table Company.EMPLOYEE add constraint
employee_ssn2 unique (Ssn);

ALTER table Company.CORPORATE_ADDRESS add constraint
site_site_no foreign key (SiteNumber)
references Company.SITE (SiteNumber)
on delete cascade
on update cascade;

ALTER table Company.SUPERVISOR add constraint
supervisor_ssn foreign key (Super_ssn)
references Company.EMPLOYEE (Ssn)
on delete cascade;

ALTER table Company.SUPERVISOR add constraint
supervisor_ssn_site foreign key (SiteNo)
references Company.SITE (SiteNumber)
on delete cascade
on update cascade;

ALTER table Company.SUPERVISOR add constraint
supervisor_ssn_dept foreign key (Dno)
references Company.DEPARTMENT (Dnumber)
on delete cascade
on update cascade;

ALTER table Company.MANUFACTURER add constraint
manufacturer_Pno foreign key (PartNo)
references Company.PART (PartNumber)
on delete cascade
on update cascade;

ALTER TABLE Company.ROUTING_SHEET add constraint
routing_sheet_prod_no foreign key (ProductNo)
    references Company.PRODUCT (ProductNo)
    on delete no action
    on update cascade;

ALTER TABLE Company.COMMISSION_WORKER add constraint
commission_worker_essn foreign key (Essn)
    references Company.EMPLOYEE (Ssn)
    on delete cascade;

ALTER TABLE Company.HOURLY_WORKER add constraint
hourly_worker_essn foreign key (Essn)
    references Company.EMPLOYEE (Ssn)
    on delete cascade;

ALTER TABLE Company.QUESTIONNAIRE add constraint
questionnaire_customer_id foreign key (CustomerId)
    references Company.CUSTOMER (CustomerId)
    on delete no action;

ALTER TABLE Company.QUESTIONNAIRE add constraint
questionnaire_essn foreign key (Essn)
    references Company.EMPLOYEE (Ssn)
    on delete no action
    on update cascade;

ALTER TABLE Company.CUSTOMER add constraint
customer_sales_person foreign key (SalesEssn)
    references Company.COMMISSION_WORKER (Essn)
    on delete no action;

ALTER TABLE Company.COMPLAINT add constraint
complaint_customer_id foreign key (CustomerId)
    references Company.CUSTOMER (CustomerId)
    on delete no action;

ALTER TABLE Company.COMPLAINT add constraint
complaint_order_no foreign key (OrderNo)
    references Company.ORDERS (OrderNumber)
    on delete no action;
    
ALTER TABLE Company.COMPLAINT add constraint
complaint_disct_code foreign key (Discount)
    references Company.DISCOUNT (Dcode)
    on delete no action
    on update cascade;

ALTER TABLE Company.ORDERS add constraint
order_customer_id foreign key (CustomerId)
    references Company.CUSTOMER (CustomerId)
    on delete no action
    on update cascade;

ALTER TABLE Company.ORDERS add constraint
order_reviewer_ssn foreign key (Reviewer_ssn)
    references Company.EMPLOYEE (Ssn)
    on delete no action
    on update cascade;

ALTER TABLE Company.ORDERS add constraint
order_approver_ssn foreign key (Approver_ssn)
    references Company.EMPLOYEE (Ssn)
    on delete no action
    on update cascade;

ALTER TABLE Company.INVOICE add constraint
invoice_essn foreign key (Essn)
    references Company.EMPLOYEE (Ssn)
    on delete no action
    on update cascade;

ALTER TABLE Company.INVOICE add constraint
invoice_customer_id foreign key (CustomerId)
    references Company.CUSTOMER (CustomerId)
    on delete no action
    on update cascade; 

ALTER TABLE Company.CONTACTS add constraint
contacts_customer_id foreign key (CustomerId)
    references Company.CUSTOMER (CustomerId)
    on delete no action;

ALTER TABLE Company.QUANTITY add constraint
quantity_order_no foreign key (OrderNo)
    references Company.ORDERS (OrderNumber)
    on delete no action;

ALTER TABLE Company.QUANTITY add constraint
quantity_product_no foreign key (ProductNo)
    references Company.PRODUCT (ProductNo)
    on delete no action;

ALTER TABLE Company.DEPENDENT add constraint
    dep_emp_ssn foreign key (Essn)
    references Company.Employee (Ssn)
    on delete cascade;
    
ALTER TABLE Company.Benefits add constraint
    emp_ben_essn foreign key (Essn)
    references Company.Employee (Ssn)
    on delete cascade;
    
ALTER TABLE Company.Benefits add constraint
    emp_ben_ins foreign key (InsuranceNo)
    references Company.Insurance (InsuranceNo)
    on delete no action
    on update cascade;
    
ALTER TABLE Company.Disability add constraint
    enp_dis_key foreign key (Essn)
    references Company.Employee (Ssn)
    on delete cascade;
    
ALTER TABLE Company.Corporate_Address add constraint
    cor_add_key foreign key (SiteNumber)
    references Company.Site (SiteNumber)
    on delete cascade;

ALTER TABLE Company.BILL_OF_MATERIALS add constraint
    bil_mat_part foreign key (PartNo)
    references Company.PART (PartNumber)
    on delete no action;
    
ALTER TABLE Company.BILL_OF_MATERIALS add constraint
    bil_mat_prod foreign key (ProductNo)
    references Company.PRODUCT (ProductNo)
    on delete no action;

ALTER TABLE Company.SALARIED_WORKER add constraint
    sal_wor_ssn foreign key (Essn)
    references Company.EMPLOYEE (Ssn)
    on delete cascade;
    
ALTER TABLE Company.WAREHOUSE add constraint
    war_sit_no foreign key (SiteNo)
    references Company.SITE (SiteNumber)
    on delete cascade;
    
ALTER TABLE Company.WAREHOUSE add constraint
    war_pt_no foreign key (PartNo)
    references Company.PART (PartNumber)
    on delete no action;



ALTER TABLE Company.EMPLOYEE add constraint
    emp_ssn_ch check
    (Ssn NOT LIKE '%[^0-9]%');
    
ALTER TABLE Company.EMPLOYEE add constraint
    emp_sex check
    (Sex in ('M', 'F'));
-- ALTER TABLE Company.EMPLOYEE add constraint
--     emp_bday check
--     (Bdate > '1871-01-01');

ALTER TABLE Company.DEPENDENT add constraint
    dep_sex check
    (Sex in ('M', 'F'));
    
ALTER TABLE Company.DEPENDENT add constraint
    dep_ssn check
    (Dssn NOT LIKE '%[^0-9]%');
    
-- ALTER TABLE Company.DEPENDENT add constraint
--     dep_bday check
--     (Bdate > 1871-01-01);
    
ALTER TABLE Company.ADDRESS add constraint
    add_str check
    (Street NOT LIKE '%[A-Z][a-z][0-9]%');
    
ALTER TABLE Company.ADDRESS add constraint
    add_city check
    (City NOT LIKE '%[A-Z][a-z][0-9]%');
    
ALTER TABLE Company.ADDRESS add constraint
    add_state check
    (State NOT LIKE '%[A-Z]%');
ALTER TABLE Company.ADDRESS add constraint
    add_zip check
    (Zip NOT LIKE '%[^0-9]%');
    
ALTER TABLE Company.Disability add constraint
    dis_dates check
    (StartDate < EndDate);
    
ALTER TABLE Company.WAREHOUSE add constraint
    war_re_pt check
    (ReorderPt >= 0);
ALTER TABLE Company.WAREHOUSE add constraint
    war_quantity check
    (Quantity >= 0);

ALTER TABLE Company.CORPORATE_ADDRESS add constraint
    corp_str check
    (Street NOT LIKE '%[A-Z][a-z][0-9]%');
ALTER TABLE Company.CORPORATE_ADDRESS add constraint
    corp_city check
    (City NOT LIKE '%[A-Z][a-z][0-9]%');
ALTER TABLE Company.CORPORATE_ADDRESS add constraint
    corp_state check
    (State NOT LIKE '%[A-Z]%');
ALTER TABLE Company.CORPORATE_ADDRESS add constraint
    corp_zip check
    (Zip NOT LIKE '%[^0-9]%');
    
ALTER TABLE Company.SALARIED_WORKER add constraint
    sal_wrkr_sal check
    (Salary >= 0);
    
ALTER TABLE Company.COMMISSION_WORKER add constraint
    com_wrkr_com check
    (Commission >= 0);
    
ALTER TABLE Company.HOURLY_WORKER add constraint
    hrly_wrkr_act check
    (ActualHours >= 0);
ALTER TABLE Company.HOURLY_WORKER add constraint
    hrly_wrkr_exp check
    (ExpectedHours between 0 and 40);
ALTER TABLE Company.HOURLY_WORKER add constraint
    hrly_wrkr_wag check
    (Wage >= 7.25);
    
ALTER TABLE Company.QUESTIONNAIRE add constraint
    ques_yr check
    (YearSent NOT LIKE '%[^0-9]%');
ALTER TABLE Company.QUESTIONNAIRE add constraint
    ques_sc1 check
    (Score1 NOT LIKE '%[^0-9]%' or null);
ALTER TABLE Company.QUESTIONNAIRE add constraint
    ques_sc2 check
    (Score2 NOT LIKE '%[^0-9]%' or null);
ALTER TABLE Company.QUESTIONNAIRE add constraint
    ques_sc3 check
    (Score3 NOT LIKE '%[^0-9]%' or null);
    
ALTER TABLE Company.ORDERS add constraint
    ord_date_rec check
    ((DateReceived <= DateReviewed) or null);
ALTER TABLE Company.ORDERS add constraint
    ord_date_rev check
    ((DateReviewed <= DateShipped) or null);
    
ALTER TABLE Company.INVOICE add constraint
    inv_tot check
    (Total >= 0);
ALTER TABLE Company.INVOICE add constraint
    inv_bal check
    (Balance >= 0);
    
ALTER TABLE Company.QUANTITY add constraint
    qua_qua check
    (Quantity >= 0);
    
ALTER TABLE Company.ROUTING_SHEET add constraint
    rou_she_tim check
    (StartTime <= EndTime);

ALTER TABLE Company.WAREHOUSE
    ALTER Quantity SET DEFAULT 0;
ALTER TABLE Company.WAREHOUSE
    ALTER ReorderPt SET DEFAULT 0;
ALTER TABLE Company.COMMISSION_WORKER
    ALTER Commission SET DEFAULT 0;
ALTER TABLE Company.HOURLY_WORKER
    ALTER ExpectedHours SET DEFAULT 40;
ALTER TABLE Company.HOURLY_WORKER
    ALTER ActualHours SET DEFAULT 0;
ALTER TABLE Company.HOURLY_WORKER
    ALTER Wage SET DEFAULT 7.25;

