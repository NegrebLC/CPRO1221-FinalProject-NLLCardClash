-- Cards Table Insertion
CREATE OR REPLACE TRIGGER calc_overall_trigger
BEFORE INSERT ON Cards
FOR EACH ROW
BEGIN
    IF :NEW.pref_position = 'Goalie' THEN
        :NEW.overall_rating := :NEW.goalie_attribute;
    ELSE
        :NEW.overall_rating := (:NEW.offense_attribute + :NEW.defence_attribute) / 2;
    END IF;
END;
/

--Goalies
INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Cameron Stone', 'Goalie', 0, 0, 80, 'L', 1, 1);

INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Ethan Wells', 'Goalie', 0, 0, ROUND(DBMS_RANDOM.VALUE(70, 100)), 'R', 0, 2);

INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Nolan Brooks', 'Goalie', 0, 0, ROUND(DBMS_RANDOM.VALUE(70, 100)), 'L', 0, 3);

INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Landon Foster', 'Goalie', 0, 0, ROUND(DBMS_RANDOM.VALUE(70, 100)), 'R', 0, 4);

INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Owen Murphy', 'Goalie', 0, 0, ROUND(DBMS_RANDOM.VALUE(90, 100)), 'L', 0, 5);

INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Spencer Reed', 'Goalie', 0, 0, ROUND(DBMS_RANDOM.VALUE(70, 100)), 'R', 0, 6);

INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Gavin Clark', 'Goalie', 0, 0, ROUND(DBMS_RANDOM.VALUE(70, 100)), 'L', 0, 7);

INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Jaxon King', 'Goalie', 0, 0, ROUND(DBMS_RANDOM.VALUE(70, 100)), 'R', 0, 8);

INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Tyler Hughes', 'Goalie', 0, 0, ROUND(DBMS_RANDOM.VALUE(70, 100)), 'L', 0, 9);

INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Brody Scott', 'Goalie', 0, 0, ROUND(DBMS_RANDOM.VALUE(70, 100)), 'R', 0, 10);

--Left Shooters
INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Zephyr Johnson', 'Left Shooter', 83, 90, 0, 'L', 1, 11);

INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Aurelia Anderson', 'Left Shooter', ROUND(DBMS_RANDOM.VALUE(60, 100)), ROUND(DBMS_RANDOM.VALUE(60, 100)), 0, 'L', 0, 12);

INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Cassian Thompson', 'Left Shooter', ROUND(DBMS_RANDOM.VALUE(90, 100)), ROUND(DBMS_RANDOM.VALUE(90, 100)), 0, 'L', 0, 13);

INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Thalassa Wilson', 'Left Shooter', ROUND(DBMS_RANDOM.VALUE(60, 100)), ROUND(DBMS_RANDOM.VALUE(60, 100)), 0, 'L', 0, 14);

INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Oberon Harris', 'Left Shooter', ROUND(DBMS_RANDOM.VALUE(60, 100)), ROUND(DBMS_RANDOM.VALUE(60, 100)), 0, 'L', 0, 15);

INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Elowen Garcia', 'Left Shooter', ROUND(DBMS_RANDOM.VALUE(60, 100)), ROUND(DBMS_RANDOM.VALUE(60, 100)), 0, 'L', 0, 16);

INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Isolde Miller', 'Left Shooter', ROUND(DBMS_RANDOM.VALUE(60, 100)), ROUND(DBMS_RANDOM.VALUE(60, 100)), 0, 'L', 0, 17);

INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Lysander Clark', 'Left Shooter', ROUND(DBMS_RANDOM.VALUE(60, 100)), ROUND(DBMS_RANDOM.VALUE(60, 100)), 0, 'L', 0, 18);

INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Theron Lewis', 'Left Shooter', ROUND(DBMS_RANDOM.VALUE(60, 100)), ROUND(DBMS_RANDOM.VALUE(60, 100)), 0, 'L', 0, 19);

INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Seraph Walker', 'Left Shooter', ROUND(DBMS_RANDOM.VALUE(60, 100)), ROUND(DBMS_RANDOM.VALUE(60, 100)), 0, 'L', 0, 20);

--Right Shooters
INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Sekwun Adams', 'Right Shooter', 72, 81, 0, 'R', 1, 21);

INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Kitchi Brown', 'Right Shooter', ROUND(DBMS_RANDOM.VALUE(90, 100)), ROUND(DBMS_RANDOM.VALUE(90, 100)), 0, 'R', 0, 22);

INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Migisi Clark', 'Right Shooter', ROUND(DBMS_RANDOM.VALUE(60, 100)), ROUND(DBMS_RANDOM.VALUE(60, 100)), 0, 'R', 0, 23);

INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Shappa Davis', 'Right Shooter', ROUND(DBMS_RANDOM.VALUE(60, 100)), ROUND(DBMS_RANDOM.VALUE(60, 100)), 0, 'R', 0, 24);

INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Wapasha Evans', 'Right Shooter', ROUND(DBMS_RANDOM.VALUE(60, 100)), ROUND(DBMS_RANDOM.VALUE(60, 100)), 0, 'R', 0, 25);

INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Tatanka Green', 'Right Shooter', ROUND(DBMS_RANDOM.VALUE(60, 100)), ROUND(DBMS_RANDOM.VALUE(60, 100)), 0, 'R', 0, 26);

INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Chogan Harris', 'Right Shooter', ROUND(DBMS_RANDOM.VALUE(60, 100)), ROUND(DBMS_RANDOM.VALUE(60, 100)), 0, 'R', 0, 27);

INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Ahanu Jackson', 'Right Shooter', ROUND(DBMS_RANDOM.VALUE(60, 100)), ROUND(DBMS_RANDOM.VALUE(60, 100)), 0, 'R', 0, 28);

INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Osawkee Johnson', 'Right Shooter', ROUND(DBMS_RANDOM.VALUE(60, 100)), ROUND(DBMS_RANDOM.VALUE(60, 100)), 0, 'R', 0, 29);

INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Pules King', 'Right Shooter', ROUND(DBMS_RANDOM.VALUE(60, 100)), ROUND(DBMS_RANDOM.VALUE(60, 100)), 0, 'R', 0, 30);

--Right Crease
INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Jackson Adams', 'Right Crease', 80, 82, 0, 'R', 1, 31);

INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Brayden Brown', 'Right Crease', ROUND(DBMS_RANDOM.VALUE(60, 100)), ROUND(DBMS_RANDOM.VALUE(60, 100)), 0, 'R', 0, 32);

INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Carter Clark', 'Right Crease', ROUND(DBMS_RANDOM.VALUE(60, 100)), ROUND(DBMS_RANDOM.VALUE(60, 100)), 0, 'R', 0, 33);

INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Mason Davis', 'Right Crease', ROUND(DBMS_RANDOM.VALUE(60, 100)), ROUND(DBMS_RANDOM.VALUE(60, 100)), 0, 'R', 0, 34);

INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Owen Evans', 'Right Crease', ROUND(DBMS_RANDOM.VALUE(60, 100)), ROUND(DBMS_RANDOM.VALUE(60, 100)), 0, 'R', 0, 35);

INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Liam Green', 'Right Crease', ROUND(DBMS_RANDOM.VALUE(60, 100)), ROUND(DBMS_RANDOM.VALUE(60, 100)), 0, 'R', 0, 36);

INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Ethan Harris', 'Right Crease', ROUND(DBMS_RANDOM.VALUE(60, 100)), ROUND(DBMS_RANDOM.VALUE(60, 100)), 0, 'R', 0, 37);

INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Noah Jackson', 'Right Crease', ROUND(DBMS_RANDOM.VALUE(60, 100)), ROUND(DBMS_RANDOM.VALUE(60, 100)), 0, 'R', 0, 38);

INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Landon Johnson', 'Right Crease', ROUND(DBMS_RANDOM.VALUE(60, 100)), ROUND(DBMS_RANDOM.VALUE(60, 100)), 0, 'R', 0, 39);

INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Wyatt King', 'Right Crease', ROUND(DBMS_RANDOM.VALUE(90, 100)), ROUND(DBMS_RANDOM.VALUE(90, 100)), 0, 'R', 0, 40);

--Left Crease
INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Joaquín Andrade', 'Left Crease', 62, 86, 0, 'L', 1, 41);

INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Mateo Bravo', 'Left Crease', ROUND(DBMS_RANDOM.VALUE(60, 100)), ROUND(DBMS_RANDOM.VALUE(60, 100)), 0, 'L', 0, 42);

INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Lucas Cordero', 'Left Crease', ROUND(DBMS_RANDOM.VALUE(60, 100)), ROUND(DBMS_RANDOM.VALUE(60, 100)), 0, 'L', 0, 43);

INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Gabriel Duarte', 'Left Crease', ROUND(DBMS_RANDOM.VALUE(60, 100)), ROUND(DBMS_RANDOM.VALUE(60, 100)), 0, 'L', 0, 44);

INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Rafael Escobar', 'Left Crease', ROUND(DBMS_RANDOM.VALUE(60, 100)), ROUND(DBMS_RANDOM.VALUE(60, 100)), 0, 'L', 0, 45);

INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Diego Fernandez', 'Left Crease', ROUND(DBMS_RANDOM.VALUE(60, 100)), ROUND(DBMS_RANDOM.VALUE(60, 100)), 0, 'L', 0, 46);

INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Santiago Gutierrez', 'Left Crease', ROUND(DBMS_RANDOM.VALUE(60, 100)), ROUND(DBMS_RANDOM.VALUE(60, 100)), 0, 'L', 0, 47);

INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Emilio Jimenez', 'Left Crease', ROUND(DBMS_RANDOM.VALUE(90, 100)), ROUND(DBMS_RANDOM.VALUE(90, 100)), 0, 'L', 0, 48);

INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Hernán Lopez', 'Left Crease', ROUND(DBMS_RANDOM.VALUE(60, 100)), ROUND(DBMS_RANDOM.VALUE(60, 100)), 0, 'L', 0, 49);

INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Juan Martinez', 'Left Crease', ROUND(DBMS_RANDOM.VALUE(60, 100)), ROUND(DBMS_RANDOM.VALUE(60, 100)), 0, 'L', 0, 50);

--Point
INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Erik Andersen', 'Point', 89, 60, 0, 'L', 1, 51);

INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Lars Bjornsson', 'Point', ROUND(DBMS_RANDOM.VALUE(60, 100)), ROUND(DBMS_RANDOM.VALUE(60, 100)), 0, 'L', 0, 52);

INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Sven Christiansen', 'Point', ROUND(DBMS_RANDOM.VALUE(60, 100)), ROUND(DBMS_RANDOM.VALUE(60, 100)), 0, 'L', 0, 53);

INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Anders Dahl', 'Point', ROUND(DBMS_RANDOM.VALUE(60, 100)), ROUND(DBMS_RANDOM.VALUE(60, 100)), 0, 'L', 0, 54);

INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Gunnar Eriksen', 'Point', ROUND(DBMS_RANDOM.VALUE(60, 100)), ROUND(DBMS_RANDOM.VALUE(60, 100)), 0, 'L', 0, 55);

INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Hans Gustavsson', 'Point', ROUND(DBMS_RANDOM.VALUE(60, 100)), ROUND(DBMS_RANDOM.VALUE(60, 100)), 0, 'R', 0, 56);

INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Johan Hansen', 'Point', ROUND(DBMS_RANDOM.VALUE(60, 100)), ROUND(DBMS_RANDOM.VALUE(60, 100)), 0, 'R', 0, 57);

INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Karlsson Jansson', 'Point', ROUND(DBMS_RANDOM.VALUE(60, 100)), ROUND(DBMS_RANDOM.VALUE(60, 100)), 0, 'R', 0, 58);

INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Lennart Jorgensen', 'Point', ROUND(DBMS_RANDOM.VALUE(90, 100)), ROUND(DBMS_RANDOM.VALUE(90, 100)), 0, 'R', 0, 59);

INSERT INTO Cards (card_id, player_name, pref_position, offense_attribute, defence_attribute, goalie_attribute, hand, available, jersey_number)
VALUES (card_id_sequence.NEXTVAL, 'Magnus Kristensen', 'Point', ROUND(DBMS_RANDOM.VALUE(60, 100)), ROUND(DBMS_RANDOM.VALUE(60, 100)), 0, 'R', 0, 60);

-- Creating Views
BEGIN
    EXECUTE IMMEDIATE '
    CREATE OR REPLACE VIEW Goalie_View AS
    SELECT card_id, overall_rating,
    RANK() OVER (ORDER BY overall_rating DESC) +
    ROW_NUMBER() OVER (PARTITION BY overall_rating ORDER BY card_id) - 1 AS ranking
    FROM Cards
    WHERE pref_position = ''Goalie''';

EXECUTE IMMEDIATE '
    CREATE OR REPLACE VIEW Left_Crease_View AS
    SELECT card_id, overall_rating,
    RANK() OVER (ORDER BY overall_rating DESC) +
    ROW_NUMBER() OVER (PARTITION BY overall_rating ORDER BY card_id) - 1 AS ranking
    FROM Cards
    WHERE pref_position = ''Left Crease''';

