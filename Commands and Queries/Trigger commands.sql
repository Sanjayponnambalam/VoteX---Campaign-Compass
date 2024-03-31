-----
-- Trigger to update constituency region when name changes
CREATE OR REPLACE TRIGGER UpdateConstituencyRegion
BEFORE UPDATE OF Name ON Constituency
FOR EACH ROW
BEGIN
    IF :OLD.Name <> :NEW.Name THEN
        UPDATE Constituency SET Region = :NEW.Region WHERE ConstituencyID = :NEW.ConstituencyID;
    END IF;
END;
/
-----


----
-- Trigger to automatically update fundraiser date to current date
CREATE OR REPLACE TRIGGER UpdateFundraiserDate
BEFORE INSERT ON Fundraiser
FOR EACH ROW
BEGIN
    :NEW.FundraiserDate := SYSDATE;
END;
/
-----

-------
-- Trigger to enforce minimum donation amount for fundraisers
CREATE OR REPLACE TRIGGER CheckFundraiserDonation
BEFORE INSERT ON Fundraiser
FOR EACH ROW
BEGIN
    IF :NEW.FundsRaised < 1000 THEN
        RAISE_APPLICATION_ERROR(-20005, 'Minimum donation amount for fundraisers is 1000.');
    END IF;
END;
/
--------

--------
-- Trigger to automatically update volunteer contact details when inserted
CREATE OR REPLACE TRIGGER UpdateVolunteerContact
BEFORE INSERT ON Volunteer
FOR EACH ROW
BEGIN
    :NEW.ContactDetails := 'Contact details will be provided upon assignment.';
END;
/
-----------


---------
-- Trigger to update campaign budget when fundraiser funds raised change
CREATE OR REPLACE TRIGGER UpdateCampaignBudget
AFTER INSERT OR UPDATE ON Fundraiser
FOR EACH ROW
BEGIN
    UPDATE Campaign
    SET Budget = Budget + :NEW.FundsRaised
    WHERE CampaignID = :NEW.CampaignID;
END;
/
----------

----------
-- Trigger to ensure events cannot be scheduled on weekends
CREATE OR REPLACE TRIGGER CheckEventWeekend
BEFORE INSERT OR UPDATE ON Event
FOR EACH ROW
BEGIN
    IF TO_CHAR(:NEW.EventDate, 'D') IN (1, 7) THEN
        RAISE_APPLICATION_ERROR(-20008, 'Events cannot be scheduled on weekends.');
    END IF;
END;
/
--------------


-----------

-- Trigger to enforce maximum length for political party names
CREATE OR REPLACE TRIGGER CheckPoliticalPartyNameLength
BEFORE INSERT OR UPDATE ON PoliticalParty
FOR EACH ROW
BEGIN
    IF LENGTH(:NEW.Name) > 50 THEN
        RAISE_APPLICATION_ERROR(-20010, 'Political party name cannot exceed 50 characters.');
    END IF;
END;
/
----------------


-----------------
-- Trigger to update voter contact details when voter address changes
CREATE OR REPLACE TRIGGER UpdateVoterContactDetails
BEFORE UPDATE OF Street, City, State, ZipCode ON Voter
FOR EACH ROW
BEGIN
    :NEW.ContactDetails := :NEW.ContactDetails || ' - Updated Address';
END;
/
-------------

------------
-- Trigger to restrict insertion of polling stations outside working hours
CREATE OR REPLACE TRIGGER CheckPollingStationHours
BEFORE INSERT ON PollingStation
FOR EACH ROW
BEGIN
    IF TO_CHAR(:NEW.OpeningTime, 'HH24:MI') < '08:00' OR TO_CHAR(:NEW.ClosingTime, 'HH24:MI') > '18:00' THEN
        RAISE_APPLICATION_ERROR(-20011, 'Polling stations must operate between 8:00 AM and 6:00 PM.');
    END IF;
END;
/
--------------


