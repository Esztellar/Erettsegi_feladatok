-- CREATE DATABASE ostermelo
-- USE ostermelo

CREATE TABLE gyumolcslevek (
  id int,
  gynev varchar(16) NOT NULL,
  CONSTRAINT pk_gyumolcslevek PRIMARY KEY (id)
);

CREATE TABLE partnerek (
  id int,
  kontakt varchar(20) NOT NULL,
  telepules varchar(20) NOT NULL,
 CONSTRAINT pk_partnerek PRIMARY KEY (id)
);

CREATE TABLE kiszallitasok (
  sorsz int,
  gyumleid int NOT NULL,
  partnerid int NOT NULL,
  datum date NOT NULL,
  karton int NOT NULL,
  CONSTRAINT pk_kiszallitasok PRIMARY KEY (sorsz),
  CONSTRAINT fk_gyumleszall FOREIGN KEY (gyumleid) REFERENCES gyumolcslevek(id),
  CONSTRAINT fk_partnerszall FOREIGN KEY (partnerid) REFERENCES partnerek(id)
);

INSERT INTO gyumolcslevek (id, gynev) VALUES 
  (1, 'almalé'),
  (2, 'körtelé'),
  (3, 'szilvalé'),
  (4, 'áfonyalé'),
  (5, 'őszibaracklé'),
  (6, 'bodzalé'),
  (7, 'eperlé');


INSERT INTO partnerek (id, kontakt, telepules) VALUES 
  (1, 'Oláh Róbert', 'Gyöngyös'),
  (2, 'Pásztor Renátó', 'Balatonfüred'),
  (3, 'Somogyi Beáta', 'Szeged'),
  (4, 'Kovács Anikó', 'Veszprém'),
  (5, 'Deák Dorina', 'Pásztó'),
  (6, 'Gulyás Erika', 'Szekszárd'),
  (7, 'Vincze Terézia', 'Sirok'),
  (8, 'Török Gergő', 'Tata'),
  (9, 'Gulyás Erika', 'Eger'),
  (10, 'Pataki Roland', 'Esztergom'),
  (11, 'Farkas Kornél', 'Eger'),
  (12, 'Kerekes Klaudia', 'Budapest'),
  (13, 'Molnár Gizella', 'Pápa'),
  (14, 'Sándor Gergő', 'Tihany'),
  (15, 'Németh Evelin', 'Eger'),
  (16, 'Vincze Ferenc', 'Nagykanizsa'),
  (17, 'Balog Lilla', 'Eger'),
  (18, 'Balogh Ildikó', 'Székesfehérvár'),
  (19, 'Szekeres Barnabás', 'Gyula'),
  (20, 'Horváth Brigitta', 'Eger'),
  (21, 'Király Zoltán', 'Eger'),
  (22, 'Gáspár Brigitta', 'Soporon'),
  (23, 'Tóth Tünde', 'Sárospatak'),
  (24, 'Varga Brigitta', 'Szilvásvárad'),
  (25, 'Lengyel Gergő', 'Pécs'),
  (26, 'Pál Pál', 'Békéscsaba'),
  (27, 'Varga György', 'Vác'),
  (28, 'Pásztor Vilmos', 'Jászberény'),
  (29, 'Fazekas Richárd', 'Hódmezővásárhely'),
  (30, 'Sipos Lóránt', 'Budapest'),
  (31, 'Pintér Csilla', 'Ózd'),
  (32, 'Végh Piroska', 'Győr'),
  (33, 'Deák Szabolcs', 'Debrecen'),
  (34, 'Mészáros Anikó', 'Miskolc'),
  (35, 'Szilágyi Edit', 'Szolnok'),
  (36, 'Antal Mariann', 'Kecskemét'),
  (37, 'Veres Dorina', 'Hatvan'),
  (38, 'Szalai Viktória', 'Nyíregyháza'),
  (39, 'Hegedűs Richárd', 'Eger'),
  (40, 'Puskás Klaudia', 'Kaposvár'),
  (41, 'Végh Róza', 'Hollókő'),
  (42, 'Faragó Martin', 'Egerszalók'),
  (43, 'Barna Erika', 'Szombathely'),
  (44, 'Oláh Brigitta', 'Siófok');


