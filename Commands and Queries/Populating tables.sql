INSERT INTO Event (Name, EventDate, Location, CampaignID, EventID)
VALUES
    ('Election Campaign Rally', TO_DATE('2024-04-01', 'YYYY-MM-DD'), 'Shivaji Park, Mumbai', 1, 1),
    ('Health Camp', TO_DATE('2024-05-15', 'YYYY-MM-DD'), 'Ramlila Maidan, Delhi', 2, 2),
    ('Education Awareness Drive', TO_DATE('2024-06-20', 'YYYY-MM-DD'), 'Sabarmati Riverfront, Ahmedabad', 3, 3),
    ('Labour Union Meeting', TO_DATE('2024-07-10', 'YYYY-MM-DD'), 'Esplanade, Kolkata', 4, 4),
    ('Farmers Protest March', TO_DATE('2024-08-25', 'YYYY-MM-DD'), 'Majestic Circle, Bangalore', 5, 5),
    ('Youth Employment Seminar', TO_DATE('2024-09-30', 'YYYY-MM-DD'), 'Tank Bund, Hyderabad', 6, 6),
    ('Environmental Clean-up Drive', TO_DATE('2024-10-15', 'YYYY-MM-DD'), 'Marina Beach, Chennai', 7, 7),
    ('Women Empowerment Conference', TO_DATE('2024-11-20', 'YYYY-MM-DD'), 'Fort Kochi, Kochi', 8, 8),
    ('Street Play on Civic Sense', TO_DATE('2024-12-05', 'YYYY-MM-DD'), 'FC Road, Pune', 9, 9),
    ('Elderly Care Workshop', TO_DATE('2025-01-10', 'YYYY-MM-DD'), 'Hawa Mahal, Jaipur', 10, 10);


-- Populate Donor table
INSERT INTO Donor (Name, ContactDetails, DonationAmount, DonationDate, DonorID)
VALUES
    ('Ramesh Patel', 'ramesh.patel@example.com', 5000, TO_DATE('2024-05-10', 'YYYY-MM-DD'), 1),
    ('Suman Singh', 'suman.singh@example.com', 10000, TO_DATE('2024-06-20', 'YYYY-MM-DD'), 2),
    ('Alok Kumar', 'alok.kumar@example.com', 7000, TO_DATE('2024-04-15', 'YYYY-MM-DD'), 3),
    ('Meera Sharma', 'meera.sharma@example.com', 12000, TO_DATE('2024-03-05', 'YYYY-MM-DD'), 4),
    ('Sandeep Gupta', 'sandeep.gupta@example.com', 8000, TO_DATE('2024-07-25', 'YYYY-MM-DD'), 5),
    ('Neha Verma', 'neha.verma@example.com', 15000, TO_DATE('2024-08-30', 'YYYY-MM-DD'), 6),
    ('Rajesh Reddy', 'rajesh.reddy@example.com', 2000, TO_DATE('2024-09-12', 'YYYY-MM-DD'), 7),
    ('Anjali Das', 'anjali.das@example.com', 3000, TO_DATE('2024-05-28', 'YYYY-MM-DD'), 8),
    ('Praveen Joshi', 'praveen.joshi@example.com', 6000, TO_DATE('2024-06-03', 'YYYY-MM-DD'), 9),
    ('Pooja Patel', 'pooja.patel@example.com', 4000, TO_DATE('2024-04-20', 'YYYY-MM-DD'), 10);


