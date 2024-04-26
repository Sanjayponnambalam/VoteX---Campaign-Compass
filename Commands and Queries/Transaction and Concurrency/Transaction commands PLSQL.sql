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

--serialization example

VOTER TABLE 


DECLARE
    v_voter_id_1 VARCHAR2(50) := '1';
    v_name_1 VARCHAR2(100) := 'Suresh Sharma';
    v_street_1 VARCHAR2(100) := '123 Gandhi Road';
    v_city_1 VARCHAR2(100) := 'Delhi';
    v_state_1 VARCHAR2(100) := 'Delhi';
    v_zipcode_1 VARCHAR2(10) := '110001';
    v_contact_details_1 VARCHAR2(100) := 'suresh.sharma@example.com';

    -- Define a lock variable
    v_lock NUMBER;

    -- Define a variable to store the result of lock attempt
    v_lock_result NUMBER;
BEGIN
    -- Attempt to acquire an exclusive lock on a row in the Voter table
    BEGIN
        SELECT 1 INTO v_lock_result FROM dual WHERE NOT EXISTS (SELECT 1 FROM Voter WHERE VoterID = v_voter_id_1) FOR UPDATE NOWAIT;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            -- Handle the case when no row is found to lock
            v_lock_result := 0;
    END;

    -- If the lock attempt succeeds
    IF v_lock_result = 1 THEN
        -- Insert Voter 1
        manage_voter(v_voter_id_1, v_name_1, v_street_1, v_city_1, v_state_1, v_zipcode_1, v_contact_details_1, 'INSERT');

        -- Commit the transaction to release the lock
        COMMIT;
    ELSE
        -- If the lock attempt fails (i.e., another transaction is holding the lock)
        -- Print a message indicating that serialization is being enforced
        DBMS_OUTPUT.PUT_LINE('Serialization: Another transaction is currently modifying the Voter table. Please try again later.');
    END IF;
END;
/

-- END VOTER TABLE
