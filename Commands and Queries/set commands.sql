
--- Just check --
-- 1.Check Constraint: Ensure that the donation amount in the Donor table is positive.
ALTER TABLE Donor ADD CONSTRAINT chk_donation_amount CHECK (DonationAmount > 0);

--2.Check Constraint: Make sure the budget in the Campaign table is non-negative.
ALTER TABLE Campaign ADD CONSTRAINT chk_budget CHECK (Budget >= 0);

--3.Unique Constraint: Ensure that each Voter has a unique VoterID.
ALTER TABLE Voter ADD CONSTRAINT uniq_voter_id UNIQUE (VoterID);

--4.Foreign Key Constraint: Ensure that every Campaign has a valid CandidateID.
ALTER TABLE Campaign ADD CONSTRAINT fk_candidate_campaign FOREIGN KEY (CandidateID) REFERENCES Candidate(CandidateID);

--5.Not Null Constraint: Ensure that the Voter's name is always provided.
ALTER TABLE Voter MODIFY Name VARCHAR2(100) NOT NULL;

--6.Not Null Constraint: Make sure that the Campaign's start date is always -provided.
ALTER TABLE Campaign MODIFY StartDate DATE NOT NULL;

--7.Constraint Query: Retrieve all voters who reside in the city of Mumbai.
SELECT * FROM Voter WHERE City = 'Mumbai';

------------------------- 10 IS THERE

--  SET COMMANDS ----

-- SET Union - Retrieve the names of all voters and donors.

SELECT Name FROM Voter
UNION
SELECT Name FROM Donor;

-- Union All Retrieve the names of all voters and donors, including duplicates.

SELECT Name FROM Voter
UNION ALL
SELECT Name FROM Donor;

-- Intersect - Find the names of voters who are also donors.
SELECT Name FROM Voter
INTERSECT
SELECT Name FROM Donor;


-- -Minus - Find the names of voters who are not donors.
SELECT Name FROM Voter
MINUS
SELECT Name FROM Donor;

-- Exists - Check if there are any donors who are also voters.
SELECT CandidateID, Name, PartyAffiliation
FROM Candidate outer
WHERE EXISTS
(SELECT 1
FROM Candidate inner
WHERE inner.CandidateID = outer.CandidateID
AND inner.Name <> outer.Name
AND inner.PartyAffiliation = outer.PartyAffiliation
AND inner.CampaignPlatform = outer.CampaignPlatform
AND inner.ContactDetails = outer.ContactDetails);


-- Not Exists --- Select candidate attributes where there does not exist another candidate with the same PartyAffiliation, CampaignPlatform, and ContactDetails but a different CandidateID
SELECT CandidateID, Name, PartyAffiliation, CampaignPlatform, ContactDetails
FROM Candidate outer
-- Check if there does not exist another candidate satisfying the specified conditions
WHERE NOT EXISTS
    (
    -- Subquery to find candidates with the same PartyAffiliation, CampaignPlatform, and ContactDetails but a different CandidateID
    SELECT 1
    FROM Candidate inner
    WHERE inner.PartyAffiliation = outer.PartyAffiliation
    AND inner.CampaignPlatform = outer.CampaignPlatform
    AND inner.ContactDetails = outer.ContactDetails
    AND inner.CandidateID <> outer.CandidateID
    );


-- In - Retrieve the names of donors who donated more than 5000 rupees.
SELECT Name FROM Donor WHERE DonationAmount > 5000;

-- Not In - Retrieve the names of donors who donated less than or equal to 5000 rupees.
SELECT Name FROM Donor WHERE DonationAmount <= 5000;

/////
-- Except - Find the names of donors who are not also volunteers.
SELECT Name FROM Donor
EXCEPT
SELECT Name FROM Volunteer;

-- Distinct - Retrieve unique names of donors.
SELECT DISTINCT Name FROM Donor;

-- Retrieve unique regions represented in the Constituency table.
SELECT DISTINCT Region
FROM Constituency;

-- Find Common Volunteers Between Different Campaigns:This query will identify volunteers who are assigned to multiple campaigns by finding the intersection of the sets of volunteers for different campaigns.

SELECT Name
FROM Volunteer
WHERE AssignedCampaignID IN (SELECT CampaignID FROM Campaign WHERE Description = 'Campaign 1')
INTERSECT
SELECT Name
FROM Volunteer
WHERE AssignedCampaignID IN (SELECT CampaignID FROM Campaign WHERE Description = 'Campaign 2');

-- Retrieve Names of Donors Who Are Also Volunteers: This query will retrieve the names of donors who are also volunteers by finding the intersection of the sets of names from the Donor and Volunteer tables.

SELECT Name
FROM Donor
INTERSECT
SELECT Name
FROM Volunteer;

-- Union of voter names and donor names
SELECT Name FROM Voter
UNION
SELECT Name FROM Donor;


-- Intersection of candidate names and volunteer names
SELECT Name FROM Candidate
INTERSECT
SELECT Name FROM Volunteer;


-- Union All of political party names and event names
SELECT Name FROM PoliticalParty
UNION ALL
SELECT Name FROM Event;


-- Except of fundraiser names and voter names
SELECT Name FROM Fundraiser
EXCEPT
SELECT Name FROM Voter;


-- Union of constituency names and polling station names
SELECT Name FROM Constituency
UNION
SELECT Name FROM PollingStation;


-- Intersection of event locations and polling station locations
SELECT Location FROM Event
INTERSECT
SELECT Location FROM PollingStation;


-- Union All of candidate names and volunteer names
SELECT Name FROM Candidate
UNION ALL
SELECT Name FROM Volunteer;




