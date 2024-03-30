
-- Create a view to retrieve polling station details with opening and closing times
CREATE VIEW PollingStationDetailsView AS
SELECT PS.Name AS PollingStation_Name, PS.Location, PS.OpeningTime, PS.ClosingTime
FROM PollingStation PS;


-- Create a view to retrieve campaigns along with their start and end dates
CREATE VIEW CampaignDatesView AS
SELECT Description AS Campaign_Description, StartDate, EndDate
FROM Campaign;


-- Create a view to list constituencies and their regions
CREATE VIEW ConstituencyRegionView AS
SELECT Name AS Constituency_Name, Region
FROM Constituency;


-- Create a view to list political parties along with their leaders
CREATE VIEW PoliticalPartyLeadersView AS
SELECT Name AS Party_Name, Leader
FROM PoliticalParty;


-- Create a view to retrieve candidate names and their party affiliations
CREATE VIEW CandidatePartyView AS
SELECT Name AS Candidate_Name, PartyAffiliation
FROM Candidate;



-- Create a view to list events along with their locations
CREATE VIEW EventLocationView AS
SELECT Name AS Event_Name, Location
FROM Event;


-- Create a view to retrieve events along with their corresponding campaign descriptions
CREATE VIEW EventCampaignDescriptionView AS
SELECT E.Name AS Event_Name, C.Description AS Campaign_Description
FROM Event E
INNER JOIN Campaign C ON E.CampaignID = C.CampaignID;


-- Create a view to list polling stations and their opening/closing times
CREATE VIEW PollingStationTimesView AS
SELECT Name AS PollingStation_Name, OpeningTime, ClosingTime
FROM PollingStation;


-- Create a view to retrieve donors along with their contact details
CREATE VIEW DonorContactDetailsView AS
SELECT Name AS Donor_Name, ContactDetails
FROM Donor;


-- This view provides details of all candidates.
CREATE VIEW CandidateDetails AS
SELECT CandidateID, Name, PartyAffiliation, CampaignPlatform, ContactDetails
FROM Candidate;

-- This view displays voter names and addresses.
CREATE VIEW VoterAddresses AS
SELECT VoterID, Name, Street, City, State, ZipCode, ContactDetails
FROM Voter;

-- This view shows information about all campaigns.
CREATE VIEW CampaignInfo AS
SELECT CampaignID, StartDate, EndDate, Budget, Description
FROM Campaign;

-- This view provides details of all donors.
CREATE VIEW DonorDetails AS
SELECT DonorID, Name, ContactDetails, DonationAmount, DonationDate
FROM Donor;

-- This view lists contact details of volunteers.
CREATE VIEW VolunteerContacts AS
SELECT VolunteerID, Name, ContactDetails
FROM Volunteer;

-- This view displays information about all fundraisers.
CREATE VIEW FundraiserInfo AS
SELECT FundraiserID, Name, ContactDetails, CampaignID, FundsRaised, FundraiserDate
FROM Fundraiser;

-- This view provides details of all events.
CREATE VIEW EventDetails AS
SELECT EventID, Name, EventDate, Location, CampaignID
FROM Event;

-- This view lists contact details of political parties.
CREATE VIEW PartyContacts AS
SELECT PartyID, Name, Leader, Ideology, ContactDetails
FROM PoliticalParty;

-- This view displays information about all polling stations.
CREATE VIEW PollingStationInfo AS
SELECT PollingStationID, Name, Location, OpeningTime, ClosingTime, ConstituencyID
FROM PollingStation;

-- This view provides details of all constituencies.
CREATE VIEW ConstituencyDetails AS
SELECT ConstituencyID, Name, Region
FROM Constituency;

-- This view summarizes the total donations made by each donor.
CREATE VIEW DonationSummary AS
SELECT Donor.Name AS DonorName, SUM(DonationAmount) AS TotalDonation
FROM Donor
GROUP BY Donor.Name;

