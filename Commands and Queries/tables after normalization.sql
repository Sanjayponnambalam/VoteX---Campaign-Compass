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
