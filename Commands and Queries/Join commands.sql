--Join Campaign with Candidate to get Campaign details along with the Candidate's name:
SELECT Campaign.*, Candidate.Name AS CandidateName
FROM Campaign
JOIN Candidate ON Campaign.CandidateID = Candidate.CandidateID;

--Join Fundraiser with Campaign to get Fundraiser details along with the Campaign's start and end dates:
SELECT Fundraiser.*, Campaign.StartDate, Campaign.EndDate
FROM Fundraiser
JOIN Campaign ON Fundraiser.CampaignID = Campaign.CampaignID;

--Join Event with Campaign to get Event details along with the Campaign's budget:
SELECT Event.*, Campaign.Budget
FROM Event
JOIN Campaign ON Event.CampaignID = Campaign.CampaignID;


--Join Candidate with Constituency to get Candidate details along with the Constituency's region:
SELECT Candidate.*, Constituency.Region
FROM Candidate
JOIN Constituency ON Candidate.CandidateID = Constituency.ConstituencyID;


--Join Candidate with Political Party to get Candidate details along with Party's ideology:
SELECT Candidate.*, PoliticalParty.Ideology
FROM Candidate
JOIN PoliticalParty ON Candidate.CandidateID = PoliticalParty.PartyID;

--Join Voter with Constituency to get Voter details along with Constituency's name:
SELECT Voter.*, Constituency.Name AS ConstituencyName
FROM Voter
JOIN Constituency ON Voter.Address = Constituency.ConstituencyID;

--Join Fundraiser with Political Party to get Fundraiser details along with Party's contact details:
SELECT Fundraiser.*, PoliticalParty.ContactDetails
FROM Fundraiser
JOIN Campaign ON Fundraiser.CampaignID = Campaign.CampaignID
JOIN Candidate ON Campaign.CandidateID = Candidate.CandidateID
JOIN PoliticalParty ON Candidate.PartyAffiliation = PoliticalParty.PartyID;

--Join Fundraiser with Event to get Fundraiser details along with Event location and date:
SELECT Fundraiser.*, Event.Location, Event.EventDate
FROM Fundraiser
JOIN Event ON Fundraiser.CampaignID = Event.CampaignID;


--Join Event with Political Party to get Event details along with Party's name and ideology:
SELECT Event.*, PoliticalParty.Name AS PartyName, PoliticalParty.Ideology
FROM Event
JOIN Campaign ON Event.CampaignID = Campaign.CampaignID
JOIN Candidate ON Campaign.CandidateID = Candidate.CandidateID
JOIN PoliticalParty ON Candidate.PartyAffiliation = PoliticalParty.PartyID;


--Join Voter with Donor to get Voter details along with Donor's name and donation amount:
SELECT Voter.*, Donor.Name AS DonorName, Donor.DonationAmount
FROM Voter
JOIN Donor ON Voter.VoterID = Donor.DonorID;

--Left Join: Join Event with Fundraiser to get Event details along with Fundraiser's name and funds raised:

SELECT Event.*, Fundraiser.Name AS FundraiserName, Fundraiser.FundsRaised
FROM Event
LEFT JOIN Fundraiser ON Event.CampaignID = Fundraiser.CampaignID;

--Outer Join: Join Event with Fundraiser to get Event details along with Fundraiser's name and funds raised:

SELECT Event.*, Fundraiser.Name AS FundraiserName, Fundraiser.FundsRaised
FROM Event
LEFT JOIN Fundraiser ON Event.CampaignID = Fundraiser.CampaignID;


--Right Outer Join: Join Event with Fundraiser to get Event details along with Fundraiser's name and funds raised:
SELECT Event.*, Fundraiser.Name AS FundraiserName, Fundraiser.FundsRaised
FROM Event
RIGHT JOIN Fundraiser ON Event.CampaignID = Fundraiser.CampaignID;


--Right Outer Join: Join Event with Fundraiser to get Event details along with Fundraiser's name and funds raised:
SELECT Event.*, Fundraiser.Name AS FundraiserName, Fundraiser.FundsRaised
FROM Event
RIGHT JOIN Fundraiser ON Event.CampaignID = Fundraiser.CampaignID;


-- Retrieve Polling Station Details Along with the Name of the Constituency
SELECT PS.Name AS PollingStation_Name, PS.Location, PS.OpeningTime, PS.ClosingTime, C.Name AS Constituency_Name
FROM PollingStation PS
INNER JOIN Constituency C ON C.ConstituencyID = PS.ConstituencyID;