EXECUTE IMMEDIATE '
    CREATE OR REPLACE VIEW Right_Crease_View AS
    SELECT card_id, overall_rating,
    RANK() OVER (ORDER BY overall_rating DESC) +
    ROW_NUMBER() OVER (PARTITION BY overall_rating ORDER BY card_id) - 1 AS ranking
    FROM Cards
    WHERE pref_position = ''Right Crease''';

EXECUTE IMMEDIATE '
    CREATE OR REPLACE VIEW Right_Shooter_View AS
    SELECT card_id, overall_rating,
    RANK() OVER (ORDER BY overall_rating DESC) +
    ROW_NUMBER() OVER (PARTITION BY overall_rating ORDER BY card_id) - 1 AS ranking
    FROM Cards
    WHERE pref_position = ''Right Shooter''';

EXECUTE IMMEDIATE '
    CREATE OR REPLACE VIEW Left_Shooter_View AS
    SELECT card_id, overall_rating,
    RANK() OVER (ORDER BY overall_rating DESC) +
    ROW_NUMBER() OVER (PARTITION BY overall_rating ORDER BY card_id) - 1 AS ranking
    FROM Cards
    WHERE pref_position = ''Left Shooter''';

EXECUTE IMMEDIATE '
    CREATE OR REPLACE VIEW Point_View AS
    SELECT card_id, overall_rating,
    RANK() OVER (ORDER BY overall_rating DESC) +
    ROW_NUMBER() OVER (PARTITION BY overall_rating ORDER BY card_id) - 1 AS ranking
    FROM Cards
    WHERE pref_position = ''Point''';
END;
/

CREATE OR REPLACE FUNCTION GetTopPlayerCardIDByPosition(
    param_position VARCHAR2,
    param_rn NUMBER
)
RETURN NUMBER IS
    top_card_id NUMBER;
    sql_stmt VARCHAR2(1000);
BEGIN
    IF param_position = 'Goalie' THEN
        sql_stmt := 'SELECT card_id FROM Goalie_View WHERE ranking = :rn';
    ELSIF param_position = 'Left Crease' THEN
        sql_stmt := 'SELECT card_id FROM Left_Crease_View WHERE ranking = :rn';
    ELSIF param_position = 'Left Shooter' THEN
        sql_stmt := 'SELECT card_id FROM Left_Shooter_View WHERE ranking = :rn';
    ELSIF param_position = 'Right Crease' THEN
        sql_stmt := 'SELECT card_id FROM Right_Crease_View WHERE ranking = :rn';
    ELSIF param_position = 'Right Shooter' THEN
        sql_stmt := 'SELECT card_id FROM Right_Shooter_View WHERE ranking = :rn';
    ELSIF param_position = 'Point' THEN
        sql_stmt := 'SELECT card_id FROM Point_View WHERE ranking = :rn';
    END IF;

    EXECUTE IMMEDIATE sql_stmt INTO top_card_id USING param_rn;

    RETURN top_card_id;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN NULL;
END;
/

CREATE OR REPLACE PROCEDURE RewardInsertProc AS
    top_card_id NUMBER;
BEGIN
    top_card_id := GetTopPlayerCardIDByPosition('Goalie', 1);
    INSERT INTO Rewards (reward_id, card_id)
    VALUES (reward_id_sequence.NEXTVAL, top_card_id);

    top_card_id := GetTopPlayerCardIDByPosition('Point', 1);
    INSERT INTO Rewards (reward_id, card_id)
    VALUES (reward_id_sequence.NEXTVAL, top_card_id);

    top_card_id := GetTopPlayerCardIDByPosition('Left Crease', 1);
    INSERT INTO Rewards (reward_id, card_id)
    VALUES (reward_id_sequence.NEXTVAL, top_card_id);

    top_card_id := GetTopPlayerCardIDByPosition('Left Crease', 2);
    INSERT INTO Rewards (reward_id, card_id)
    VALUES (reward_id_sequence.NEXTVAL, top_card_id);

    top_card_id := GetTopPlayerCardIDByPosition('Left Shooter', 1);
    INSERT INTO Rewards (reward_id, card_id)
    VALUES (reward_id_sequence.NEXTVAL, top_card_id);

    top_card_id := GetTopPlayerCardIDByPosition('Left Shooter', 2);
    INSERT INTO Rewards (reward_id, card_id)
    VALUES (reward_id_sequence.NEXTVAL, top_card_id);

    top_card_id := GetTopPlayerCardIDByPosition('Right Crease', 1);
    INSERT INTO Rewards (reward_id, card_id)
    VALUES (reward_id_sequence.NEXTVAL, top_card_id);

    top_card_id := GetTopPlayerCardIDByPosition('Right Crease', 2);
    INSERT INTO Rewards (reward_id, card_id)
    VALUES (reward_id_sequence.NEXTVAL, top_card_id);

    top_card_id := GetTopPlayerCardIDByPosition('Right Shooter', 1);
    INSERT INTO Rewards (reward_id, card_id)
    VALUES (reward_id_sequence.NEXTVAL, top_card_id);

    top_card_id := GetTopPlayerCardIDByPosition('Right Shooter', 2);
    INSERT INTO Rewards (reward_id, card_id)
    VALUES (reward_id_sequence.NEXTVAL, top_card_id);
