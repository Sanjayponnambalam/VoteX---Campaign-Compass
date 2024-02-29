CREATE TABLE Candidate (
    CandidateID NUMBER PRIMARY KEY,
    Name VARCHAR2(255),
    PartyAffiliation VARCHAR2(100),
    CampaignPlatform VARCHAR2(255),
    ContactDetails VARCHAR2(255)
);

-- Voter table
CREATE TABLE Voter (
    VoterID INT PRIMARY KEY,
    Name VARCHAR2(100),
    Street VARCHAR2(100),
    City VARCHAR2(100),
    State VARCHAR2(50),
    ZipCode VARCHAR2(20),
    ContactDetails VARCHAR2(100)
);

-- Campaign table
CREATE TABLE Campaign (
    CampaignID INT PRIMARY KEY,
    CandidateID INT,
    StartDate DATE,
    EndDate DATE,
    Budget NUMBER,
    Description VARCHAR2(255),
    CONSTRAINT fk_candidate FOREIGN KEY (CandidateID) REFERENCES PoliticalParty(PartyID)
);

-- Constituency table
CREATE TABLE Constituency (
    ConstituencyID INT PRIMARY KEY,
    Name VARCHAR2(100),
    Region VARCHAR2(100)
);

-- Donor table
CREATE TABLE Donor (
    DonorID INT PRIMARY KEY,
    Name VARCHAR2(100),
    ContactDetails VARCHAR2(100),
    DonationAmount NUMBER,
    DonationDate DATE
);

-- Volunteer table
CREATE TABLE Volunteer (
    VolunteerID INT PRIMARY KEY,
    Name VARCHAR2(100),
    ContactDetails VARCHAR2(100)
);


-- Fundraiser table
CREATE TABLE Fundraiser (
    FundraiserID INT PRIMARY KEY,
    Name VARCHAR2(100),
    ContactDetails VARCHAR2(100),
    CampaignID INT,
    FundsRaised NUMBER,
    FundraiserDate DATE,
    CONSTRAINT fk_fundraiser_campaign FOREIGN KEY (CampaignID) REFERENCES Campaign(CampaignID)
);

-- Event table
CREATE TABLE Event (
    EventID INT PRIMARY KEY,
    Name VARCHAR2(100),
    EventDate DATE,
    Location VARCHAR2(100),
    CampaignID INT,
    CONSTRAINT fk_event_campaign FOREIGN KEY (CampaignID) REFERENCES Campaign(CampaignID)
);

-- Political Party table
CREATE TABLE PoliticalParty (
    PartyID INT PRIMARY KEY,
    Name VARCHAR2(100),
    Leader VARCHAR2(100),
    Ideology VARCHAR2(100)
);

-- Event table
CREATE TABLE Event (
    EventID INT PRIMARY KEY,
    Name VARCHAR2(100),
    EventDate DATE,
    Location VARCHAR2(100),
    CampaignID INT,
    CONSTRAINT fk_event_campaign FOREIGN KEY (CampaignID) REFERENCES Campaign(CampaignID)
);

-- Fundraiser table
CREATE TABLE Fundraiser (
    FundraiserID INT PRIMARY KEY,
    Name VARCHAR2(100),
    ContactDetails VARCHAR2(100),
    CampaignID INT,
    FundsRaised NUMBER,
    FundraiserDate DATE,
    CONSTRAINT fk_fundraiser_campaign FOREIGN KEY (CampaignID) REFERENCES Campaign(CampaignID)
);
