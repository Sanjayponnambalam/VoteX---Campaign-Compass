--- ----- CURSOR COMMANDS ---- 



-- Cursor to retrieve candidate names and their campaign platforms
DECLARE
    CURSOR CandidateCursor IS
        SELECT Name, CampaignPlatform
        FROM Candidate;
BEGIN
    FOR CandidateRec IN CandidateCursor LOOP
        DBMS_OUTPUT.PUT_LINE('Candidate: ' || CandidateRec.Name || ', Campaign Platform: ' || CandidateRec.CampaignPlatform);
    END LOOP;
END;
/


-- Cursor to calculate total funds raised by fundraisers
DECLARE
    TotalFunds NUMBER := 0;
BEGIN
    FOR FundraiserRec IN (SELECT FundsRaised FROM Fundraiser) LOOP
        TotalFunds := TotalFunds + FundraiserRec.FundsRaised;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('Total Funds Raised: ' || TotalFunds);
END;
/


-- Cursor to list event names and their locations
DECLARE
    CURSOR EventCursor IS
        SELECT Name, Location
        FROM Event;
BEGIN
    FOR EventRec IN EventCursor LOOP
        DBMS_OUTPUT.PUT_LINE('Event: ' || EventRec.Name || ', Location: ' || EventRec.Location);
    END LOOP;
END;
/


-- Cursor to display voter names and addresses
DECLARE
    CURSOR VoterCursor IS
        SELECT Name, Address
        FROM Voter;
BEGIN
    FOR VoterRec IN VoterCursor LOOP
        DBMS_OUTPUT.PUT_LINE('Voter: ' || VoterRec.Name || ', Address: ' || VoterRec.Address);
    END LOOP;
END;
/


-- Cursor to retrieve political party names and their leaders
DECLARE
    CURSOR PartyCursor IS
        SELECT Name, Leader
        FROM PoliticalParty;
BEGIN
    FOR PartyRec IN PartyCursor LOOP
        DBMS_OUTPUT.PUT_LINE('Party: ' || PartyRec.Name || ', Leader: ' || PartyRec.Leader);
    END LOOP;
END;
/


-- Cursor to display volunteer names and contact details
DECLARE
    CURSOR VolunteerCursor IS
        SELECT Name, ContactDetails
        FROM Volunteer;
BEGIN
    FOR VolunteerRec IN VolunteerCursor LOOP
        DBMS_OUTPUT.PUT_LINE('Volunteer: ' || VolunteerRec.Name || ', Contact: ' || VolunteerRec.ContactDetails);
    END LOOP;
END;
/


-- Cursor to retrieve constituency names and their regions
DECLARE
    CURSOR ConstituencyCursor IS
        SELECT Name, Region
        FROM Constituency;
BEGIN
    FOR ConstituencyRec IN ConstituencyCursor LOOP
        DBMS_OUTPUT.PUT_LINE('Constituency: ' || ConstituencyRec.Name || ', Region: ' || ConstituencyRec.Region);
    END LOOP;
END;
/



-- Cursor to list polling station names and their locations
DECLARE
    CURSOR PollingStationCursor IS
        SELECT Name, Location
        FROM PollingStation;
BEGIN
    FOR PollingStationRec IN PollingStationCursor LOOP
        DBMS_OUTPUT.PUT_LINE('Polling Station: ' || PollingStationRec.Name || ', Location: ' || PollingStationRec.Location);
    END LOOP;
END;
/


-- Cursor to display campaign IDs and their descriptions
DECLARE
    CURSOR CampaignCursor IS
        SELECT CampaignID, Description
        FROM Campaign;
BEGIN
    FOR CampaignRec IN CampaignCursor LOOP
        DBMS_OUTPUT.PUT_LINE('Campaign ID: ' || CampaignRec.CampaignID || ', Description: ' || CampaignRec.Description);
    END LOOP;
END;
/





-- Cursor to retrieve event names and their dates
DECLARE
    CURSOR EventCursor IS
        SELECT Name, EventDate
        FROM Event;
BEGIN
    FOR EventRec IN EventCursor LOOP
        DBMS_OUTPUT.PUT_LINE('Event: ' || EventRec.Name || ', Date: ' || EventRec.EventDate);
    END LOOP;
END;
/

-- number of polling stations
DECLARE
    totalPollingStations NUMBER := 0;
BEGIN
    -- Cursor to retrieve the count of polling stations
    FOR PollingStationRec IN (SELECT COUNT(*) AS StationCount FROM PollingStation) LOOP
        totalPollingStations := PollingStationRec.StationCount;
    END LOOP;

    -- Display the total number of polling stations
    DBMS_OUTPUT.PUT_LINE('Total number of polling stations: ' || totalPollingStations);
END;
/