INSERT INTO Fundraiser (Name, ContactDetails, CampaignID, FundsRaised, FundraiserDate, FundraiserID)
VALUES
    ('Charity Gala for Education', 'charity.edu@example.com', 1, 20000, TO_DATE('2024-05-15', 'YYYY-MM-DD'), 1),
    ('Medical Camp Fundraiser', 'medical.camp@example.com', 2, 30000, TO_DATE('2024-06-25', 'YYYY-MM-DD'), 2),
    ('Anti-Corruption Drive Fundraiser', 'anticorruption.drive@example.com', 3, 25000, TO_DATE('2024-07-10', 'YYYY-MM-DD'), 3),
    ('Labor Union Support Event', 'labor.union@example.com', 4, 35000, TO_DATE('2024-08-05', 'YYYY-MM-DD'), 4),
    ('Farmers Relief Fund', 'farmers.relief@example.com', 5, 40000, TO_DATE('2024-09-20', 'YYYY-MM-DD'), 5),
    ('Youth Empowerment Seminar', 'youth.empowerment@example.com', 6, 28000, TO_DATE('2024-10-10', 'YYYY-MM-DD'), 6),
    ('Environment Conservation Dinner', 'environment.dinner@example.com', 7, 32000, TO_DATE('2024-11-15', 'YYYY-MM-DD'), 7),
    ('Women''s Day Fundraiser', 'womens.day@example.com', 8, 30000, TO_DATE('2024-12-01', 'YYYY-MM-DD'), 8),
    ('Elderly Care Charity Auction', 'elderly.care@example.com', 9, 35000, TO_DATE('2024-12-25', 'YYYY-MM-DD'), 9),
    ('Civic Sense Awareness Fundraiser', 'civic.sense@example.com', 10, 40000, TO_DATE('2025-01-05', 'YYYY-MM-DD'), 10);


-- Populate Political Party table
INSERT INTO PoliticalParty (PartyID, Name, Leader, Ideology)
VALUES
    (1, 'Bharatiya Janata Party', 'Narendra Modi', 'Hindutva, Nationalism'),
    (2, 'Indian National Congress', 'Sonia Gandhi', 'Social democracy, Secularism'),
    (3, 'Aam Aadmi Party', 'Arvind Kejriwal', 'Anti-corruption, Populism'),
    (4, 'Communist Party of India', 'D. Raja', 'Marxism, Secularism'),
    (5, 'Bahujan Samaj Party', 'Mayawati', 'Dalit empowerment, Social justice'),
    (6, 'Samajwadi Party', 'Akhilesh Yadav', 'Socialism, Secularism'),
    (7, 'Telugu Desam Party', 'N. Chandrababu Naidu', 'Regionalism, Telugu pride'),
    (8, 'Trinamool Congress', 'Mamata Banerjee', 'Regionalism, Secularism'),
    (9, 'Shiv Sena', 'Uddhav Thackeray', 'Hindutva, Marathi pride'),
    (10, 'Rashtriya Janata Dal', 'Tejashwi Yadav', 'Social justice, Secularism');

INSERT INTO Campaign (CampaignID, CandidateID, StartDate, EndDate, Budget, Description)
VALUES
    (1, 1, TO_DATE('2024-03-01', 'YYYY-MM-DD'), TO_DATE('2024-05-01', 'YYYY-MM-DD'), 500000, 'Political rally for the upcoming elections'),
    (2, 2, TO_DATE('2024-04-15', 'YYYY-MM-DD'), TO_DATE('2024-06-15', 'YYYY-MM-DD'), 700000, 'Community outreach program to engage voters'),
    (3, 3, TO_DATE('2024-05-10', 'YYYY-MM-DD'), TO_DATE('2024-07-10', 'YYYY-MM-DD'), 600000, 'Digital media campaign targeting youth voters'),
    (4, 4, TO_DATE('2024-06-20', 'YYYY-MM-DD'), TO_DATE('2024-08-20', 'YYYY-MM-DD'), 800000, 'Door-to-door canvassing in local neighborhoods'),
    (5, 5, TO_DATE('2024-07-25', 'YYYY-MM-DD'), TO_DATE('2024-09-25', 'YYYY-MM-DD'), 900000, 'Town hall meetings to address citizen concerns'),
    (6, 6, TO_DATE('2024-08-30', 'YYYY-MM-DD'), TO_DATE('2024-10-30', 'YYYY-MM-DD'), 750000, 'Fundraising events to support campaign initiatives'),
    (7, 7, TO_DATE('2024-09-15', 'YYYY-MM-DD'), TO_DATE('2024-11-15', 'YYYY-MM-DD'), 850000, 'Volunteer recruitment drives for grassroots efforts'),
    (8, 8, TO_DATE('2024-10-20', 'YYYY-MM-DD'), TO_DATE('2024-12-20', 'YYYY-MM-DD'), 950000, 'Media advertising blitz to increase candidate visibility'),
    (9, 9, TO_DATE('2024-11-05', 'YYYY-MM-DD'), TO_DATE('2025-01-05', 'YYYY-MM-DD'), 700000, 'Policy speeches and debates to showcase candidate platform'),
    (10, 10, TO_DATE('2024-12-10', 'YYYY-MM-DD'), TO_DATE('2025-02-10', 'YYYY-MM-DD'), 600000, 'Final push for voter turnout on election day');