INSERT INTO kiszallitasok (sorsz, gyumleid, partnerid, datum, karton) VALUES 
  (1, 3, 33, '2016-01-11', 6),
  (2, 6, 2, '2016-01-11', 4),
  (3, 6, 23, '2016-01-12', 11),
  (4, 4, 6, '2016-01-12', 8),
  (5, 6, 30, '2016-01-13', 9),
  (6, 5, 4, '2016-01-13', 2),
  (7, 4, 4, '2016-01-14', 10),
  (8, 6, 3, '2016-01-14', 7),
  (9, 4, 18, '2016-01-14', 14),
  (10, 5, 17, '2016-01-14', 15),
  (11, 2, 14, '2016-01-18', 7),
  (12, 5, 26, '2016-01-18', 4),
  (13, 3, 30, '2016-01-18', 15),
  (14, 5, 36, '2016-01-18', 6),
  (15, 4, 7, '2016-01-18', 3),
  (16, 3, 31, '2016-01-18', 3),
  (17, 4, 7, '2016-01-18', 13),
  (18, 5, 14, '2016-01-18', 10),
  (19, 5, 40, '2016-01-18', 3),
  (20, 1, 34, '2016-01-18', 3),
  (21, 6, 38, '2016-01-19', 2),
  (22, 2, 5, '2016-01-19', 11),
  (23, 7, 11, '2016-01-19', 12),
  (24, 2, 42, '2016-01-19', 15),
  (25, 4, 23, '2016-01-19', 16),
  (26, 6, 31, '2016-01-19', 9),
  (27, 1, 22, '2016-01-19', 9),
  (28, 4, 20, '2016-01-19', 6),
  (29, 4, 23, '2016-01-20', 6),
  (30, 1, 17, '2016-01-20', 14),
  (31, 5, 4, '2016-01-21', 4),
  (32, 5, 36, '2016-01-21', 5),
  (33, 4, 26, '2016-01-22', 2),
  (34, 4, 3, '2016-01-22', 11),
  (35, 4, 7, '2016-01-22', 14),
  (36, 3, 44, '2016-01-22', 10),
  (37, 2, 22, '2016-01-22', 5),
  (38, 6, 5, '2016-01-22', 15),
  (39, 6, 3, '2016-01-25', 4),
  (40, 6, 26, '2016-01-25', 7),
  (41, 4, 9, '2016-01-26', 8),
  (42, 3, 28, '2016-01-26', 5),
  (43, 2, 1, '2016-01-27', 15),
  (44, 4, 3, '2016-01-27', 2),
  (45, 3, 16, '2016-01-28', 5),
  (46, 2, 43, '2016-01-28', 16),
  (47, 5, 7, '2016-01-28', 5),
  (48, 7, 32, '2016-01-28', 3),
  (49, 4, 21, '2016-01-28', 2),
  (50, 5, 24, '2016-01-28', 8),
  (51, 3, 28, '2016-01-29', 3),
  (52, 6, 16, '2016-01-29', 4),
  (53, 1, 43, '2016-02-01', 12),
  (54, 2, 19, '2016-02-01', 14),
  (55, 3, 8, '2016-02-01', 8),
  (56, 2, 7, '2016-02-01', 15),
  (57, 2, 36, '2016-02-01', 7),
  (58, 4, 17, '2016-02-01', 14),
  (59, 6, 18, '2016-02-01', 3),
  (60, 5, 24, '2016-02-01', 2),
  (61, 3, 40, '2016-02-02', 12),
  (62, 7, 19, '2016-02-02', 5),
  (63, 5, 11, '2016-02-02', 9),
  (64, 2, 25, '2016-02-02', 8),
  (65, 5, 6, '2016-02-03', 13),
  (66, 2, 41, '2016-02-03', 6),
  (67, 5, 37, '2016-02-04', 6),
  (68, 3, 15, '2016-02-04', 2),
  (69, 5, 30, '2016-02-05', 9),
  (70, 2, 32, '2016-02-05', 4),
  (71, 6, 39, '2016-02-05', 15),
  (72, 2, 8, '2016-02-05', 4),
  (73, 2, 1, '2016-02-08', 16),
  (74, 3, 27, '2016-02-08', 6),
  (75, 1, 27, '2016-02-09', 6),
  (76, 2, 26, '2016-02-09', 8),
  (77, 5, 26, '2016-02-09', 9),
  (78, 5, 43, '2016-02-09', 10),
  (79, 4, 10, '2016-02-10', 8),
  (80, 6, 11, '2016-02-10', 14),
  (81, 6, 8, '2016-02-10', 14),
  (82, 5, 31, '2016-02-10', 8),
  (83, 4, 28, '2016-02-10', 12),
  (84, 6, 8, '2016-02-10', 2),
  (85, 4, 1, '2016-02-10', 3),
  (86, 2, 44, '2016-02-10', 4),
  (87, 6, 33, '2016-02-11', 13),
  (88, 2, 33, '2016-02-11', 14),
  (89, 1, 33, '2016-02-11', 11),
  (90, 2, 30, '2016-02-11', 15),
  (91, 3, 17, '2016-02-12', 4),
  (92, 3, 40, '2016-02-12', 14),
  (93, 2, 18, '2016-02-12', 7),
  (94, 4, 32, '2016-02-12', 5),
  (95, 2, 22, '2016-02-12', 8),
  (96, 1, 24, '2016-02-12', 15),
  (97, 2, 43, '2016-02-15', 14),
  (98, 2, 27, '2016-02-15', 5),
  (99, 5, 10, '2016-02-15', 2),
  (100, 5, 4, '2016-02-15', 6),
  (101, 2, 37, '2016-02-15', 8),
  (102, 6, 30, '2016-02-15', 11),
  (103, 3, 33, '2016-02-16', 9),
  (104, 4, 34, '2016-02-16', 14),
  (105, 3, 32, '2016-02-16', 5),
  (106, 6, 30, '2016-02-16', 15),
  (107, 4, 43, '2016-02-17', 2),
  (108, 4, 25, '2016-02-17', 8),
  (109, 6, 8, '2016-02-18', 5),
  (110, 7, 28, '2016-02-18', 13),
  (111, 1, 13, '2016-02-19', 5),
  (112, 4, 20, '2016-02-19', 10),
  (113, 5, 19, '2016-02-19', 12),
  (114, 4, 17, '2016-02-19', 5),
  (115, 2, 28, '2016-02-19', 5),
  (116, 2, 29, '2016-02-19', 10),
  (117, 6, 33, '2016-02-22', 3),
  (118, 3, 20, '2016-02-22', 8),
  (119, 2, 33, '2016-02-22', 2),
  (120, 6, 39, '2016-02-22', 10),
  (121, 3, 13, '2016-02-23', 9),
  (122, 3, 30, '2016-02-23', 13),
  (123, 5, 13, '2016-02-23', 15),
  (124, 1, 28, '2016-02-23', 10),
  (125, 4, 5, '2016-02-23', 16),
  (126, 3, 25, '2016-02-23', 14),
  (127, 4, 25, '2016-02-24', 10),
  (128, 3, 39, '2016-02-24', 7),
  (129, 5, 22, '2016-02-24', 10),
  (130, 7, 35, '2016-02-24', 5),
  (131, 2, 37, '2016-02-25', 1),
  (132, 2, 29, '2016-02-25', 12),
  (133, 4, 18, '2016-02-26', 6),
  (134, 2, 11, '2016-02-26', 4),
  (135, 3, 13, '2016-02-26', 14),
  (136, 6, 32, '2016-02-26', 7),
  (137, 4, 19, '2016-02-29', 6),
  (138, 1, 16, '2016-02-29', 9),
  (139, 3, 6, '2016-02-29', 8),
  (140, 4, 19, '2016-02-29', 1),
  (141, 5, 37, '2016-03-01', 6),
  (142, 7, 35, '2016-03-01', 8),
  (143, 6, 8, '2016-03-01', 7),
  (144, 6, 19, '2016-03-01', 15),
  (145, 7, 17, '2016-03-02', 4),
  (146, 4, 4, '2016-03-02', 2),
  (147, 1, 6, '2016-03-03', 1),
  (148, 6, 18, '2016-03-03', 10),
  (149, 2, 6, '2016-03-03', 12),
  (150, 5, 5, '2016-03-03', 6),
  (151, 4, 29, '2016-03-03', 1),
  (152, 3, 44, '2016-03-03', 5),
  (153, 5, 15, '2016-03-04', 7),
  (154, 4, 25, '2016-03-04', 15),
  (155, 1, 11, '2016-03-04', 13),
  (156, 6, 12, '2016-03-04', 3),
  (157, 4, 3, '2016-03-07', 14),
  (158, 5, 12, '2016-03-07', 1),
  (159, 2, 39, '2016-03-07', 7),
  (160, 6, 23, '2016-03-07', 7),
  (161, 6, 20, '2016-03-07', 14),
  (162, 5, 27, '2016-03-07', 8),
  (163, 3, 32, '2016-03-07', 5),
  (164, 3, 17, '2016-03-07', 6),
  (165, 2, 2, '2016-03-08', 14),
  (166, 5, 36, '2016-03-08', 14),
  (167, 5, 11, '2016-03-08', 9),
  (168, 1, 23, '2016-03-08', 16),
  (169, 6, 15, '2016-03-09', 14),
  (170, 4, 15, '2016-03-09', 9),
  (171, 5, 12, '2016-03-10', 6),
  (172, 4, 43, '2016-03-10', 2),
  (173, 7, 43, '2016-03-10', 10),
  (174, 3, 11, '2016-03-10', 15),
  (175, 4, 13, '2016-03-11', 3),
  (176, 3, 4, '2016-03-11', 11),
  (177, 4, 20, '2016-03-11', 6),
  (178, 4, 28, '2016-03-11', 3),
  (179, 2, 23, '2016-03-14', 12),
  (180, 6, 34, '2016-03-14', 12),
  (181, 7, 13, '2016-03-14', 7),
  (182, 2, 35, '2016-03-14', 11),
  (183, 1, 35, '2016-03-14', 3),
  (184, 5, 4, '2016-03-14', 13),
  (185, 2, 8, '2016-03-14', 11),
  (186, 2, 13, '2016-03-14', 12),
  (187, 3, 33, '2016-03-15', 13),
  (188, 1, 21, '2016-03-15', 12),
  (189, 2, 15, '2016-03-15', 5),
  (190, 6, 30, '2016-03-15', 8),
  (191, 5, 33, '2016-03-16', 4),
  (192, 7, 41, '2016-03-16', 2),
  (193, 3, 42, '2016-03-16', 13),
  (194, 4, 11, '2016-03-16', 2),
  (195, 3, 30, '2016-03-17', 7),
  (196, 7, 8, '2016-03-17', 3),
  (197, 6, 38, '2016-03-17', 10),
  (198, 4, 13, '2016-03-17', 9),
  (199, 2, 13, '2016-03-18', 7),
  (200, 3, 22, '2016-03-18', 12),
  (201, 4, 17, '2016-03-21', 8),
  (202, 6, 41, '2016-03-21', 2),
  (203, 5, 29, '2016-03-21', 6),
  (204, 6, 38, '2016-03-21', 15),
  (205, 6, 2, '2016-03-21', 10),
  (206, 5, 13, '2016-03-21', 10),
  (207, 3, 7, '2016-03-22', 11),
  (208, 6, 4, '2016-03-22', 3),
  (209, 3, 41, '2016-03-22', 8),
  (210, 5, 43, '2016-03-22', 14),
  (211, 5, 31, '2016-03-23', 11),
  (212, 6, 16, '2016-03-23', 11),
  (213, 4, 23, '2016-03-23', 14),
  (214, 3, 25, '2016-03-23', 12),
  (215, 4, 10, '2016-03-24', 8),
  (216, 2, 5, '2016-03-24', 4),
  (217, 6, 2, '2016-03-25', 7),
  (218, 4, 6, '2016-03-25', 8),
  (219, 5, 40, '2016-03-25', 4),
  (220, 5, 5, '2016-03-25', 7),
  (221, 7, 12, '2016-03-28', 15),
  (222, 7, 34, '2016-03-28', 14),
  (223, 4, 20, '2016-03-28', 11),
  (224, 1, 14, '2016-03-28', 14),
  (225, 4, 21, '2016-03-28', 5),
  (226, 6, 3, '2016-03-28', 13),
  (227, 2, 6, '2016-03-28', 6),
  (228, 4, 24, '2016-03-28', 5),
  (229, 5, 32, '2016-03-29', 15),
  (230, 3, 2, '2016-03-29', 3),
  (231, 4, 15, '2016-03-30', 13),
  (232, 2, 5, '2016-03-30', 10),
  (233, 6, 36, '2016-03-31', 9),
  (234, 4, 37, '2016-03-31', 2),
  (235, 3, 5, '2016-03-31', 9),
  (236, 3, 32, '2016-03-31', 15),
  (237, 5, 10, '2016-04-01', 12),
  (238, 7, 40, '2016-04-01', 3),
  (239, 5, 4, '2016-04-04', 8),
  (240, 2, 30, '2016-04-04', 9),
  (241, 7, 5, '2016-04-04', 7),
  (242, 1, 13, '2016-04-04', 5),
  (243, 2, 29, '2016-04-05', 6),
  (244, 1, 8, '2016-04-05', 7),
  (245, 6, 14, '2016-04-05', 9),
  (246, 6, 11, '2016-04-05', 9),
  (247, 4, 5, '2016-04-06', 6),
  (248, 7, 2, '2016-04-06', 10),
  (249, 5, 8, '2016-04-06', 7),
  (250, 4, 31, '2016-04-06', 5),
  (251, 7, 31, '2016-04-07', 12),
  (252, 7, 42, '2016-04-07', 14),
  (253, 5, 43, '2016-04-07', 12),
  (254, 5, 8, '2016-04-07', 4),
  (255, 6, 42, '2016-04-08', 7),
  (256, 7, 5, '2016-04-08', 13),
  (257, 6, 16, '2016-04-08', 12),
  (258, 5, 31, '2016-04-08', 9),
  (259, 3, 4, '2016-04-11', 16),
  (260, 5, 42, '2016-04-11', 11),
  (261, 6, 31, '2016-04-11', 12),
  (262, 6, 37, '2016-04-11', 9),
  (263, 1, 19, '2016-04-11', 2),
  (264, 6, 28, '2016-04-11', 5),
  (265, 2, 10, '2016-04-11', 11),
  (266, 4, 6, '2016-04-11', 16),
  (267, 6, 16, '2016-04-11', 11),
  (268, 3, 7, '2016-04-11', 4),
  (269, 2, 14, '2016-04-11', 2),
  (270, 6, 1, '2016-04-11', 8),
  (271, 3, 16, '2016-04-12', 7),
  (272, 4, 40, '2016-04-12', 10),
  (273, 6, 2, '2016-04-12', 6),
  (274, 2, 16, '2016-04-12', 11),
  (275, 7, 4, '2016-04-13', 14),
  (276, 3, 43, '2016-04-13', 4),
  (277, 1, 12, '2016-04-13', 15),
  (278, 2, 11, '2016-04-13', 14),
  (279, 6, 19, '2016-04-14', 5),
  (280, 6, 35, '2016-04-14', 16),
  (281, 6, 40, '2016-04-14', 15),
  (282, 6, 26, '2016-04-14', 15),
  (283, 3, 4, '2016-04-14', 9),
  (284, 5, 2, '2016-04-14', 14),
  (285, 3, 16, '2016-04-14', 5),
  (286, 6, 35, '2016-04-14', 15),
  (287, 6, 31, '2016-04-18', 4),
  (288, 3, 18, '2016-04-18', 2),
  (289, 6, 8, '2016-04-18', 14),
  (290, 5, 11, '2016-04-18', 9),
  (291, 4, 19, '2016-04-18', 13),
  (292, 2, 30, '2016-04-18', 1),
  (293, 3, 33, '2016-04-18', 12),
  (294, 5, 15, '2016-04-18', 12),
  (295, 3, 22, '2016-04-19', 5),
  (296, 4, 4, '2016-04-19', 8),
  (297, 2, 43, '2016-04-20', 6),
  (298, 5, 2, '2016-04-20', 10),
  (299, 4, 8, '2016-04-21', 7),
  (300, 3, 21, '2016-04-21', 13),
  (301, 6, 25, '2016-04-21', 2),
  (302, 5, 12, '2016-04-21', 6),
  (303, 3, 14, '2016-04-22', 9),
  (304, 4, 22, '2016-04-22', 4),
  (305, 5, 13, '2016-04-22', 14),
  (306, 6, 31, '2016-04-22', 12),
  (307, 7, 5, '2016-04-22', 3),
  (308, 7, 14, '2016-04-22', 10),
  (309, 4, 3, '2016-04-25', 15),
  (310, 5, 32, '2016-04-25', 11),
  (311, 6, 34, '2016-04-25', 8),
  (312, 3, 22, '2016-04-25', 9),
  (313, 7, 40, '2016-04-25', 6),
  (314, 5, 23, '2016-04-25', 13),
  (315, 5, 36, '2016-04-25', 13),
  (316, 6, 37, '2016-04-25', 6),
  (317, 5, 9, '2016-04-25', 10),
  (318, 3, 21, '2016-04-25', 4),
  (319, 5, 34, '2016-04-26', 9),
  (320, 1, 17, '2016-04-26', 10),
  (321, 4, 3, '2016-04-26', 7),
  (322, 1, 25, '2016-04-26', 13),
  (323, 3, 31, '2016-04-27', 3),
  (324, 6, 6, '2016-04-27', 14),
  (325, 2, 42, '2016-04-28', 2),
  (326, 3, 15, '2016-04-28', 9),
  (327, 6, 8, '2016-04-28', 3),
  (328, 3, 5, '2016-04-28', 2),
  (329, 1, 40, '2016-04-28', 9),
  (330, 7, 20, '2016-04-28', 12),
  (331, 2, 11, '2016-04-28', 12),
  (332, 4, 36, '2016-04-28', 14),
  (333, 5, 17, '2016-04-29', 13),
  (334, 2, 6, '2016-04-29', 2),
  (335, 3, 23, '2016-05-02', 5),
  (336, 6, 11, '2016-05-02', 6),
  (337, 5, 28, '2016-05-02', 4),
  (338, 6, 30, '2016-05-02', 6),
  (339, 1, 9, '2016-05-02', 16),
  (340, 3, 24, '2016-05-02', 6),
  (341, 7, 31, '2016-05-02', 9),
  (342, 5, 2, '2016-05-02', 3),
  (343, 3, 38, '2016-05-03', 11),
  (344, 4, 5, '2016-05-03', 3),
  (345, 5, 4, '2016-05-04', 4),
  (346, 2, 4, '2016-05-04', 3),
  (347, 6, 42, '2016-05-04', 13),
  (348, 3, 19, '2016-05-04', 11),
  (349, 6, 30, '2016-05-05', 4),
  (350, 4, 3, '2016-05-05', 13),
  (351, 2, 21, '2016-05-06', 7),
  (352, 4, 29, '2016-05-06', 3),
  (353, 6, 43, '2016-05-09', 6),
  (354, 1, 42, '2016-05-09', 13),
  (355, 3, 20, '2016-05-09', 5),
  (356, 6, 9, '2016-05-09', 10),
  (357, 5, 35, '2016-05-10', 10),
  (358, 1, 18, '2016-05-10', 8),
  (359, 5, 4, '2016-05-10', 4),
  (360, 3, 20, '2016-05-10', 15),
  (361, 7, 14, '2016-05-10', 7),
  (362, 1, 15, '2016-05-10', 6),
  (363, 2, 37, '2016-05-10', 7),
  (364, 6, 25, '2016-05-10', 2),
  (365, 6, 6, '2016-05-10', 13),
  (366, 2, 27, '2016-05-10', 14),
  (367, 5, 22, '2016-05-11', 13),
  (368, 2, 23, '2016-05-11', 10),
  (369, 2, 42, '2016-05-11', 3),
  (370, 3, 1, '2016-05-11', 11),
  (371, 5, 6, '2016-05-11', 9),
  (372, 2, 38, '2016-05-11', 6),
  (373, 6, 33, '2016-05-11', 9),
  (374, 2, 28, '2016-05-11', 11),
  (375, 3, 25, '2016-05-12', 13),
  (376, 3, 16, '2016-05-12', 6),
  (377, 7, 12, '2016-05-12', 9),
  (378, 4, 31, '2016-05-12', 8),
  (379, 5, 11, '2016-05-13', 1),
  (380, 6, 2, '2016-05-13', 6),
  (381, 7, 4, '2016-05-13', 4),
  (382, 1, 32, '2016-05-13', 2),
  (383, 4, 13, '2016-05-13', 4),
  (384, 1, 20, '2016-05-13', 8),
  (385, 2, 27, '2016-05-13', 14),
  (386, 5, 43, '2016-05-13', 10),
  (387, 4, 5, '2016-05-16', 13),
  (388, 5, 28, '2016-05-16', 9),
  (389, 3, 38, '2016-05-16', 13),
  (390, 2, 27, '2016-05-16', 2),
  (391, 2, 15, '2016-05-16', 2),
  (392, 5, 43, '2016-05-16', 8),
  (393, 2, 17, '2016-05-17', 5),
  (394, 4, 21, '2016-05-17', 5),
  (395, 3, 28, '2016-05-17', 5),
  (396, 3, 15, '2016-05-17', 5),
  (397, 2, 37, '2016-05-17', 6),
  (398, 4, 42, '2016-05-17', 5),
  (399, 4, 18, '2016-05-18', 7),
  (400, 6, 7, '2016-05-18', 9),
  (401, 2, 6, '2016-05-18', 10),
  (402, 4, 32, '2016-05-18', 10),
  (403, 7, 2, '2016-05-18', 13),
  (404, 4, 4, '2016-05-18', 16),
  (405, 5, 4, '2016-05-20', 6),
  (406, 6, 29, '2016-05-20', 6),
  (407, 7, 27, '2016-05-23', 1),
  (408, 6, 44, '2016-05-23', 1),
  (409, 7, 11, '2016-05-23', 5),
  (410, 1, 27, '2016-05-23', 5),
  (411, 5, 15, '2016-05-23', 9),
  (412, 3, 15, '2016-05-23', 2),
  (413, 4, 4, '2016-05-23', 12),
  (414, 6, 18, '2016-05-23', 11),
  (415, 7, 42, '2016-05-23', 4),
  (416, 2, 23, '2016-05-23', 13),
  (417, 1, 6, '2016-05-23', 5),
  (418, 5, 28, '2016-05-23', 10),
  (419, 5, 20, '2016-05-23', 5),
  (420, 2, 20, '2016-05-23', 8),
  (421, 4, 9, '2016-05-23', 16),
  (422, 6, 17, '2016-05-23', 12),
  (423, 6, 21, '2016-05-24', 15),
  (424, 6, 11, '2016-05-24', 1),
  (425, 3, 39, '2016-05-25', 13),
  (426, 2, 3, '2016-05-25', 13),
  (427, 4, 38, '2016-05-26', 7),
  (428, 3, 35, '2016-05-26', 9),
  (429, 1, 28, '2016-05-26', 11),
  (430, 4, 1, '2016-05-26', 14),
  (431, 6, 20, '2016-05-27', 9),
  (432, 2, 37, '2016-05-27', 10),
  (433, 5, 44, '2016-05-27', 5),
  (434, 5, 27, '2016-05-27', 3),
  (435, 5, 6, '2016-05-27', 5),
  (436, 3, 19, '2016-05-27', 5),
  (437, 6, 35, '2016-05-30', 9),
  (438, 6, 8, '2016-05-30', 14),
  (439, 6, 26, '2016-05-30', 7),
  (440, 3, 4, '2016-05-30', 15),
  (441, 3, 14, '2016-05-30', 9),
  (442, 6, 11, '2016-05-30', 15),
  (443, 3, 21, '2016-05-31', 9),
  (444, 7, 17, '2016-05-31', 15),
  (445, 2, 41, '2016-06-01', 10),
  (446, 6, 26, '2016-06-01', 9),
  (447, 3, 25, '2016-06-01', 5),
  (448, 1, 5, '2016-06-01', 11),
  (449, 7, 21, '2016-06-03', 16),
  (450, 3, 17, '2016-06-03', 10),
  (451, 4, 13, '2016-06-06', 6),
  (452, 2, 37, '2016-06-06', 10),
  (453, 4, 9, '2016-06-06', 3),
  (454, 3, 15, '2016-06-06', 4),
  (455, 5, 18, '2016-06-06', 1),
  (456, 3, 41, '2016-06-06', 9),
  (457, 2, 9, '2016-06-06', 3),
  (458, 6, 42, '2016-06-06', 7),
  (459, 6, 10, '2016-06-07', 11),
  (460, 4, 42, '2016-06-07', 16),
  (461, 3, 1, '2016-06-08', 2),
  (462, 7, 6, '2016-06-08', 5),
  (463, 4, 16, '2016-06-09', 8),
  (464, 3, 25, '2016-06-09', 6),
  (465, 5, 18, '2016-06-10', 2),
  (466, 3, 44, '2016-06-10', 13),
  (467, 4, 34, '2016-06-13', 2),
  (468, 7, 32, '2016-06-13', 4),
  (469, 4, 39, '2016-06-13', 10),
  (470, 2, 5, '2016-06-13', 4),
  (471, 6, 28, '2016-06-13', 11),
  (472, 7, 12, '2016-06-13', 10),
  (473, 4, 32, '2016-06-14', 15),
  (474, 4, 22, '2016-06-14', 13),
  (475, 4, 32, '2016-06-15', 15),
  (476, 4, 22, '2016-06-15', 11),
  (477, 6, 9, '2016-06-15', 8),
  (478, 7, 23, '2016-06-15', 14),
  (479, 3, 8, '2016-06-16', 10),
  (480, 4, 4, '2016-06-16', 8),
  (481, 5, 37, '2016-06-16', 8),
  (482, 3, 21, '2016-06-16', 3),
  (483, 7, 20, '2016-06-17', 1),
  (484, 5, 38, '2016-06-17', 5),
  (485, 3, 26, '2016-06-20', 4),
  (486, 2, 20, '2016-06-20', 6),
  (487, 7, 17, '2016-06-20', 8),
  (488, 5, 24, '2016-06-20', 9),
  (489, 4, 28, '2016-06-20', 3),
  (490, 4, 17, '2016-06-20', 13),
  (491, 6, 7, '2016-06-20', 1),
  (492, 4, 33, '2016-06-20', 16),
  (493, 2, 16, '2016-06-21', 13),
  (494, 5, 4, '2016-06-21', 10),
  (495, 4, 12, '2016-06-22', 5),
  (496, 3, 38, '2016-06-22', 2),
  (497, 3, 31, '2016-06-22', 13),
  (498, 6, 38, '2016-06-22', 2),
  (499, 2, 35, '2016-06-22', 7),
  (500, 6, 16, '2016-06-22', 6),
  (501, 6, 18, '2016-06-23', 4),
  (502, 6, 41, '2016-06-23', 9),
  (503, 4, 22, '2016-06-23', 15),
  (504, 5, 39, '2016-06-23', 15),
  (505, 7, 10, '2016-06-23', 12),
  (506, 3, 41, '2016-06-23', 11),
  (507, 2, 35, '2016-06-24', 9),
  (508, 7, 27, '2016-06-24', 15),
  (509, 2, 19, '2016-06-27', 12),
  (510, 4, 22, '2016-06-27', 4),
  (511, 7, 17, '2016-06-27', 4),
  (512, 3, 15, '2016-06-27', 4),
  (513, 3, 1, '2016-06-28', 2),
  (514, 2, 30, '2016-06-28', 8),
  (515, 5, 13, '2016-06-29', 5),
  (516, 2, 12, '2016-06-29', 7),
  (517, 4, 26, '2016-06-30', 8),
  (518, 2, 41, '2016-06-30', 11),
  (519, 7, 20, '2016-06-30', 8),
  (520, 3, 43, '2016-06-30', 14),
  (521, 6, 6, '2016-07-01', 2),
  (522, 3, 31, '2016-07-01', 13),
  (523, 6, 22, '2016-07-01', 10),
  (524, 2, 42, '2016-07-01', 1),
  (525, 4, 15, '2016-07-01', 11),
  (526, 3, 9, '2016-07-01', 9),
  (527, 4, 17, '2016-07-04', 2),
  (528, 2, 4, '2016-07-04', 4),
  (529, 2, 32, '2016-07-04', 4),
  (530, 5, 19, '2016-07-04', 2),
  (531, 4, 37, '2016-07-04', 4),
  (532, 4, 14, '2016-07-04', 15),
  (533, 2, 25, '2016-07-05', 10),
  (534, 4, 6, '2016-07-05', 6),
  (535, 6, 12, '2016-07-06', 9),
  (536, 5, 24, '2016-07-06', 11),
  (537, 6, 28, '2016-07-07', 11),
  (538, 3, 26, '2016-07-07', 4),
  (539, 3, 25, '2016-07-08', 4),
  (540, 2, 27, '2016-07-08', 1),
  (541, 1, 18, '2016-07-08', 9),
  (542, 4, 27, '2016-07-08', 10),
  (543, 4, 8, '2016-07-11', 7),
  (544, 4, 29, '2016-07-11', 11),
  (545, 1, 3, '2016-07-11', 11),
  (546, 3, 24, '2016-07-11', 8),
  (547, 4, 41, '2016-07-13', 14),
  (548, 4, 43, '2016-07-13', 8),
  (549, 5, 27, '2016-07-13', 10),
  (550, 7, 17, '2016-07-13', 5),
  (551, 6, 20, '2016-07-13', 5),
  (552, 7, 43, '2016-07-13', 10),
  (553, 3, 5, '2016-07-13', 9),
  (554, 3, 37, '2016-07-13', 2),
  (555, 3, 25, '2016-07-13', 2),
  (556, 1, 20, '2016-07-13', 14),
  (557, 3, 30, '2016-07-14', 3),
  (558, 2, 3, '2016-07-14', 11),
  (559, 7, 32, '2016-07-14', 4),
  (560, 3, 17, '2016-07-14', 3),
  (561, 2, 9, '2016-07-15', 3),
  (562, 3, 38, '2016-07-15', 13),
  (563, 5, 3, '2016-07-15', 4),
  (564, 1, 26, '2016-07-15', 10),
  (565, 5, 36, '2016-07-18', 6),
  (566, 5, 20, '2016-07-18', 3),
  (567, 3, 14, '2016-07-18', 10),
  (568, 5, 5, '2016-07-18', 9),
  (569, 3, 39, '2016-07-18', 12),
  (570, 3, 28, '2016-07-18', 13),
  (571, 4, 40, '2016-07-19', 12),
  (572, 2, 10, '2016-07-19', 15),
  (573, 3, 41, '2016-07-19', 8),
  (574, 5, 6, '2016-07-19', 9),
  (575, 3, 29, '2016-07-20', 13),
  (576, 5, 29, '2016-07-20', 11),
  (577, 2, 12, '2016-07-20', 7),
  (578, 5, 2, '2016-07-20', 11),
  (579, 4, 14, '2016-07-21', 14),
  (580, 5, 40, '2016-07-21', 9),
  (581, 5, 8, '2016-07-21', 5),
  (582, 2, 3, '2016-07-21', 12),
  (583, 4, 10, '2016-07-22', 15),
  (584, 4, 35, '2016-07-22', 8),
  (585, 6, 11, '2016-07-22', 3),
  (586, 3, 36, '2016-07-22', 9),
  (587, 4, 3, '2016-07-25', 13),
  (588, 4, 10, '2016-07-25', 15),
  (589, 2, 14, '2016-07-25', 8),
  (590, 6, 34, '2016-07-25', 5),
  (591, 6, 39, '2016-07-25', 4),
  (592, 6, 2, '2016-07-25', 16),
  (593, 7, 4, '2016-07-26', 4),
  (594, 6, 42, '2016-07-26', 12),
  (595, 2, 39, '2016-07-26', 13),
  (596, 7, 39, '2016-07-26', 10),
  (597, 5, 40, '2016-07-27', 3),
  (598, 5, 23, '2016-07-27', 12),
  (599, 1, 22, '2016-07-28', 14),
  (600, 6, 7, '2016-07-28', 1),
  (601, 7, 14, '2016-07-28', 7),
  (602, 2, 37, '2016-07-28', 13),
  (603, 4, 22, '2016-07-28', 4),
  (604, 3, 13, '2016-07-28', 3),
  (605, 3, 16, '2016-08-01', 10),
  (606, 1, 26, '2016-08-01', 4),
  (607, 4, 10, '2016-08-01', 8),
  (608, 6, 40, '2016-08-01', 6),
  (609, 2, 8, '2016-08-02', 10),
  (610, 2, 25, '2016-08-02', 12),
  (611, 4, 7, '2016-08-03', 15),
  (612, 3, 43, '2016-08-03', 9),
  (613, 2, 25, '2016-08-04', 7),
  (614, 5, 17, '2016-08-04', 5),
  (615, 5, 21, '2016-08-04', 3),
  (616, 5, 8, '2016-08-04', 11),
  (617, 7, 19, '2016-08-05', 16),
  (618, 1, 35, '2016-08-05', 14),
  (619, 3, 18, '2016-08-05', 9),
  (620, 5, 19, '2016-08-05', 13),
  (621, 3, 4, '2016-08-08', 4),
  (622, 7, 25, '2016-08-08', 9),
  (623, 5, 6, '2016-08-08', 12),
  (624, 2, 27, '2016-08-08', 5),
  (625, 1, 40, '2016-08-08', 11),
  (626, 5, 3, '2016-08-08', 11),
  (627, 5, 11, '2016-08-09', 12),
  (628, 2, 4, '2016-08-09', 6),
  (629, 6, 31, '2016-08-09', 2),
  (630, 4, 9, '2016-08-09', 12),
  (631, 4, 11, '2016-08-09', 6),
  (632, 3, 39, '2016-08-09', 9),
  (633, 3, 2, '2016-08-10', 6),
  (634, 6, 6, '2016-08-10', 2),
  (635, 4, 24, '2016-08-10', 6),
  (636, 4, 29, '2016-08-10', 10),
  (637, 6, 9, '2016-08-11', 12),
  (638, 1, 1, '2016-08-11', 6),
  (639, 3, 19, '2016-08-12', 13),
  (640, 3, 22, '2016-08-12', 10),
  (641, 7, 37, '2016-08-12', 8),
  (642, 5, 21, '2016-08-12', 1),
  (643, 2, 41, '2016-08-15', 3),
  (644, 6, 14, '2016-08-15', 5),
  (645, 1, 21, '2016-08-15', 9),
  (646, 6, 28, '2016-08-15', 14),
  (647, 2, 7, '2016-08-15', 8),
  (648, 3, 6, '2016-08-15', 6),
  (649, 6, 36, '2016-08-16', 7),
  (650, 4, 28, '2016-08-16', 9),
  (651, 5, 1, '2016-08-16', 9),
  (652, 4, 6, '2016-08-16', 1),
  (653, 6, 22, '2016-08-17', 13),
  (654, 5, 42, '2016-08-17', 15),
  (655, 4, 17, '2016-08-17', 2),
  (656, 2, 32, '2016-08-17', 6),
  (657, 4, 18, '2016-08-17', 2),
  (658, 6, 11, '2016-08-17', 7),
  (659, 5, 11, '2016-08-17', 8),
  (660, 1, 5, '2016-08-17', 5),
  (661, 2, 17, '2016-08-18', 3),
  (662, 2, 9, '2016-08-18', 10),
  (663, 3, 2, '2016-08-18', 14),
  (664, 6, 21, '2016-08-18', 2),
  (665, 3, 15, '2016-08-19', 3),
  (666, 2, 21, '2016-08-19', 15),
  (667, 5, 13, '2016-08-22', 10),
  (668, 6, 18, '2016-08-22', 14),
  (669, 5, 34, '2016-08-22', 13),
  (670, 3, 22, '2016-08-22', 14),
  (671, 5, 5, '2016-08-23', 13),
  (672, 6, 28, '2016-08-23', 14),
  (673, 2, 33, '2016-08-23', 13),
  (674, 6, 4, '2016-08-23', 15),
  (675, 5, 38, '2016-08-24', 6),
  (676, 5, 28, '2016-08-24', 12),
  (677, 7, 9, '2016-08-24', 8),
  (678, 3, 15, '2016-08-24', 7),
  (679, 4, 30, '2016-08-26', 14),
  (680, 5, 44, '2016-08-26', 9),
  (681, 4, 31, '2016-08-26', 16),
  (682, 2, 17, '2016-08-26', 13),
  (683, 5, 18, '2016-08-29', 11),
  (684, 3, 10, '2016-08-29', 5),
  (685, 5, 2, '2016-08-29', 8),
  (686, 4, 15, '2016-08-29', 10),
  (687, 1, 29, '2016-08-29', 9),
  (688, 5, 19, '2016-08-29', 14),
  (689, 2, 5, '2016-08-31', 14),
  (690, 2, 9, '2016-08-31', 7),
  (691, 7, 21, '2016-09-01', 9),
  (692, 1, 31, '2016-09-01', 14),
  (693, 6, 29, '2016-09-02', 14),
  (694, 2, 20, '2016-09-02', 6),
  (695, 7, 11, '2016-09-05', 14),
  (696, 2, 20, '2016-09-05', 11),
  (697, 3, 36, '2016-09-05', 3),
  (698, 1, 20, '2016-09-05', 16),
  (699, 2, 24, '2016-09-05', 11),
  (700, 6, 1, '2016-09-05', 12),
  (701, 1, 40, '2016-09-05', 3),
  (702, 6, 36, '2016-09-05', 5),
  (703, 4, 2, '2016-09-06', 9),
  (704, 7, 39, '2016-09-06', 15),
  (705, 6, 18, '2016-09-07', 12),
  (706, 2, 30, '2016-09-07', 6),
  (707, 3, 24, '2016-09-08', 6),
  (708, 1, 35, '2016-09-08', 10),
  (709, 2, 42, '2016-09-09', 5),
  (710, 5, 14, '2016-09-09', 11),
  (711, 4, 15, '2016-09-12', 10),
  (712, 2, 36, '2016-09-12', 6),
  (713, 6, 13, '2016-09-12', 7),
  (714, 6, 9, '2016-09-12', 9),
  (715, 5, 22, '2016-09-12', 6),
  (716, 5, 35, '2016-09-12', 7),
  (717, 5, 14, '2016-09-12', 8),
  (718, 6, 8, '2016-09-12', 8),
  (719, 1, 21, '2016-09-13', 14),
  (720, 1, 24, '2016-09-13', 14),
  (721, 2, 26, '2016-09-13', 11),
  (722, 1, 8, '2016-09-13', 9),
  (723, 5, 9, '2016-09-13', 16),
  (724, 3, 18, '2016-09-13', 9),
  (725, 4, 28, '2016-09-14', 7),
  (726, 5, 10, '2016-09-14', 9),
  (727, 6, 42, '2016-09-14', 4),
  (728, 6, 32, '2016-09-14', 1),
  (729, 3, 43, '2016-09-15', 5),
  (730, 3, 32, '2016-09-15', 3),
  (731, 3, 33, '2016-09-16', 7),
  (732, 6, 36, '2016-09-16', 13),
  (733, 4, 31, '2016-09-19', 6),
  (734, 1, 1, '2016-09-19', 13),
  (735, 2, 28, '2016-09-19', 4),
  (736, 5, 40, '2016-09-19', 5),
  (737, 2, 5, '2016-09-19', 9),
  (738, 3, 31, '2016-09-19', 4),
  (739, 3, 9, '2016-09-20', 16),
  (740, 5, 13, '2016-09-20', 14),
  (741, 5, 43, '2016-09-21', 3),
  (742, 6, 43, '2016-09-21', 15),
  (743, 5, 13, '2016-09-21', 15),
  (744, 3, 27, '2016-09-21', 8),
  (745, 3, 11, '2016-09-21', 7),
  (746, 4, 32, '2016-09-21', 11),
  (747, 2, 43, '2016-09-22', 3),
  (748, 6, 30, '2016-09-22', 5),
  (749, 4, 40, '2016-09-22', 12),
  (750, 6, 21, '2016-09-22', 4),
  (751, 4, 30, '2016-09-26', 5),
  (752, 6, 20, '2016-09-26', 7),
  (753, 1, 17, '2016-09-26', 3),
  (754, 4, 36, '2016-09-26', 15),
  (755, 7, 23, '2016-09-26', 15),
  (756, 3, 5, '2016-09-26', 15),
  (757, 7, 8, '2016-09-26', 16),
  (758, 4, 23, '2016-09-26', 5),
  (759, 1, 34, '2016-09-27', 15),
  (760, 6, 40, '2016-09-27', 15),
  (761, 5, 40, '2016-09-28', 1),
  (762, 6, 17, '2016-09-28', 3),
  (763, 7, 23, '2016-09-28', 9),
  (764, 5, 34, '2016-09-28', 12),
  (765, 5, 21, '2016-09-28', 3),
  (766, 3, 17, '2016-09-28', 7),
  (767, 2, 8, '2016-09-29', 2),
  (768, 5, 9, '2016-09-29', 11),
  (769, 6, 40, '2016-09-29', 9),
  (770, 2, 29, '2016-09-29', 15),
  (771, 5, 7, '2016-09-30', 7),
  (772, 5, 44, '2016-09-30', 13),
  (773, 3, 42, '2016-09-30', 15),
  (774, 4, 1, '2016-09-30', 13),
  (775, 2, 2, '2016-10-03', 12),
  (776, 2, 30, '2016-10-03', 9),
  (777, 7, 22, '2016-10-03', 15),
  (778, 4, 31, '2016-10-03', 9),
  (779, 2, 12, '2016-10-03', 5),
  (780, 2, 9, '2016-10-03', 9),
  (781, 4, 4, '2016-10-04', 6),
  (782, 5, 27, '2016-10-04', 9),
  (783, 6, 32, '2016-10-05', 2),
  (784, 3, 15, '2016-10-05', 14),
  (785, 2, 36, '2016-10-05', 8),
  (786, 5, 6, '2016-10-05', 10),
  (787, 1, 40, '2016-10-06', 13),
  (788, 5, 30, '2016-10-06', 11),
  (789, 4, 39, '2016-10-06', 2),
  (790, 2, 2, '2016-10-06', 4),
  (791, 3, 5, '2016-10-06', 7),
  (792, 3, 4, '2016-10-06', 6),
  (793, 7, 41, '2016-10-07', 16),
  (794, 3, 8, '2016-10-07', 12),
  (795, 5, 35, '2016-10-07', 2),
  (796, 4, 32, '2016-10-07', 4),
  (797, 4, 36, '2016-10-07', 14),
  (798, 3, 29, '2016-10-07', 9),
  (799, 4, 18, '2016-10-10', 7),
  (800, 3, 34, '2016-10-10', 16),
  (801, 7, 17, '2016-10-11', 10),
  (802, 4, 4, '2016-10-11', 2),
  (803, 6, 12, '2016-10-11', 7),
  (804, 5, 14, '2016-10-11', 8),
  (805, 5, 24, '2016-10-12', 10),
  (806, 4, 19, '2016-10-12', 3),
  (807, 6, 10, '2016-10-13', 2),
  (808, 4, 12, '2016-10-13', 14),
  (809, 5, 4, '2016-10-14', 4),
  (810, 2, 8, '2016-10-14', 9),
  (811, 2, 14, '2016-10-14', 9),
  (812, 2, 31, '2016-10-14', 2),
  (813, 6, 36, '2016-10-17', 8),
  (814, 6, 23, '2016-10-17', 12),
  (815, 3, 13, '2016-10-17', 12),
  (816, 5, 17, '2016-10-17', 7),
  (817, 2, 7, '2016-10-17', 7),
  (818, 3, 1, '2016-10-17', 11),
  (819, 6, 35, '2016-10-17', 12),
  (820, 6, 15, '2016-10-17', 5),
  (821, 5, 2, '2016-10-17', 16),
  (822, 6, 15, '2016-10-17', 8),
  (823, 6, 24, '2016-10-18', 11),
  (824, 3, 3, '2016-10-18', 13),
  (825, 4, 7, '2016-10-18', 2),
  (826, 2, 20, '2016-10-18', 15),
  (827, 3, 36, '2016-10-19', 8),
  (828, 2, 1, '2016-10-19', 14),
  (829, 7, 28, '2016-10-19', 14),
  (830, 4, 12, '2016-10-19', 10),
  (831, 6, 22, '2016-10-20', 10),
  (832, 2, 26, '2016-10-20', 13),
  (833, 2, 41, '2016-10-20', 15),
  (834, 3, 15, '2016-10-20', 9),
  (835, 3, 28, '2016-10-21', 6),
  (836, 3, 42, '2016-10-21', 10),
  (837, 7, 39, '2016-10-21', 8),
  (838, 5, 24, '2016-10-21', 9),
  (839, 6, 37, '2016-10-24', 5),
  (840, 2, 43, '2016-10-24', 14),
  (841, 5, 27, '2016-10-24', 12),
  (842, 7, 13, '2016-10-24', 6),
  (843, 4, 14, '2016-10-24', 14),
  (844, 3, 18, '2016-10-24', 11),
  (845, 4, 17, '2016-10-24', 6),
  (846, 7, 5, '2016-10-24', 4),
  (847, 6, 35, '2016-10-24', 15),
  (848, 2, 29, '2016-10-24', 6),
  (849, 3, 39, '2016-10-26', 7),
  (850, 6, 30, '2016-10-26', 7),
  (851, 2, 38, '2016-10-26', 15),
  (852, 3, 21, '2016-10-26', 14),
  (853, 3, 10, '2016-10-26', 5),
  (854, 6, 2, '2016-10-26', 7),
  (855, 6, 35, '2016-10-27', 6),
  (856, 2, 14, '2016-10-27', 3),
  (857, 6, 27, '2016-10-28', 12),
  (858, 5, 31, '2016-10-28', 9),
  (859, 2, 8, '2016-10-28', 3),
  (860, 5, 15, '2016-10-28', 10),
  (861, 5, 27, '2016-10-31', 2),
  (862, 2, 28, '2016-10-31', 6),
  (863, 5, 7, '2016-10-31', 16),
  (864, 6, 35, '2016-10-31', 9),
  (865, 1, 29, '2016-10-31', 7),
  (866, 6, 13, '2016-10-31', 14),
  (867, 6, 1, '2016-11-01', 9),
  (868, 4, 16, '2016-11-01', 5),
  (869, 7, 7, '2016-11-02', 12),
  (870, 4, 33, '2016-11-02', 2),
  (871, 2, 2, '2016-11-02', 3),
  (872, 5, 9, '2016-11-02', 16),
  (873, 4, 33, '2016-11-02', 15),
  (874, 2, 33, '2016-11-02', 5),
  (875, 2, 34, '2016-11-02', 8),
  (876, 3, 17, '2016-11-02', 2),
  (877, 1, 19, '2016-11-03', 5),
  (878, 3, 27, '2016-11-03', 1),
  (879, 3, 18, '2016-11-03', 2),
  (880, 5, 19, '2016-11-03', 8),
  (881, 7, 15, '2016-11-04', 9),
  (882, 2, 36, '2016-11-04', 3),
  (883, 5, 3, '2016-11-07', 15),
  (884, 6, 23, '2016-11-07', 3),
  (885, 2, 39, '2016-11-07', 10),
  (886, 3, 43, '2016-11-07', 10),
  (887, 6, 26, '2016-11-09', 14),
  (888, 4, 43, '2016-11-09', 8),
  (889, 4, 9, '2016-11-09', 13),
  (890, 6, 22, '2016-11-09', 9),
  (891, 6, 13, '2016-11-09', 15),
  (892, 2, 13, '2016-11-09', 8),
  (893, 4, 2, '2016-11-10', 9),
  (894, 2, 29, '2016-11-10', 15),
  (895, 2, 40, '2016-11-11', 13),
  (896, 2, 15, '2016-11-11', 14),
  (897, 1, 33, '2016-11-11', 3),
  (898, 2, 3, '2016-11-11', 5),
  (899, 4, 3, '2016-11-11', 16),
  (900, 6, 7, '2016-11-11', 11);

