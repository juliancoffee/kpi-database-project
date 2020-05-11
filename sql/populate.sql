INSERT INTO
    Distributions(Distro_Id, Distro_Name, Os_Family, Development_Status, Country_Origin, Average_Rating, First_Release)
    VALUES
    (1, 'Pidora', 'Linux', 'Discontinued', 'Candada', NULL, to_date('31-05-2000', 'DD-MM-YY'));
INSERT INTO
    Distributions(Distro_Id, Distro_Name, Os_Family, Development_Status, Country_Origin, Average_Rating, First_Release)
    VALUES
    (2, 'Fedora', 'Linux', 'Active', 'Candada', '8.45/10', to_date('31-05-2012', 'DD-MM-YY'));
INSERT INTO
    Distributions(Distro_Id, Distro_Name, Os_Family, Development_Status, Country_Origin, Average_Rating, First_Release)
    VALUES
    (3, 'Debian', 'Linux', 'Active', 'Global', '8.66/10', to_date('31-10-2001', 'DD-MM-YY'));
INSERT INTO
    Distributions(Distro_Id, Distro_Name, Os_Family, Development_Status, Country_Origin, Average_Rating, First_Release)
    VALUES
    (4, 'Matrius', 'Linux', 'Discontinued', 'India', '9.5/10', to_date('05-10-2002', 'DD-MM-YY'));
INSERT INTO
    Distributions(Distro_Id, Distro_Name, Os_Family, Development_Status, Country_Origin, Average_Rating, First_Release)
    VALUES
    (5, 'KekLinux', 'Linux', 'Discontinued', 'Ukraine', '9.5/10', to_date('04-10-2001', 'DD-MM-YY'));

INSERT INTO
    Architectures(Distro_Id, Architecture_Name)
    VALUES
        (1, 'armv6hl');
INSERT INTO
    Architectures(Distro_Id, Architecture_Name)
    VALUES
        (2, 'aarch64');
INSERT INTO
    Architectures(Distro_Id, Architecture_Name)
    VALUES
        (2, 'armhfp');
INSERT INTO
    Architectures(Distro_Id, Architecture_Name)
    VALUES
        (2, 'x86_64');
INSERT INTO
    Architectures(Distro_Id, Architecture_Name)
    VALUES
        (3, 'aarch64');
INSERT INTO
    Architectures(Distro_Id, Architecture_Name)
    VALUES
        (3, 'armel');
INSERT INTO
    Architectures(Distro_Id, Architecture_Name)
    VALUES
        (3, 'i386');
INSERT INTO
    Architectures(Distro_Id, Architecture_Name)
    VALUES
        (3, 'i686');
INSERT INTO
    Architectures(Distro_Id, Architecture_Name)
    VALUES
        (3, 'x86_64');
INSERT INTO
    Architectures(Distro_Id, Architecture_Name)
    VALUES
        (4, 'i386');


INSERT INTO
    Distrointeractions(Child_Id, Parent_Id, Parent_Kind_Name, Interaction_Type)
    VALUES
        (1, 2, NULL, 'Based');
INSERT INTO
    Distrointeractions(Child_Id, Parent_Id, Parent_Kind_Name, Interaction_Type)
    VALUES
        (4, 3, 'Debian (Stable)', 'Based');
INSERT INTO
    Distrointeractions(Child_Id, Parent_Id, Parent_Kind_Name, Interaction_Type)
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