INSERT INTO Candidate (Name, PartyAffiliation, CampaignPlatform, ContactDetails, CandidateID)
VALUES
    ('Rajesh Kumar', 'Indian National Congress', 'Education reform and job creation', 'rajesh.kumar@example.com', 1),
    ('Priya Singh', 'Bharatiya Janata Party', 'Infrastructure development and national security', 'priya.singh@example.com', 2),
    ('Amit Patel', 'Aam Aadmi Party', 'Anti-corruption and healthcare access', 'amit.patel@example.com', 3),
    ('Neha Sharma', 'Samajwadi Party', 'Social welfare programs and women empowerment', 'neha.sharma@example.com', 4),
    ('Sanjay Verma', 'Bahujan Samaj Party', 'Dalit rights and social justice', 'sanjay.verma@example.com', 5),
    ('Kiran Reddy', 'Telugu Desam Party', 'Regional development and farmer support', 'kiran.reddy@example.com', 6),
    ('Anjali Das', 'Trinamool Congress', 'Secularism and minority rights', 'anjali.das@example.com', 7),
    ('Praveen Joshi', 'Shiv Sena', 'Youth empowerment and urban infrastructure', 'praveen.joshi@example.com', 8),
    ('Manoj Tiwari', 'Communist Party of India', 'Labour rights and environmental conservation', 'manoj.tiwari@example.com', 9),
    ('Meera Gupta', 'Rashtriya Janata Dal', 'Social justice and economic equality', 'meera.gupta@example.com', 10);


-- Populate Constituency table
INSERT INTO Constituency (ConstituencyID, Name, Region)
VALUES
    (1, 'North Delhi', 'North'),
    (2, 'South Delhi', 'South'),
    (3, 'East Delhi', 'East'),
    (4, 'West Delhi', 'West'),
    (5, 'Central Delhi', 'Central'),
    (6, 'Mumbai North', 'North'),
    (7, 'Mumbai South', 'South'),
    (8, 'Mumbai East', 'East'),
    (9, 'Mumbai West', 'West'),
    (10, 'Mumbai Central', 'Central');





INSERT INTO Voter (Name, Street, City, State, ZipCode, ContactDetails, VoterID)
VALUES
    ('Suresh Sharma', '123 Gandhi Road', 'Delhi', 'Delhi', '110001', 'suresh.sharma@example.com', 1),
    ('Anita Verma', '456 Nehru Street', 'Mumbai', 'Maharashtra', '400001', 'anita.verma@example.com', 2),
    ('Rahul Singh', '789 Patel Nagar', 'Bangalore', 'Karnataka', '560001', 'rahul.singh@example.com', 3),
    ('Priya Patel', '321 Gandhi Nagar', 'Chennai', 'Tamil Nadu', '600001', 'priya.patel@example.com', 4),
    ('Amit Kumar', '654 Nehru Road', 'Kolkata', 'West Bengal', '700001', 'amit.kumar@example.com', 5),
    ('Neha Sharma', '987 Bose Lane', 'Hyderabad', 'Telangana', '500001', 'neha.sharma@example.com', 6),
    ('Rajesh Reddy', '234 Rao Street', 'Pune', 'Maharashtra', '411001', 'rajesh.reddy@example.com', 7),
    ('Anjali Das', '567 Gandhi Nagar', 'Ahmedabad', 'Gujarat', '380001', 'anjali.das@example.com', 8),
    ('Praveen Joshi', '890 Nehru Road', 'Jaipur', 'Rajasthan', '302001', 'praveen.joshi@example.com', 9),
    ('Meera Gupta', '432 Bose Lane', 'Lucknow', 'Uttar Pradesh', '226001', 'meera.gupta@example.com', 10);


