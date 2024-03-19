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

-- Fundraiser table
ALTER TABLE Fundraiser
ADD CONSTRAINT chk_fundraiser_funds_raised CHECK (FundsRaised >= 0);


-- Event table
ALTER TABLE Event
ADD CONSTRAINT chk_event_location_not_empty CHECK (Location IS NOT NULL AND Location <> '');


-- Campaign Table
ALTER TABLE Campaign
ADD CONSTRAINT chk_end_date_after_start_date CHECK (EndDate > StartDate);
