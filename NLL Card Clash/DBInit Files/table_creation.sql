-- Dropping foreign key constraints
ALTER TABLE User_Teams DROP CONSTRAINT fk_goalie_pt;
ALTER TABLE User_Teams DROP CONSTRAINT fk_left_crease_pt;
ALTER TABLE User_Teams DROP CONSTRAINT fk_right_crease_pt;
ALTER TABLE User_Teams DROP CONSTRAINT fk_left_shooter_pt;
ALTER TABLE User_Teams DROP CONSTRAINT fk_right_shooter_pt;
ALTER TABLE User_Teams DROP CONSTRAINT fk_user_id;
ALTER TABLE User_Teams DROP CONSTRAINT fk_point_pt;

ALTER TABLE Computer_Teams DROP CONSTRAINT fk_goalie_ct;
ALTER TABLE Computer_Teams DROP CONSTRAINT fk_left_crease_ct;
ALTER TABLE Computer_Teams DROP CONSTRAINT fk_right_crease_ct;
ALTER TABLE Computer_Teams DROP CONSTRAINT fk_left_shooter_ct;
ALTER TABLE Computer_Teams DROP CONSTRAINT fk_right_shooter_ct;
ALTER TABLE Computer_Teams DROP CONSTRAINT fk_point_ct;

ALTER TABLE Rewards DROP CONSTRAINT fk_card_id;

ALTER TABLE Missions DROP CONSTRAINT fk_team_id;
ALTER TABLE Missions DROP CONSTRAINT fk_reward_id;

ALTER TABLE User_Profile DROP CONSTRAINT fk_team1_id;
ALTER TABLE User_Profile DROP CONSTRAINT fk_current_mission_id;

-- Drop Tables
DROP TABLE User_Teams;
DROP TABLE User_Profile;
DROP TABLE Missions;
DROP TABLE Computer_Teams;
DROP TABLE Rewards;
DROP TABLE Cards;

-- Drop Sequences
DROP SEQUENCE user_teams_id_sequence;
DROP SEQUENCE user_id_sequence;
DROP SEQUENCE mission_id_sequence;
DROP SEQUENCE computer_teams_id_sequence;
DROP SEQUENCE reward_id_sequence;
DROP SEQUENCE card_id_sequence;

-- Create sequences
CREATE SEQUENCE card_id_sequence
    START WITH 1
    INCREMENT BY 1
    NOCACHE
    NOCYCLE;
CREATE SEQUENCE reward_id_sequence
    START WITH 1
    INCREMENT BY 1
    NOCACHE
    NOCYCLE;
CREATE SEQUENCE computer_teams_id_sequence
    START WITH 1
    INCREMENT BY 1
    NOCACHE
    NOCYCLE;
CREATE SEQUENCE mission_id_sequence
    START WITH 1
    INCREMENT BY 1
    NOCACHE
    NOCYCLE;
CREATE SEQUENCE user_id_sequence
    START WITH 1
    INCREMENT BY 1
    NOCACHE
    NOCYCLE;
CREATE SEQUENCE user_teams_id_sequence
    START WITH 1
    INCREMENT BY 1
    NOCACHE
    NOCYCLE;

-- Cards Table Creation
CREATE TABLE Cards (
    card_id INT PRIMARY KEY,
    player_name CHAR(50) NOT NULL,
    pref_position CHAR(30) NOT NULL,
    offense_attribute INT NOT NULL,
    defence_attribute INT NOT NULL,
    goalie_attribute INT DEFAULT 0,
    hand CHAR(10) NOT NULL,
    available NUMBER(1) DEFAULT 0,
    jersey_number INT UNIQUE,
    overall_rating INT
);

-- Rewards Table Creation
CREATE TABLE Rewards (
    reward_id INT PRIMARY KEY,
    card_id INT NOT NULL
);

