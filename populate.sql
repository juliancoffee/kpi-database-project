INSERT INTO Distributions(distro_id, distro_name, os_family, development_status, country_origin, average_rating)
VALUES(1, 'Pidora', 'Linux', 'Discontinued', 'Candada', null);
INSERT INTO Distributions(distro_id, distro_name, os_family, development_status, country_origin, average_rating)
VALUES(2, 'Fedora', 'Linux', 'Active', 'Candada', '8.45/10');
INSERT INTO Distributions(distro_id, distro_name, os_family, development_status, country_origin, average_rating)
VALUES(3, 'Debian', 'Linux', 'Active', 'Global', '8.66/10');
INSERT INTO Distributions(distro_id, distro_name, os_family, development_status, country_origin, average_rating)
VALUES(4, 'Matrius', 'Linux', 'Discontinued', 'India', '9.5/10');

INSERT INTO Desktops(distro_id, desktop_name)
VALUES(1, 'Xfce');
INSERT INTO Desktops(distro_id, desktop_name)
VALUES(2, 'Awesome');
INSERT INTO Desktops(distro_id, desktop_name)
VALUES(2, 'Cinnamon');
INSERT INTO Desktops(distro_id, desktop_name)
VALUES(2, 'Deepin');
INSERT INTO Desktops(distro_id, desktop_name)
VALUES(2, 'Englightment');
INSERT INTO Desktops(distro_id, desktop_name)
VALUES(3, 'GNOME');
INSERT INTO Desktops(distro_id, desktop_name)
VALUES(3, 'i3');
INSERT INTO Desktops(distro_id, desktop_name)
VALUES(3, 'Awesome');
INSERT INTO Desktops(distro_id, desktop_name)
VALUES(4, 'GNOME');

INSERT INTO Architectures(distro_id, desktop_name)
VALUES(1, 'armv6hl');
INSERT INTO Architectures(distro_id, desktop_name)
VALUES(2, 'aarch64');
INSERT INTO Architectures(distro_id, desktop_name)
VALUES(2, 'armhfp');
INSERT INTO Architectures(distro_id, desktop_name)
VALUES(2, 'x86_64');
INSERT INTO Architectures(distro_id, desktop_name)
VALUES(3, 'aarch64');
INSERT INTO Architectures(distro_id, desktop_name)
VALUES(3, 'armel');
INSERT INTO Architectures(distro_id, desktop_name)
VALUES(3, 'i386');
INSERT INTO Architectures(distro_id, desktop_name)
VALUES(3, 'i686');
INSERT INTO Architectures(distro_id, desktop_name)
VALUES(3, 'x86_64');
INSERT INTO Architectures(distro_id, desktop_name)
VALUES(4, 'i386');


INSERT INTO DistributionKinds(distro_id, kind_name)
VALUES(3, 'Debian (Stable)');

INSERT INTO DistroInteractions(child_id, parent_id, parent_kind_name, interaction_type)
VALUES(1, 2, null, 'Based');
INSERT INTO DistroInteractions(child_id, parent_id, parent_kind_name, interaction_type)
VALUES(4, 3, 'Debian (Stable)', 'Based');

INSERT INTO Hits(distro_id, current_hits, per_week, per_4weeks, per_3month, per_6month, per_year)
VALUES(2, 1051, 1118, 1161, 1075, 1051, 1020);
INSERT INTO Hits(distro_id, current_hits, per_week, per_4weeks, per_3month, per_6month, per_year)
VALUES(3, 1672, 1670, 1677, 1705, 1672, 1615);