END;
/

-- Rewards Insert
BEGIN
    RewardInsertProc;
END;
/

-- Computer_Teams Insert
CREATE OR REPLACE PROCEDURE InsertComputerTeams AS
    v_goalie    NUMBER;
    v_left      NUMBER;
    v_right     NUMBER;
    v_l_shooter NUMBER;
    v_r_shooter NUMBER;
    v_Point     NUMBER;
BEGIN
    FOR i IN 1..10 LOOP
        BEGIN
            SELECT card_id INTO v_goalie FROM (SELECT card_id, ranking FROM Goalie_View) WHERE ranking = i;
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                v_goalie := 0;
        END;

        BEGIN
            SELECT card_id INTO v_left FROM (SELECT card_id, ranking FROM Left_Crease_View) WHERE ranking = i;
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                v_left := 0;
        END;

        BEGIN
            SELECT card_id INTO v_right FROM (SELECT card_id, ranking FROM Right_Crease_View) WHERE ranking = i;
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                v_right := 0;
        END;

        BEGIN
            SELECT card_id INTO v_l_shooter FROM (SELECT card_id, ranking FROM Left_Shooter_View) WHERE ranking = i;
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                v_l_shooter := 0;
        END;

        BEGIN
            SELECT card_id INTO v_r_shooter FROM (SELECT card_id, ranking FROM Right_Shooter_View) WHERE ranking = i;
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                v_r_shooter := 0;
        END;

        BEGIN
            SELECT card_id INTO v_Point FROM (SELECT card_id, ranking FROM Point_View) WHERE ranking = i;
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                v_Point := 0;
        END;

        BEGIN
            INSERT INTO Computer_Teams (team_id, goalie, left_crease, right_crease, left_shooter, right_shooter, Point)
            VALUES (i, v_goalie, v_left, v_right, v_l_shooter, v_r_shooter, v_Point);
        EXCEPTION
            WHEN DUP_VAL_ON_INDEX THEN
                NULL;
        END;
    END LOOP;
END;
/

BEGIN
	InsertComputerTeams;
END;
/

-- Mission Table Insertion
INSERT INTO Missions (mission_id, team_id, reward_id) VALUES (mission_id_sequence.NEXTVAL, 10, 10);
INSERT INTO Missions (mission_id, team_id, reward_id) VALUES (mission_id_sequence.NEXTVAL, 9, 9);
INSERT INTO Missions (mission_id, team_id, reward_id) VALUES (mission_id_sequence.NEXTVAL, 8, 8);
INSERT INTO Missions (mission_id, team_id, reward_id) VALUES (mission_id_sequence.NEXTVAL, 7, 7);
INSERT INTO Missions (mission_id, team_id, reward_id) VALUES (mission_id_sequence.NEXTVAL, 6, 6);
INSERT INTO Missions (mission_id, team_id, reward_id) VALUES (mission_id_sequence.NEXTVAL, 5, 5);
INSERT INTO Missions (mission_id, team_id, reward_id) VALUES (mission_id_sequence.NEXTVAL, 4, 4);
INSERT INTO Missions (mission_id, team_id, reward_id) VALUES (mission_id_sequence.NEXTVAL, 3, 3);
INSERT INTO Missions (mission_id, team_id, reward_id) VALUES (mission_id_sequence.NEXTVAL, 2, 2);
INSERT INTO Missions (mission_id, team_id, reward_id) VALUES (mission_id_sequence.NEXTVAL, 1, 1);

-- User_Profile Insertion
INSERT INTO User_Profile (user_id, username, current_mission_id, team1_id)
VALUES (1, 'def_user', 1, NULL);

INSERT INTO User_Teams (team_id, goalie, left_crease, right_crease, left_shooter, right_shooter, Point, user_id)
VALUES (1, 1, 41, 31, 11, 21, 51, 1);

UPDATE User_Profile SET team1_id=1
WHERE user_id=1;

COMMIT;