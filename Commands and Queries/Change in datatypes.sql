-- Candidate table
-- 1. Add new column for CandidateID
ALTER TABLE Candidate ADD NewCandidateID VARCHAR2(10);

-- 2. Update new column
UPDATE Candidate SET NewCandidateID = TO_CHAR(CandidateID);

-- 3. Drop existing primary key column
ALTER TABLE Candidate DROP COLUMN CandidateID;

-- 4. Rename new column
ALTER TABLE Candidate RENAME COLUMN NewCandidateID TO CandidateID;

-- Update foreign key reference
ALTER TABLE Campaign MODIFY CandidateID VARCHAR2(10);

-- Voter table
-- 1. Add new column for VoterID
ALTER TABLE Voter ADD NewVoterID VARCHAR2(10);

-- 2. Update new column
UPDATE Voter SET NewVoterID = TO_CHAR(VoterID);

-- 3. Drop existing primary key column
ALTER TABLE Voter DROP COLUMN VoterID;

-- 4. Rename new column
ALTER TABLE Voter RENAME COLUMN NewVoterID TO VoterID;

-- Campaign table
-- 1. Add new column for CampaignID
ALTER TABLE Campaign ADD NewCampaignID VARCHAR2(10);

-- 2. Update new column
UPDATE Campaign SET NewCampaignID = TO_CHAR(CampaignID);

-- 3. Drop existing primary key column
ALTER TABLE Campaign DROP COLUMN CampaignID;

-- 4. Rename new column
ALTER TABLE Campaign RENAME COLUMN NewCampaignID TO CampaignID;

-- Update foreign key references
ALTER TABLE Event MODIFY CampaignID VARCHAR2(10);
ALTER TABLE Fundraiser MODIFY CampaignID VARCHAR2(10);

-- Constituency table
-- 1. Add new column for ConstituencyID
ALTER TABLE Constituency ADD NewConstituencyID VARCHAR2(10);

-- 2. Update new column
UPDATE Constituency SET NewConstituencyID = TO_CHAR(ConstituencyID);

-- 3. Drop existing primary key column
ALTER TABLE Constituency DROP COLUMN ConstituencyID;

-- 4. Rename new column
ALTER TABLE Constituency RENAME COLUMN NewConstituencyID TO ConstituencyID;

-- Update foreign key reference
ALTER TABLE PollingStation MODIFY ConstituencyID VARCHAR2(10);











-- Event table
-- 1. Add new column for EventID
ALTER TABLE Event ADD NewEventID VARCHAR2(10);

-- 2. Update new column
UPDATE Event SET NewEventID = TO_CHAR(EventID);

-- 3. Drop existing primary key column
ALTER TABLE Event DROP COLUMN EventID;

-- 4. Rename new column
ALTER TABLE Event RENAME COLUMN NewEventID TO EventID;

-- Update foreign key reference
ALTER TABLE Event MODIFY CampaignID VARCHAR2(10);

-- Donor table
-- 1. Add new column for DonorID
ALTER TABLE Donor ADD NewDonorID VARCHAR2(10);

-- 2. Update new column
UPDATE Donor SET NewDonorID = TO_CHAR(DonorID);

-- 3. Drop existing primary key column
ALTER TABLE Donor DROP COLUMN DonorID;

-- 4. Rename new column
ALTER TABLE Donor RENAME COLUMN NewDonorID TO DonorID;

-- Fundraiser table
-- 1. Add new column for FundraiserID
ALTER TABLE Fundraiser ADD NewFundraiserID VARCHAR2(10);

-- 2. Update new column
UPDATE Fundraiser SET NewFundraiserID = TO_CHAR(FundraiserID);

-- 3. Drop existing primary key column
ALTER TABLE Fundraiser DROP COLUMN FundraiserID;

-- 4. Rename new column
ALTER TABLE Fundraiser RENAME COLUMN NewFundraiserID TO FundraiserID;

-- Update foreign key references
ALTER TABLE Fundraiser MODIFY CampaignID VARCHAR2(10);

-- Political Party table
-- 1. Add new column for PartyID
ALTER TABLE PoliticalParty ADD NewPartyID VARCHAR2(10);

-- 2. Update new column
UPDATE PoliticalParty SET NewPartyID = TO_CHAR(PartyID);

-- 3. Drop existing primary key column
ALTER TABLE PoliticalParty DROP COLUMN PartyID;

-- 4. Rename new column
ALTER TABLE PoliticalParty RENAME COLUMN NewPartyID TO PartyID;

-- Volunteer table
-- 1. Add new column for VolunteerID
ALTER TABLE Volunteer ADD NewVolunteerID VARCHAR2(10);

-- 2. Update new column
UPDATE Volunteer SET NewVolunteerID = TO_CHAR(VolunteerID);

-- 3. Drop existing primary key column
ALTER TABLE Volunteer DROP COLUMN VolunteerID;

-- 4. Rename new column
ALTER TABLE Volunteer RENAME COLUMN NewVolunteerID TO VolunteerID;





-- Polling Station table
-- 1. Add new column for PollingStationID
ALTER TABLE PollingStation ADD NewPollingStationID VARCHAR2(10);

-- 2. Update new column
UPDATE PollingStation SET NewPollingStationID = TO_CHAR(PollingStationID);

-- 3. Drop existing primary key column
ALTER TABLE PollingStation DROP COLUMN PollingStationID;

-- 4. Rename new column
ALTER TABLE PollingStation RENAME COLUMN NewPollingStationID TO PollingStationID;

-- Update foreign key reference
ALTER TABLE PollingStation MODIFY ConstituencyID VARCHAR2(10);
