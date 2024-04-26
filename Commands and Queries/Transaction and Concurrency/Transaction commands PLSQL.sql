-- Voter Table Transactions
CREATE OR REPLACE PROCEDURE insert_voter (
    p_voter_id IN VARCHAR2,
    p_name IN VARCHAR2,
    p_street IN VARCHAR2,
    p_city IN VARCHAR2,
    p_state IN VARCHAR2,
    p_zipcode IN VARCHAR2,
    p_contact_details IN VARCHAR2
)
AS
BEGIN
    INSERT INTO Voter (VoterID, Name, Street, City, State, ZipCode, ContactDetails)
    VALUES (p_voter_id, p_name, p_street, p_city, p_state, p_zipcode, p_contact_details);
    COMMIT;
END insert_voter;

CREATE OR REPLACE PROCEDURE update_voter_name (
    p_voter_id IN VARCHAR2,
    p_new_name IN VARCHAR2
)
AS
BEGIN
    UPDATE Voter
    SET Name = p_new_name
    WHERE VoterID = p_voter_id;
    COMMIT;
END update_voter_name;

CREATE OR REPLACE PROCEDURE delete_voter (
    p_voter_id IN VARCHAR2
)
AS
BEGIN
    DELETE FROM Voter
    WHERE VoterID = p_voter_id;
    COMMIT;
END delete_voter;
