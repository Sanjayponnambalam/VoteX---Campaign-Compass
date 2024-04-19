-- Candidate table
ALTER TABLE Candidate
ADD CONSTRAINT chk_candidate_name_length CHECK (LENGTH(Name) <= 255);

-- Voter table
ALTER TABLE Voter
ADD CONSTRAINT chk_voter_name_length CHECK (LENGTH(Name) <= 100);

-- Constituency table
ALTER TABLE Constituency
ADD CONSTRAINT chk_constituency_name_length CHECK (LENGTH(Name) <= 100);

-- Volunteer table
ALTER TABLE Volunteer
ADD CONSTRAINT chk_volunteer_name_length CHECK (LENGTH(Name) <= 100);

-- Political Party table
ALTER TABLE PoliticalParty
ADD CONSTRAINT chk_party_name_length CHECK (LENGTH(Name) <= 100);

-- Donor table
ALTER TABLE Donor
ADD CONSTRAINT chk_donation_amount CHECK (DonationAmount >= 0);



-- volunteer name change
UPDATE volunteer
SET Name = 
    CASE 
        WHEN Name = 'Amit Kumar' THEN 'Adam'
        WHEN Name = 'Rahul Singh' THEN 'Ram Kumar'
        WHEN Name = 'Suresh Sharma' THEN 'suran'
        WHEN Name = 'Rajesh Reddy' THEN 'Rahim'
        WHEN Name = 'Praveen Joshi' THEN 'Deepak'
        WHEN Name = 'Meera Gupta' THEN 'Manish'
        ELSE Name
    END;


-- Candidate name change

UPDATE candidate
SET Name = 
    CASE 
        WHEN Name = 'Neha Sharma' THEN 'Aman Sharma'
        WHEN Name = 'Meera Gupta' THEN 'Meeran'
        WHEN Name = 'Praveen Joshi' THEN 'Adithya'
        WHEN Name = 'Anjali Das' THEN 'Arjun'
        ELSE Name
    END;



-- Fundraiser table
ALTER TABLE Fundraiser
ADD CONSTRAINT chk_fundraiser_funds_raised CHECK (FundsRaised >= 0);


-- Event table
ALTER TABLE Event
ADD CONSTRAINT chk_event_location_not_empty CHECK (Location IS NOT NULL AND Location <> '');


-- Campaign Table
ALTER TABLE Campaign
ADD CONSTRAINT chk_end_date_after_start_date CHECK (EndDate > StartDate);


-- on 20/03/24
-- Add ContactDetails column to PoliticalParty table
ALTER TABLE PoliticalParty ADD ContactDetails VARCHAR2(100);

-- Rename ContactNumber column to ContactDetails in PollingStation table
ALTER TABLE PollingStation RENAME COLUMN ContactNumber TO ContactDetails;


-- FROM normalization

ALTER TABLE Campaign
ADD TargetAudience VARCHAR(50);


-- Step 1: Add the new column to the Campaign table
ALTER TABLE Campaign
ADD TargetAudience VARCHAR(50);

-- Step 2: Update the newly added column with the provided values
UPDATE Campaign
SET TargetAudience = 'Youth, Elderly'
WHERE CampaignID = 1;

UPDATE Campaign
SET TargetAudience = 'General Public'
WHERE CampaignID IN (2, 4, 5, 7, 8, 9, 10);

UPDATE Campaign
SET TargetAudience = 'Donors'
WHERE CampaignID = 6;

-- Step 3: Add the new columns to the Campaign table
ALTER TABLE Campaign
ADD CampaignName VARCHAR(255),
ADD TargetAudience VARCHAR(255);

-- Step 4: Update the newly added columns with the provided values
UPDATE Campaign
SET CampaignName = CASE 
                        WHEN CampaignID = 1 THEN 'Political Rally'
                        WHEN CampaignID = 2 THEN 'Community Outreach'
                        WHEN CampaignID = 3 THEN 'Digital Media Campaign'
                        WHEN CampaignID = 4 THEN 'Door-to-Door Canvassing'
                        WHEN CampaignID = 5 THEN 'Town Hall Meetings'
                        WHEN CampaignID = 6 THEN 'Fundraising Events'
                        WHEN CampaignID = 7 THEN 'Volunteer Recruitment'
                        WHEN CampaignID = 8 THEN 'Media Advertising'
                        WHEN CampaignID = 9 THEN 'Policy Speeches'
                        WHEN CampaignID = 10 THEN 'Voter Turnout Push'
                    END,
    TargetAudience = CASE 
                        WHEN CampaignID IN (1, 3) THEN 'Youth, Elderly'
                        WHEN CampaignID IN (2, 4, 5, 7, 8, 9, 10) THEN 'General Public'
                        WHEN CampaignID = 6 THEN 'Donors'
                    END;
