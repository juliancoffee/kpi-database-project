INSERT INTO
    Distribution_Info(Distro_Id, Distro_Name, Os_Family, Development_Status, Country_Origin, Average_Rating)
    VALUES
    (1, 'Pidora', 'Linux', 'Discontinued', 'Candada', NULL);
INSERT INTO
    Distribution_Info(Distro_Id, Distro_Name, Os_Family, Development_Status, Country_Origin, Average_Rating)
    VALUES
    (2, 'Fedora', 'Linux', 'Active', 'Candada', '8.45/10');
INSERT INTO
    Distribution_Info(Distro_Id, Distro_Name, Os_Family, Development_Status, Country_Origin, Average_Rating)
    VALUES
    (3, 'Debian', 'Linux', 'Active', 'Global', '8.66/10');
INSERT INTO
    Distribution_Info(Distro_Id, Distro_Name, Os_Family, Development_Status, Country_Origin, Average_Rating)
    VALUES
    (4, 'Matrius', 'Linux', 'Discontinued', 'India', '9.5/10');
INSERT INTO
    Distribution_Info(Distro_Id, Distro_Name, Os_Family, Development_Status, Country_Origin, Average_Rating)
    VALUES
    (5, 'KekLinux', 'Linux', 'Discontinued', 'Ukraine', '9.5/10');

INSERT INTO
    Distribution_Releases(Distro_Id, Release_Number, Release_Name, Release_Date)
    VALUES
        (1, 0, '1.0', to_date('31-05-2000', 'DD-MM-YY'));
INSERT INTO
    Distribution_Releases(Distro_Id, Release_Number, Release_Name, Release_Date)
    VALUES
        (2, 0, '1.0', to_date('31-05-2012', 'DD-MM-YY'));
INSERT INTO
    Distribution_Releases(Distro_Id, Release_Number, Release_Name, Release_Date)
    VALUES
        (3, 0, '1.0', to_date('31-10-2001', 'DD-MM-YY'));
INSERT INTO
    Distribution_Releases(Distro_Id, Release_Number, Release_Name, Release_Date)
    VALUES
        (4, 0, '1.0', to_date('05-10-2002', 'DD-MM-YY'));
INSERT INTO
    Distribution_Releases(Distro_Id, Release_Number, Release_Name, Release_Date)
    VALUES
        (5, 0, '1.0', to_date('04-10-2001', 'DD-MM-YY'));

INSERT INTO
    Distro_interactions(Child_Id, Parent_Id, Parent_Kind_Name, Interaction_Type)
    VALUES
        (1, 2, NULL, 'Based');
INSERT INTO
    Distro_interactions(Child_Id, Parent_Id, Parent_Kind_Name, Interaction_Type)
    VALUES
        (4, 3, 'Debian (Stable)', 'Based');
INSERT INTO
    Distro_interactions(Child_Id, Parent_Id, Parent_Kind_Name, Interaction_Type)
    VALUES
        (5, 3, 'Debian (Stable)', 'Based');

INSERT INTO
    Hits(Distro_Id, Current_Hits)
    VALUES
        (2, 1051);
INSERT INTO
    Hits(Distro_Id, Current_Hits)
    VALUES
        (3, 1672);
