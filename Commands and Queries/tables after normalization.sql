-- See Project review - 4 report for vivid understanding of the code. Performed only for Campaign table.
-- 2 NF
-- Step 1: Create the Campaign table
CREATE TABLE CampaignDetails (
    CampaignID INT PRIMARY KEY,
    CampaignName VARCHAR(255),
    TargetAudience VARCHAR(50)
);

-- Step 2: Insert the values into the Campaign table
INSERT INTO CampaignDetails (CampaignID, CampaignName, TargetAudience)
VALUES
    (1, 'Political Rally', 'Youth'),
    (2, 'Community Outreach', 'General Public'),
    (3, 'Digital Media Campaign', 'Youth'),
    (4, 'Door-to-Door Canvassing', 'General Public'),
    (5, 'Town Hall Meetings', 'General Public'),
    (6, 'Fundraising Events', 'Donors'),
    (7, 'Volunteer Recruitment', 'General Public'),
    (8, 'Media Advertising', 'General Public'),
    (9, 'Policy Speeches', 'General Public'),
    (10, 'Voter Turnout Push', 'General Public');


-- 3NF
-- Second table
-- Create the campaigndates table
CREATE TABLE campaigndates (
    StartDate DATE,
    EndDate DATE
);

-- Insert the values into the campaigndates table
INSERT INTO campaigndates (StartDate, EndDate)
VALUES
    ('2024-03-01', '2024-05-01'),
    ('2024-04-15', '2024-06-15'),
    ('2024-05-10', '2024-07-10'),
    ('2024-06-20', '2024-08-20'),
    ('2024-07-25', '2024-09-25'),
    ('2024-08-30', '2024-10-30'),
    ('2024-09-15', '2024-11-15'),
    ('2024-10-20', '2024-12-20'),
    ('2024-11-05', '2025-01-05'),
    ('2024-12-10', '2025-02-10');

-- BCNF - already satisfied with superkey CampaignID

-- 4NF 

-- Create the CampaignStart table
CREATE TABLE CampaignStart (
    CampaignID INT,
    StartDate DATE
);

-- Insert values into the CampaignStart table
INSERT INTO CampaignStart (CampaignID, StartDate) VALUES (1, '2024-03-01');
INSERT INTO CampaignStart (CampaignID, StartDate) VALUES (2, '2024-04-15');
INSERT INTO CampaignStart (CampaignID, StartDate) VALUES (3, '2024-05-10');
INSERT INTO CampaignStart (CampaignID, StartDate) VALUES (4, '2024-06-20');
INSERT INTO CampaignStart (CampaignID, StartDate) VALUES (5, '2024-07-25');
INSERT INTO CampaignStart (CampaignID, StartDate) VALUES (6, '2024-08-30');
INSERT INTO CampaignStart (CampaignID, StartDate) VALUES (7, '2024-09-15');
INSERT INTO CampaignStart (CampaignID, StartDate) VALUES (8, '2024-10-20');
INSERT INTO CampaignStart (CampaignID, StartDate) VALUES (9, '2024-11-05');
INSERT INTO CampaignStart (CampaignID, StartDate) VALUES (10, '2024-12-10');
INSERT INTO CampaignStart (CampaignID, StartDate) VALUES (1, '2024-03-15');
INSERT INTO CampaignStart (CampaignID, StartDate) VALUES (1, '2024-03-20');
INSERT INTO CampaignStart (CampaignID, StartDate) VALUES (2, '2024-04-22');


-- 5NF - just split the resultant table of 4NF such that it can be retained back to original form using natural join (Joint Dependency).