-- Populate Volunteer table
INSERT INTO Volunteer (Name, ContactDetails, VolunteerID)
VALUES
    ('Amit Kumar', 'amit.kumar@example.com', 1),
    ('Priya Patel', 'priya.patel@example.com', 2),
    ('Rahul Singh', 'rahul.singh@example.com', 3),
    ('Anita Verma', 'anita.verma@example.com', 4),
    ('Suresh Sharma', 'suresh.sharma@example.com', 5),
    ('Neha Sharma', 'neha.sharma@example.com', 6),
    ('Rajesh Reddy', 'rajesh.reddy@example.com', 7),
    ('Anjali Das', 'anjali.das@example.com', 8),
    ('Praveen Joshi', 'praveen.joshi@example.com', 9),
    ('Meera Gupta', 'meera.gupta@example.com', 10);


-- Populate PollingStation table
INSERT INTO PollingStation (Name, Location, OpeningTime, ClosingTime, ContactDetails, ConstituencyID, PollingStationID)
VALUES
    ('Gandhipur', '123 Gandhi Road', TO_TIMESTAMP('07:00:00', 'HH24:MI:SS'), TO_TIMESTAMP('19:00:00', 'HH24:MI:SS'), '011-1234567', 1,  1),
    ('Nehrupur', '456 Nehru Street', TO_TIMESTAMP('07:30:00', 'HH24:MI:SS'), TO_TIMESTAMP('19:30:00', 'HH24:MI:SS'), '022-2345678', 2,  2),
    ('Patel Nagar', '789 Patel Nagar', TO_TIMESTAMP('08:00:00', 'HH24:MI:SS'), TO_TIMESTAMP('20:00:00', 'HH24:MI:SS'), '080-3456789', 3, 3),
    ('Gandhi Nagar', '321 Gandhi Nagar', TO_TIMESTAMP('08:30:00', 'HH24:MI:SS'), TO_TIMESTAMP('20:30:00', 'HH24:MI:SS'), '044-4567890', 4, 4),
    ('Nehru Road', '654 Nehru Road', TO_TIMESTAMP('09:00:00', 'HH24:MI:SS'), TO_TIMESTAMP('21:00:00', 'HH24:MI:SS'), '033-5678901', 5, 5),
    ('Bose Lane', '987 Bose Lane', TO_TIMESTAMP('09:30:00', 'HH24:MI:SS'), TO_TIMESTAMP('21:30:00', 'HH24:MI:SS'), '040-6789012', 6,6),
    ('Rao Street', '234 Rao Street', TO_TIMESTAMP('10:00:00', 'HH24:MI:SS'), TO_TIMESTAMP('22:00:00', 'HH24:MI:SS'), '020-7890123', 7,7),
    ('Gandhi bazar', '567 Gandhi Nagar', TO_TIMESTAMP('10:30:00', 'HH24:MI:SS'), TO_TIMESTAMP('22:30:00', 'HH24:MI:SS'), '079-8901234', 8, 8),
    ('Nehru lane', '890 Nehru Road', TO_TIMESTAMP('11:00:00', 'HH24:MI:SS'), TO_TIMESTAMP('23:00:00', 'HH24:MI:SS'), '0141-9012345', 9, 9),
    ('Bosepur', '432 Bose Lane', TO_TIMESTAMP('11:30:00', 'HH24:MI:SS'), TO_TIMESTAMP('23:30:00', 'HH24:MI:SS'), '0522-0123456', 10,10);



-- updating contactdetails

UPDATE PoliticalParty
SET ContactDetails = CASE Name
    WHEN 'Bharatiya Janata Party' THEN 'contact@bjp.com'
    WHEN 'Indian National Congress' THEN 'info@congress.com'
    WHEN 'Aam Aadmi Party' THEN 'support@aamaadmi.org'
    WHEN 'Communist Party of India' THEN 'info@cpim.org'
    WHEN 'Bahujan Samaj Party' THEN 'contact@bspindia.org'
    WHEN 'Samajwadi Party' THEN 'info@samajwadiparty.in'
    WHEN 'Telugu Desam Party' THEN 'info@telugudesam.org'
    WHEN 'Trinamool Congress' THEN 'contact@aitmc.org'
    WHEN 'Shiv Sena' THEN 'support@shivsena.org'
    WHEN 'Rashtriya Janata Dal' THEN 'contact@rjd.org'
END;
