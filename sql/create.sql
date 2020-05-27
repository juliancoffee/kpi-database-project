DROP TABLE Hits;
DROP TABLE Distribution_Releases;
DROP TABLE Distro_Interactions_Kind;
DROP TABLE Distro_Kind;
DROP TABLE Distro_Interactions;
DROP TABLE Distribution_Info;

CREATE TABLE Distribution_Info (
    Distro_Id          INTEGER,
    Distro_Name        VARCHAR(50) NOT NULL UNIQUE,
    Os_Family          VARCHAR(50) NOT NULL,
    Development_Status VARCHAR(30),
    Country_Origin     VARCHAR(500),
    Average_Rating     VARCHAR(10)
);

CREATE TABLE Distribution_Releases (
    Distro_Id      INTEGER,
    Release_Number INTEGER,
    Release_Name   VARCHAR(200),
    Release_Date   DATE
);

CREATE TABLE Distro_Interactions (
    Child_Id         INTEGER,
    Parent_Id        INTEGER,
    Interaction_Type VARCHAR(20)
);

CREATE TABLE Distro_Kind (
    Family_Id INTEGER,
    Kind_Id   INTEGER,
    Kind_Name INTEGER
);

CREATE TABLE Distro_Interactions_Kind (
    Child_Id         INTEGER,
    Parent_Kind_Id   INTEGER,
    Interaction_Type VARCHAR(20)
);

CREATE TABLE Hits (
    Distro_Id    INTEGER,
    Current_Hits INTEGER
);

-- TODO: make distro_releases working with query, view, etc
-- TODO: loop.sql for generation releases

ALTER TABLE Distribution_Info
    ADD CONSTRAINT Pk_Distributions PRIMARY KEY (Distro_Id);

ALTER TABLE Distro_Interactions
    ADD CONSTRAINT Pk_Distro_Interaction PRIMARY KEY (Child_Id);

ALTER TABLE Distro_Interactions_Kind
    ADD CONSTRAINT Pk_Distro_Interaction_Kind PRIMARY KEY (Child_Id);

ALTER TABLE Distribution_Releases
    ADD CONSTRAINT Pk_Releases PRIMARY KEY (Distro_Id, Release_Number);

ALTER TABLE Distro_Kind
    ADD CONSTRAINT Pk_Kind PRIMARY KEY (Kind_Id);

ALTER TABLE Hits
    ADD CONSTRAINT Pk_Hits PRIMARY KEY (Distro_Id);


ALTER TABLE Distribution_Releases
    ADD CONSTRAINT Fk_Distribution
        FOREIGN KEY (Distro_Id)
            REFERENCES Distribution_Info (Distro_Id);

ALTER TABLE Distro_Interactions
    ADD CONSTRAINT Fk_Parent_Distro
        FOREIGN KEY (Parent_Id)
            REFERENCES Distribution_Info (Distro_Id);

ALTER TABLE Distro_Interactions
    ADD CONSTRAINT Fk_Interaction_Child_Distro
        FOREIGN KEY (Child_Id)
            REFERENCES Distribution_Info (Distro_Id);

ALTER TABLE Distro_Interactions_Kind
    ADD CONSTRAINT Fk_Parent_Kind
        FOREIGN KEY (Parent_Kind_Id)
            REFERENCES Distro_Kind (Kind_Id);

ALTER TABLE Distro_Interactions_Kind
    ADD CONSTRAINT Fk_InteractionKind_Child
        FOREIGN KEY (Child_Id)
            REFERENCES Distribution_Info (Distro_Id);

ALTER TABLE Distro_Kind
    ADD CONSTRAINT Fk_Kind_Family_Id
        FOREIGN KEY (Family_Id)
            REFERENCES Distribution_Info (Distro_Id);

ALTER TABLE Hits
    ADD CONSTRAINT Fk_Distro
        FOREIGN KEY (Distro_Id)
            REFERENCES Distribution_Info (Distro_Id);
