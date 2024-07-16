# VoteX - Campaign Compass

A database management system for managing a political organization and track down its activities of its members, events and overall management.

# Setting up

- Project done with Amazon Web Service Relational Database service (RDS) for cloud server.

# IDE Used

- Oracle SQL Developer and connected with RDS through endpoint connection.

# Database Tables

## Candidate

### Attributes : 
- CandidateID (Primary Key)
- Name (Single Value)
- PartyAffiliation (Single Value)
- CampaignPlatform (Single Value)
- ContactDetails (Single Value)


## Voter

### Attributes:
- VoterID (Primary Key)
- Name (Single Value)
- Address (Composite Attribute)
- Street
- City
- State
- ZipCode
- ContactDetails (Single Value)


## Campaign

### Attributes:
- CampaignID (Primary Key)
- CandidateID (Foreign Key)
- StartDate (Single Value)
- EndDate (Single Value)
- Budget (Single Value)
- Description (Single Value)


## Constituency

### Attributes:
- ConstituencyID (Primary Key)
- Name (Single Value)
- Region (Single Value)


## Donor

### Attributes:
- DonorID (Primary Key)
- Name (Single Value)
- ContactDetails (Single Value)
- DonationAmount (Single Value)
- DonationDate (Single Value)


## Volunteer

### Attributes:
- VolunteerID (Primary Key)
- Name (Single Value)
- ContactDetails (Single Value)


## Fundraiser

### Attributes:
- FundraiserID (Primary Key)
- Name (Single Value)
- ContactDetails (Single Value)
- CampaignID (Foreign Key)
- FundsRaised (Single Value)
- FundraiserDate (Single Value)


## Event

### Attributes:
- EventID (Primary Key)
- Name (Single Value)
- EventDate (Single Value)
- Location (Single Value)
- CampaignID (Foreign Key)

## Political Party

### Attributes:
- PartyID (Primary Key)
- Name (Single Value)
- Leader (Single Value)
- Ideology (Single Value)
- ContactDetails

## PollingStation

### Attributes

- PollingStationID
- Name
- Location
- OpeningTime
- ClosingTime
- ContactDetails
- ConstituencyID

# Notes

- key Constraints : primary key, foreign key, Check Constraints.
- Types of Attributes included : Composite, Multi - Valued, Derived.
- Inbound rules were changed for Oracle engine in the RDS.