-- Cursor to list fundraiser names and their campaigns
DECLARE
    CURSOR FundraiserCampaignCursor IS
        SELECT f.Name AS FundraiserName, c.Description AS CampaignDescription
        FROM Fundraiser f
        JOIN Campaign c ON f.CampaignID = c.CampaignID;
BEGIN
    FOR FundraiserCampaignRec IN FundraiserCampaignCursor LOOP
        DBMS_OUTPUT.PUT_LINE('Fundraiser: ' || FundraiserCampaignRec.FundraiserName || ', Campaign: ' || FundraiserCampaignRec.CampaignDescription);
    END LOOP;
END;
/


-- Cursor to display political party names and their ideologies
DECLARE
    CURSOR PartyIdeologyCursor IS
        SELECT Name, Ideology
        FROM PoliticalParty;
BEGIN
    FOR PartyIdeologyRec IN PartyIdeologyCursor LOOP
        DBMS_OUTPUT.PUT_LINE('Party: ' || PartyIdeologyRec.Name || ', Ideology: ' || PartyIdeologyRec.Ideology);
    END LOOP;
END;
/


-- Cursor to calculate total funds raised by each fundraiser
DECLARE
    CURSOR FundraiserFundsCursor IS
        SELECT FundraiserID, SUM(FundsRaised) AS TotalFunds
        FROM Fundraiser
        GROUP BY FundraiserID;
BEGIN
    FOR FundraiserFundsRec IN FundraiserFundsCursor LOOP
        DBMS_OUTPUT.PUT_LINE('Fundraiser ID: ' || FundraiserFundsRec.FundraiserID || ', Total Funds Raised: ' || FundraiserFundsRec.TotalFunds);
    END LOOP;
END;
/



-- Cursor to display campaign IDs and their start dates
DECLARE
    CURSOR CampaignStartDateCursor IS
        SELECT CampaignID, StartDate
        FROM Campaign;
BEGIN
    FOR CampaignStartDateRec IN CampaignStartDateCursor LOOP
        DBMS_OUTPUT.PUT_LINE('Campaign ID: ' || CampaignStartDateRec.CampaignID || ', Start Date: ' || CampaignStartDateRec.StartDate);
    END LOOP;
END;
/


-- Cursor to retrieve Constituency details
DECLARE
    CURSOR ConstituencyCursor IS
        SELECT ConstituencyID, Name, Region
        FROM Constituency;
BEGIN
    -- Loop through each row in the cursor
    FOR ConstituencyRec IN ConstituencyCursor LOOP
        -- Output Constituency details
        DBMS_OUTPUT.PUT_LINE('Constituency ID: ' || ConstituencyRec.ConstituencyID || ', Name: ' || ConstituencyRec.Name || ', Region: ' || ConstituencyRec.Region);
    END LOOP;
END;
/


-- Cursor to retrieve Volunteer information
DECLARE
    CURSOR VolunteerCursor IS
        SELECT VolunteerID, Name, ContactDetails
        FROM Volunteer;
BEGIN
    -- Loop through each row in the cursor
    FOR VolunteerRec IN VolunteerCursor LOOP
        -- Output Volunteer information
        DBMS_OUTPUT.PUT_LINE('Volunteer ID: ' || VolunteerRec.VolunteerID || ', Name: ' || VolunteerRec.Name || ', Contact Details: ' || VolunteerRec.ContactDetails);
    END LOOP;
END;
/


-- Cursor to retrieve Fundraiser details
DECLARE
    CURSOR FundraiserCursor IS
        SELECT FundraiserID, Name, ContactDetails, CampaignID, FundsRaised, FundraiserDate
        FROM Fundraiser;
BEGIN
    -- Loop through each row in the cursor
    FOR FundraiserRec IN FundraiserCursor LOOP
        -- Output Fundraiser details
        DBMS_OUTPUT.PUT_LINE('Fundraiser ID: ' || FundraiserRec.FundraiserID || ', Name: ' || FundraiserRec.Name || ', Contact Details: ' || FundraiserRec.ContactDetails || ', Campaign ID: ' || FundraiserRec.CampaignID || ', Funds Raised: ' || FundraiserRec.FundsRaised || ', Fundraiser Date: ' || FundraiserRec.FundraiserDate);
    END LOOP;
END;
/


-- Cursor to retrieve Event information
DECLARE
    CURSOR EventCursor IS
        SELECT EventID, Name, EventDate, Location, CampaignID
        FROM Event;
BEGIN
    -- Loop through each row in the cursor
    FOR EventRec IN EventCursor LOOP
        -- Output Event details
        DBMS_OUTPUT.PUT_LINE('Event ID: ' || EventRec.EventID || ', Name: ' || EventRec.Name || ', Event Date: ' || EventRec.EventDate || ', Location: ' || EventRec.Location || ', Campaign ID: ' || EventRec.CampaignID);
    END LOOP;
END;
/


