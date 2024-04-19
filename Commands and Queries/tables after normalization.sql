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