-- Trigger to update constituency region when name changes
CREATE OR REPLACE TRIGGER UpdateConstituencyRegion
BEFORE UPDATE OF Name ON Constituency
FOR EACH ROW
BEGIN
    IF :OLD.Name <> :NEW.Name THEN
        UPDATE Constituency SET Region = :NEW.Region WHERE ConstituencyID = :NEW.ConstituencyID;
    END IF;
END;
/


i left here

-- Trigger to update candidate contact details when party affiliation changes
CREATE OR REPLACE TRIGGER UpdateCandidateContact
BEFORE UPDATE OF PartyAffiliation ON Candidate
FOR EACH ROW
BEGIN
    IF :OLD.PartyAffiliation <> :NEW.PartyAffiliation THEN
        UPDATE Candidate SET ContactDetails = :NEW.ContactDetails WHERE CandidateID = :NEW.CandidateID;
    END IF;
END;
/

-- Trigger to insert a default campaign platform for a new candidate
CREATE OR REPLACE TRIGGER InsertDefaultCampaignPlatform
BEFORE INSERT ON Candidate
FOR EACH ROW
BEGIN
    IF :NEW.CampaignPlatform IS NULL THEN
        :NEW.CampaignPlatform := 'Default Campaign Platform';
    END IF;
END;
/

-- Trigger to insert a default description for a new campaign
CREATE OR REPLACE TRIGGER InsertDefaultDescription
BEFORE INSERT ON Campaign
FOR EACH ROW
BEGIN
    IF :NEW.Description IS NULL THEN
        :NEW.Description := 'Default Campaign Description';
    END IF;
END;
/

-- Trigger to update volunteer contact details when name changes
CREATE OR REPLACE TRIGGER UpdateVolunteerContact
BEFORE UPDATE OF Name ON Volunteer
FOR EACH ROW
BEGIN
    IF :OLD.Name <> :NEW.Name THEN
        UPDATE Volunteer SET ContactDetails = :NEW.ContactDetails WHERE VolunteerID = :NEW.VolunteerID;
    END IF;
END;
/

-- Trigger to insert a default location for a new event
CREATE OR REPLACE TRIGGER InsertDefaultLocation
BEFORE INSERT ON Event
FOR EACH ROW
BEGIN
    IF :NEW.Location IS NULL THEN
        :NEW.Location := 'Default Event Location';
    END IF;
END;
/

-- Trigger to update fundraiser date when funds raised changes
CREATE OR REPLACE TRIGGER UpdateFundraiserDate
BEFORE UPDATE OF FundsRaised ON Fundraiser
FOR EACH ROW
BEGIN
    IF :OLD.FundsRaised <> :NEW.FundsRaised THEN
        UPDATE Fundraiser SET FundraiserDate = SYSDATE WHERE FundraiserID = :NEW.FundraiserID;
    END IF;
END;
/

-- Trigger to insert a default leader for a new political party
CREATE OR REPLACE TRIGGER InsertDefaultLeader
BEFORE INSERT ON PoliticalParty
FOR EACH ROW
BEGIN
    IF :NEW.Leader IS NULL THEN
        :NEW.Leader := 'Unknown Leader';
    END IF;
END;
/

-- Trigger to update polling station opening time when closing time changes
CREATE OR REPLACE TRIGGER UpdateOpeningTime
BEFORE UPDATE OF ClosingTime ON PollingStation
FOR EACH ROW
BEGIN
    IF :OLD.ClosingTime <> :NEW.ClosingTime THEN
        UPDATE PollingStation SET OpeningTime = :NEW.OpeningTime WHERE PollingStationID = :NEW.PollingStationID;
    END IF;
END;
/


-- Trigger to delete associated events when a campaign is deleted
CREATE OR REPLACE TRIGGER DeleteAssociatedEvents
BEFORE DELETE ON Campaign
FOR EACH ROW
BEGIN
    DELETE FROM Event WHERE Event.CampaignID = :OLD.CampaignID;
END;
/