-- Computer_Teams Table Creation
CREATE TABLE Computer_Teams (
    team_id INT PRIMARY KEY,
    goalie INT NOT NULL,
    left_crease INT NOT NULL,
    right_crease INT NOT NULL,
    left_shooter INT NOT NULL,
    right_shooter INT NOT NULL,
    point INT NOT NULL
);

-- Missions Table Creation
CREATE TABLE Missions (
    mission_id INT PRIMARY KEY,
    team_id INT NOT NULL,
    reward_id INT NOT NULL
);

-- User_Profile Table Creation
CREATE TABLE User_Profile (
    user_id INT PRIMARY KEY,
    username VARCHAR2(20),
    current_mission_id INT NOT NULL,
    team1_id INT
);

-- User_Teams Table Creation
CREATE TABLE User_Teams (
    team_id INT PRIMARY KEY,
    goalie INT NOT NULL,
    left_crease INT NOT NULL,
    right_crease INT NOT NULL,
    left_shooter INT NOT NULL,
    right_shooter INT NOT NULL,
    point INT NOT NULL,
    user_id INT NOT NULL
);

-- Adding Foreign Key Constraints
ALTER TABLE Rewards
ADD CONSTRAINT fk_card_id
FOREIGN KEY (card_id) REFERENCES Cards(card_id);


ALTER TABLE Missions
ADD CONSTRAINT fk_team_id
FOREIGN KEY (team_id) REFERENCES Computer_Teams(team_id);

ALTER TABLE Missions
ADD CONSTRAINT fk_reward_id
FOREIGN KEY (reward_id) REFERENCES Rewards(reward_id);


ALTER TABLE User_Teams
ADD CONSTRAINT fk_goalie_pt
FOREIGN KEY (goalie) REFERENCES Cards(card_id);

ALTER TABLE User_Teams
ADD CONSTRAINT fk_left_crease_pt
FOREIGN KEY (left_crease) REFERENCES Cards(card_id);

ALTER TABLE User_Teams
ADD CONSTRAINT fk_right_crease_pt
FOREIGN KEY (right_crease) REFERENCES Cards(card_id);

ALTER TABLE User_Teams
ADD CONSTRAINT fk_left_shooter_pt
FOREIGN KEY (left_shooter) REFERENCES Cards(card_id);

ALTER TABLE User_Teams
ADD CONSTRAINT fk_right_shooter_pt
FOREIGN KEY (right_shooter) REFERENCES Cards(card_id);

ALTER TABLE User_Teams
ADD CONSTRAINT fk_user_id
FOREIGN KEY (user_id) REFERENCES User_Profile(user_id);

ALTER TABLE User_Teams
ADD CONSTRAINT fk_point_pt
FOREIGN KEY (point) REFERENCES Cards(card_id);


ALTER TABLE Computer_Teams
ADD CONSTRAINT fk_goalie_ct
FOREIGN KEY (goalie) REFERENCES Cards(card_id);

ALTER TABLE Computer_Teams
ADD CONSTRAINT fk_left_crease_ct
FOREIGN KEY (left_crease) REFERENCES Cards(card_id);

ALTER TABLE Computer_Teams
ADD CONSTRAINT fk_right_crease_ct
FOREIGN KEY (right_crease) REFERENCES Cards(card_id);

ALTER TABLE Computer_Teams
ADD CONSTRAINT fk_left_shooter_ct
FOREIGN KEY (left_shooter) REFERENCES Cards(card_id);

ALTER TABLE Computer_Teams
ADD CONSTRAINT fk_right_shooter_ct
FOREIGN KEY (right_shooter) REFERENCES Cards(card_id);

ALTER TABLE Computer_Teams
ADD CONSTRAINT fk_point_ct
FOREIGN KEY (point) REFERENCES Cards(card_id);


ALTER TABLE User_Profile
ADD CONSTRAINT fk_team1_id
FOREIGN KEY (team1_id) REFERENCES User_Teams(team_id);

ALTER TABLE User_Profile
ADD CONSTRAINT fk_current_mission_id
FOREIGN KEY (current_mission_id) REFERENCES Missions(mission_id);