INSERT INTO kiszallitasok (sorsz, gyumleid, partnerid, datum, karton) VALUES 
  (901, 7, 37, '2016-11-14', 10),
  (902, 4, 19, '2016-11-14', 14),
  (903, 3, 20, '2016-11-14', 6),
  (904, 5, 10, '2016-11-14', 4),
  (905, 2, 26, '2016-11-14', 15),
  (906, 3, 35, '2016-11-14', 6),
  (907, 3, 20, '2016-11-14', 15),
  (908, 3, 37, '2016-11-14', 1),
  (909, 2, 18, '2016-11-15', 8),
  (910, 5, 9, '2016-11-15', 6),
  (911, 2, 2, '2016-11-15', 12),
  (912, 2, 29, '2016-11-15', 7),
  (913, 1, 36, '2016-11-15', 4),
  (914, 7, 38, '2016-11-15', 13),
  (915, 1, 28, '2016-11-16', 5),
  (916, 5, 3, '2016-11-16', 14),
  (917, 1, 44, '2016-11-16', 12),
  (918, 4, 38, '2016-11-16', 5),
  (919, 5, 40, '2016-11-17', 8),
  (920, 6, 5, '2016-11-17', 4),
  (921, 6, 27, '2016-11-18', 6),
  (922, 5, 23, '2016-11-18', 11),
  (923, 2, 5, '2016-11-18', 1),
  (924, 3, 19, '2016-11-18', 11),
  (925, 5, 5, '2016-11-18', 8),
  (926, 1, 7, '2016-11-18', 2),
  (927, 5, 14, '2016-11-21', 6),
  (928, 1, 38, '2016-11-21', 5),
  (929, 5, 41, '2016-11-21', 13),
  (930, 7, 19, '2016-11-21', 6),
  (931, 3, 24, '2016-11-21', 4),
  (932, 1, 7, '2016-11-21', 13),
  (933, 5, 18, '2016-11-21', 3),
  (934, 7, 26, '2016-11-21', 11),
  (935, 1, 28, '2016-11-22', 2),
  (936, 1, 19, '2016-11-22', 13),
  (937, 3, 5, '2016-11-22', 8),
  (938, 7, 25, '2016-11-22', 14),
  (939, 4, 23, '2016-11-22', 14),
  (940, 5, 11, '2016-11-22', 12),
  (941, 3, 18, '2016-11-23', 8),
  (942, 1, 29, '2016-11-23', 5),
  (943, 4, 3, '2016-11-23', 14),
  (944, 2, 9, '2016-11-23', 5),
  (945, 4, 14, '2016-11-24', 10),
  (946, 6, 7, '2016-11-24', 4),
  (947, 1, 25, '2016-11-24', 12),
  (948, 7, 4, '2016-11-24', 4),
  (949, 4, 27, '2016-11-28', 10),
  (950, 7, 13, '2016-11-28', 13),
  (951, 4, 32, '2016-11-28', 13),
  (952, 5, 30, '2016-11-28', 9),
  (953, 4, 7, '2016-11-28', 11),
  (954, 7, 32, '2016-11-28', 13),
  (955, 4, 11, '2016-11-29', 2),
  (956, 6, 37, '2016-11-29', 4),
  (957, 6, 21, '2016-11-29', 8),
  (958, 3, 35, '2016-11-29', 13),
  (959, 6, 35, '2016-11-30', 15),
  (960, 3, 4, '2016-11-30', 15),
  (961, 1, 39, '2016-11-30', 12),
  (962, 1, 12, '2016-11-30', 8),
  (963, 4, 8, '2016-12-01', 11),
  (964, 7, 4, '2016-12-01', 10),
  (965, 6, 9, '2016-12-02', 14),
  (966, 3, 32, '2016-12-02', 6),
  (967, 2, 40, '2016-12-05', 2),
  (968, 5, 24, '2016-12-05', 15),
  (969, 2, 43, '2016-12-05', 4),
  (970, 5, 9, '2016-12-05', 9),
  (971, 7, 2, '2016-12-05', 7),
  (972, 6, 17, '2016-12-05', 5),
  (973, 3, 10, '2016-12-05', 9),
  (974, 7, 27, '2016-12-05', 6),
  (975, 4, 21, '2016-12-06', 7),
  (976, 7, 30, '2016-12-06', 2),
  (977, 1, 43, '2016-12-07', 10),
  (978, 4, 41, '2016-12-07', 15),
  (979, 7, 12, '2016-12-08', 10),
  (980, 1, 15, '2016-12-08', 4),
  (981, 6, 12, '2016-12-08', 12),
  (982, 4, 8, '2016-12-08', 2),
  (983, 1, 13, '2016-12-08', 12),
  (984, 2, 26, '2016-12-08', 2),
  (985, 7, 2, '2016-12-09', 12),
  (986, 2, 7, '2016-12-09', 11),
  (987, 5, 36, '2016-12-12', 5),
  (988, 6, 21, '2016-12-12', 10),
  (989, 5, 41, '2016-12-12', 14),
  (990, 3, 43, '2016-12-12', 3),
  (991, 1, 27, '2016-12-12', 16),
  (992, 6, 7, '2016-12-12', 5),
  (993, 5, 4, '2016-12-12', 9),
  (994, 2, 40, '2016-12-12', 4),
  (995, 7, 10, '2016-12-13', 6),
  (996, 1, 38, '2016-12-13', 15),
  (997, 5, 32, '2016-12-13', 7),
  (998, 5, 30, '2016-12-13', 3),
  (999, 4, 30, '2016-12-13', 12),
  (1000, 3, 22, '2016-12-13', 14),
  (1001, 5, 36, '2016-12-15', 11),
  (1002, 6, 37, '2016-12-15', 11),
  (1003, 6, 22, '2016-12-15', 12),
  (1004, 1, 2, '2016-12-15', 7),
  (1005, 5, 5, '2016-12-15', 7),
  (1006, 5, 21, '2016-12-15', 3),
  (1007, 3, 13, '2016-12-15', 8),
  (1008, 3, 7, '2016-12-15', 14),
  (1009, 3, 4, '2016-12-19', 12),
  (1010, 5, 35, '2016-12-19', 8),
  (1011, 1, 30, '2016-12-19', 12),
  (1012, 6, 20, '2016-12-19', 8),
  (1013, 6, 26, '2016-12-19', 15),
  (1014, 2, 43, '2016-12-19', 2),
  (1015, 6, 42, '2016-12-19', 16),
  (1016, 2, 32, '2016-12-19', 12),
  (1017, 4, 40, '2016-12-20', 4),
  (1018, 2, 34, '2016-12-20', 7),
  (1019, 2, 32, '2016-12-21', 8),
  (1020, 1, 40, '2016-12-21', 4),
  (1021, 3, 40, '2016-12-21', 1),
  (1022, 2, 26, '2016-12-21', 8),
  (1023, 3, 15, '2016-12-21', 12),
  (1024, 2, 30, '2016-12-21', 5);