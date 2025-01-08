CREATE TABLE candidates (
    election_location VARCHAR(300) NOT NULL,
    office_name VARCHAR(300) NOT NULL,
    candidate_level CHAR(1),
    party VARCHAR(5),
    primary_election VARCHAR(15),
    election_date DATE,
    run_off_date DATE,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    address VARCHAR(250),
    address_2 VARCHAR(250),
    city VARCHAR(50),
    candidate_state CHAR(2),
    zip VARCHAR(10),
    phone VARCHAR(20),
    email VARCHAR(100),
    email_2 VARCHAR(100),
    site_url VARCHAR(200)
);

CREATE TABLE users (
    user_email VARCHAR(100) NOT NULL UNIQUE,
    username VARCHAR(100) NOT NULL UNIQUE,
    user_password VARCHAR(200) NOT NULL
);