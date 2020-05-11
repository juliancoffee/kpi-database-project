DROP TABLE Architectures;
DROP TABLE DistroInteractions;
DROP TABLE Hits;
DROP TABLE Distributions;

CREATE TABLE Distributions (
    distro_id INTEGER
    , distro_name VARCHAR(50)
    , os_family VARCHAR(50)
    , development_status VARCHAR(30)
    , country_origin VARCHAR(500)
    , average_rating VARCHAR(10)
    , first_release DATE
);

CREATE TABLE Architectures (
    distro_id INTEGER
    , architecture_name VARCHAR(20)
);

CREATE TABLE DistroInteractions (
    parent_id INTEGER
    , child_id INTEGER
    , parent_kind_name VARCHAR(50)
    , interaction_type VARCHAR(20)
);

CREATE TABLE Hits (
    distro_id INTEGER
    , current_hits INTEGER
);


ALTER TABLE Distributions 
    ADD CONSTRAINT PK_distributions PRIMARY KEY (distro_id);
ALTER TABLE DistroInteractions
    ADD CONSTRAINT PK_distro_interaction PRIMARY KEY (child_id);
ALTER TABLE Hits 
    ADD CONSTRAINT PK_hits PRIMARY KEY (distro_id);
ALTER TABLE Architectures
    ADD CONSTRAINT PK_architecture PRIMARY KEY (distro_id, architecture_name);



ALTER TABLE Architectures
ADD CONSTRAINT FK_architectures_distro
    FOREIGN KEY (distro_id)
    REFERENCES Distributions (distro_id);


ALTER TABLE DistroInteractions
ADD CONSTRAINT FK_parent_distro
    FOREIGN KEY (parent_id)
    REFERENCES Distributions (distro_id);

ALTER TABLE DistroInteractions
ADD CONSTRAINT FK_child_distro
    FOREIGN KEY (child_id)
    REFERENCES Distributions (distro_id);

ALTER TABLE Hits
ADD CONSTRAINT FK_distro
    FOREIGN KEY (distro_id)
    REFERENCES Distributions (distro_id);
