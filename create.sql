CREATE TABLE Distribution (
    distro_id INTEGER
    , os_family VARCHAR(50)
    , development_status VARCHAR(30)
    , distro_name VARCHAR(50)
    , country_origin VARCHAR(500)
    , average_rating VARCHAR(10)
);

CREATE TABLE Desktop (
    distro_id INTEGER
    , desktop_name VARCHAR(255)
);

CREATE TABLE Architecture (
    distro_id INTEGER
    , architecture_name VARCHAR(20)
);

CREATE TABLE DistributionKinds (
    distro_id INTEGER
    , kind_name VARCHAR(50)
);

CREATE TABLE DistroInteraction (
    parent_id INTEGER
    , child_int INTEGER
    , parent_kind_name VARCHAR(50)
    , interaction_type VARCHAR(20)
);

CREATE TABLE Hits (
    distro_id INTEGER
    , current_hits INTEGER
    , per_week INTEGER
    , per_4weeks INTEGER
    , per_3month INTEGER
    , per_6month INTEGER
    , per_year INTEGER
);
