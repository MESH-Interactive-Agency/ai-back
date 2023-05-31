TRUNCATE TABLE users, floor_materials, ceiling_materials, wall_materials, other_materials, ceiling_products, baffle_units, wall_products, recommended_reverb_times ;

INSERT INTO users (id, user_name, full_name, password,  date_created)
VALUES

  (1, 'Demo', 'Demo', '$2a$12$nWn9FFfvnRYRPeV7nWej.uGITxh347TMwIicz0Y9CkOPvTexO.HM6',  '2020-09-04 19:02:53');

INSERT INTO floor_materials (id, descript, hz125, hz250, hz500, hz1000, hz2000, hz4000, nrc)
VALUES 
  (1, 'Select Material',	0,	0,	0,	0,	0,	0,	0),
  (2, 'Concrete - unpainted',	0.01,	0.02,	0.04,	0.06,	0.08,	0.10,	0.06),
  (3, 'Concrete - painted or sealed',	0.01,	0.01,	0.02,	0.02,	0.02,	0.02,	0.01),
  (4, 'Marble, glazed tile or Terazzo',	0.01,	0.01,	0.01,	0.01,	0.02,	0.02,	0.01),
  (5, 'Linoleum or tile',	0.02,	0.03,	0.03,	0.03,	0.03,	0.02,	0.05),
  (6, 'Carpet - 3/8" pile on felt pad on concrete',	0.11,	0.14,	0.37,	0.43,	0.27,	0.25,	0.30),
  (7, 'Carpet - indoor/outdoor on concrete',	0.01,	0.05,	0.10,	0.20,	0.45,	0.65,	0.20),
  (8, 'Carpet - Heavy on concrete',	0.02,	0.06,	0.14,	0.37,	0.60,	0.65,	0.30),
  (9, 'Wood Flooring on concrete',	0.04,	0.04,	0.07,	0.06,	0.06,	0.07,	0.06),
  (10, 'Wood Flooring on joists',	0.15,	0.11,	0.10,	0.07,	0.06,	0.07,	0.09);

INSERT INTO ceiling_materials (id, descript, hz125, hz250, hz500, hz1000, hz2000, hz4000, nrc)
VALUES 
  (1, 'Select Material',	0,	0,	0,	0,	0,	0,	0),
  (2, 'Concrete - unpainted',	0.01,	0.02,	0.04,	0.06,	0.08,	0.10,	0.06),
  (3, 'Concrete - painted or sealed',	0.01,	0.01,	0.02,	0.02,	0.02,	0.02,	0.01),
  (4, 'Wood Roof Deck',	0.24,	0.19,	0.14,	0.08,	0.13,	0.10,	0.14),
  (5, 'Steel',	0.05,	0.10,	0.10,	0.10,	0.07,	0.02,	0.10),
  (6, 'Corrugated Metal Deck - Plain',	0.05,	0.10,	0.10,	0.10,	0.07,	0.06,	0.11),
  (7, 'Corrugated Metal Deck - Insulated',	0.11,	0.20,	0.63,	1.04,	0.66,	0.36,	0.65),
  (8, 'Plaster - on lath',	0.14,	0.10,	0.06,	0.05,	0.04,	0.03,	0.05),
  (9, 'Spray-On Cellulose 1" thick',	0.08,	0.29,	0.75,	0.98,	0.93,	0.76,	0.74),
  (10, 'Acoustical Lay-in Tile, Fissured', 0.10,	0.60,	0.80,	0.82,	0.78,	0.60,	0.75),
  (11, 'TECTUM - 1"',	0.15,	0.25,	0.40, 0.55,	0.60,	0.60,	0.45);

INSERT INTO wall_materials (id, descript, hz125, hz250, hz500, hz1000, hz2000, hz4000, nrc)
VALUES 
  (1, 'Select Material',	0,	0,	0,	0,	0,	0,	0),
  (2, 'Concrete - unpainted',	0.01,	0.02,	0.04,	0.06,	0.08,	0.10,	0.06),
  (3, 'Concrete - painted or sealed', 0.01,	0.01,	0.02,	0.02,	0.02,	0.02,	0.01),
  (4, 'Concrete Block - painted',	0.10,	0.05,	0.06,	0.07,	0.09,	0.08,	0.05),
  (5, 'Concrete Block - unpainted', 0.36,	0.44,	0.31,	0.29,	0.39,	0.25,	0.42),
  (6, 'Brick - unpainted', 0.03, 0.03,0.03,	0.04,	0.05,	0.07,	0.05),
  (7, 'Brick - painted', 0.01, 0.01, 0.02,	0.02,	0.02,	0.03,	0.02),
  (8, 'SOUNDBLOX - painted',	0.20,	0.88,	0.63,	0.65,	0.52,	0.43,	0.67),
  (9, 'Plaster - on lath',	0.14,	0.10,	0.06,	0.05,	0.04,	0.03,	0.05),
  (10, 'Plaster - on masonry',	0.12,	0.09,	0.07,	0.05,	0.05,	0.04,	0.05),
  (11, 'Gypsum 1 layer on studs',	0.29,	0.01,	0.05,	0.04,	0.07,	0.09,	0.05),
  (12, 'Gypsum Partition',	0.28,	0.12,	0.10,	0.07,	0.13,	0.09,	0.10),
  (13, 'Plywood',	0.28,	0.22,	0.17,	0.09,	0.10,	0.11,	0.15),
  (14, 'Metal - perforated 13% open, 2" batts',	0.25,	0.64,	0.99,	0.97,	0.88,	0.92,	0.87),
  (15, 'Drapery (10 oz) flat against wall',	0.04,	0.05,	0.11,	0.18,	0.30,	0.35,	0.24),
  (16, 'Drapery (14 oz) flat against wall', 0.05,	0.07,	0.13,	0.22,	0.32,	0.35,	0.27),
  (17, 'Drapery (14 oz) pleated',	0.07,	0.31,	0.49,	0.75,	0.70,	0.60,	0.71);

INSERT INTO other_materials (id, descript, hz125, hz250, hz500, hz1000, hz2000, hz4000, nrc)
VALUES 
  (1, 'Select Material',	0,	0,	0,	0,	0,	0,	0),
  (2, 'Door - hollow metal',	0.02,	0.03,	0.03,	0.05,	0.05,	0.07,	0.04),
  (3, 'Door - rollup',	0.02,	0.02,	0.03,	0.04,	0.05,	0.07,	0.04),
  (4, 'Door - wood',	0.58,	0.22,	0.07,	0.04,	0.03,	0.07,	0.09),
  (5, 'Commercial Glass with Shades',	0.35,	0.25,	0.18,	0.12,	0.10,	0.08,	0.20),
  (6, 'Glass - 1/4" Plate Glass',	0.18,	0.06,	0.04,	0.03,	0.02,	0.02,	0.04),
  (7, 'Glass -  laminated',	0.18,	0.06,	0.04,	0.03,	0.02,	0.02,	0.04),
  (8, 'Glass - Ordinary Residential Type',	0.35,	0.25,	0.18,	0.12,	0.07,	0.04,	0.15),
  (9, 'Inventory, Storage, Packaging, WIP',	0.45,	0.18,	0.07,	0.05,	0.03,	0.07,	0.08),
  (10, 'Machinery',	0.05,	0.10,	0.10,	0.10,	0.07,	0.02,	0.10),
  (11, 'Water Surface - Swimming Pool',	0.01,	0.01,	0.01,	0.02,	0.02,	0.03,	0.00),
  (12, 'Open Area',	0.08,	0.08,	0.05,	0.25,	0.25,	0.30,	0.40);

INSERT INTO ceiling_products (id, descript, w, l, hz125, hz250, hz500, hz1000, hz2000, hz4000, nrc)
VALUES 
  (1, 'Select Product',	0, 0, 0, 0,	0, 0, 0, 0,	0),
  (2, 'Eco-Sonic Standard 1"', 48, 96, 0.09, 0.40,	0.86,	1.17,	1.11,	1.09,	0.90),
  (3, 'Eco-Sonic Standard 2"', 48, 96, 0.29, 0.95, 1.28,	1.27,	1.16,	1.14,	1.15),
  (4, 'Eco-Sonic Tackable 1 1/8"', 48, 96, 0.19,	0.64,	1.00,	1.21,	1.09,	1.08,	1.00),
  (5, 'Eco-Sonic Tackable 2 1/8"', 48, 96, 0.41,	1.06,	1.27,	1.24,	1.12,	1.10,	1.15),
  (6, 'Hushtone - Bright Beam', 48, 24, 0.53,	0.74,	1.06,	1.54,	1.77,	1.94,	1.30),
  (7, 'Hushtone - Hush Beam',	48, 24, 0.53,	0.74,	1.06,	1.54,	1.77,	1.94,	1.30),
  (8, 'Hushtone - Zeppelin', null , null, 0.53,	0.74,	1.06,	1.54,	1.77, 1.94,	1.30),
  (9, 'Sonic Basic Plus 1"', 48, 96, 0.17,	0.46,	0.97,	1.06,	1.00,	1.04,	0.85),
  (10, 'Sonic Basic Plus 2"', 48, 96, 0.36,	0.86,	1.09,	1.04,	0.97,	0.95,	1.00),
  (11, 'Sonic Radius 1 1/16"', 48, 96, 0.15,	0.32,	0.88,	1.18,	1.16,	1.06,	0.90),
  (12, 'Sonic Radius 2 1/16"', 48, 96, 0.39,	0.82,	1.25,	1.18,	1.16,	1.10,	1.10),
  (13, 'Sonic Reflective 1"',	48, 96, 0.24,	0.40,	0.21,	0.21,	0.23,	0.21,	0.25),
  (14, 'Sonic Standard 1 1/2"', 48, 96, 0.24,	0.68,	1.07,	0.99,	1.00,	1.02,	0.95),
  (15, 'Sonic Standard 1"',	48, 96, 0.19,	0.44,	1.00,	1.06,	1.00,	1.05,	0.90),
  (16, 'Sonic Standard 2"',	48, 96, 0.38,	0.79,	1.08,	1.02,	1.01,	1.05,	1.00),
  (17, 'Sonic Standard 3/4"', 48, 96, 0.05,	0.19,	0.46,	0.85,	0.97,	0.97,	0.60),
  (18, 'Sonic Standard 4"', 48, 96, 0.63,	1.41,	1.33,	1.33,	1.23,	1.20,	1.35),
  (19, 'Sonic Tackable HI 1 1/8"',48, 96, 0.12,	0.60,	0.97,	1.17,	1.06,	1.04,	0.95),
  (20, 'Sonic Tackable HI 2 1/8"',48, 96, 0.39,	1.02,	1.02,	1.01,	0.96,	0.96,	1.00),
  (21, 'Sonic Tackable HI 3 1/8"', 48, 96, 0.88,	1.27,	1.22,	1.22,	1.18,	1.12,	1.20),
  (22, 'Sonic Ultra HI 1 1/16"',48, 96, 0.15,	0.32,	0.88,	1.18,	1.16,	1.06,	0.90),
  (23, 'Sonic Ultra HI 2 1/16"', 48, 96, 0.39,	0.82,	1.25,	1.18,	1.16,	1.10,	1.10),
  (24, 'Sonic Ultra Plus HI 1 1/8"', 48, 96, 0.10,	0.28,	0.80,	1.17,	1.14,	1.08,	0.85),
  (25, 'Sonic Ultra Plus HI 2 1/8"',48, 96, 0.29,	0.96,	1.16,	1.13,	1.05,	0.95,	1.05);

INSERT INTO baffle_units (id, descript, w, l, hz125, hz250, hz500, hz1000, hz2000, hz4000, nrc)
VALUES 
  (1, 'Select Product', null, null,	0,	0,	0,	0,	0,	0,	0),
  (2, 'Duel Core Baffle 2"', 48, 24, 0.25,	0.56,	1.29,	1.61,	1.62,	1.61,	1.27),
  (3, 'Single Core Baffle 1"', 48, 24, 0.24,	0.61,	0.98,	1.53,	1.73,	1.65,	1.21),
  (4, 'Single Core Baffle 2"', 48, 24, 0.31,	0.69,	1.45,	1.95,	1.86,	1.78,	1.49);

INSERT INTO wall_products (id, descript, w, l, hz125, hz250, hz500, hz1000, hz2000, hz4000, nrc)
VALUES 

(1, 'Select Product',null,null,	0,	0,	0,	0,	0,	0,	0),
(2, 'Eco-Sonic Standard 1"', 48, 96,	0.09,	0.40,	0.86,	1.17,	1.11,	1.09,	0.90),
(3, 'Eco-Sonic Standard 2"', 48,96,	0.29,	0.95,	1.28,	1.27,	1.16,	1.14,	1.15),
(4,'Eco-Sonic Tackable 1 1/8"', 48, 96, 0.19,	0.64,	1.00,	1.21,	1.09,	1.08,	1.00),
(5, 'Eco-Sonic Tackable 2 1/8"', 48, 96, 0.41,	1.06,	1.27,	1.24,	1.12,	1.10,	1.15),
(6, 'Hushtone - Hush Hex', 15, 13, 0.03,	0.07,	0.29,	0.60,	0.76,	0.86,	0.45),
(7, 'Hushtone - Subway',	48,	24,	0.04,	0.04,	0.16,	0.40,	0.63,	0.82,	0.30),
(8, 'Hushtone - Zeppelin Bright', null, null,	0.53,	0.74,	1.06,	1.54,	1.77,	1.94,	1.30),
(9, 'Radius Diffusers - A Mounting', null, null, 0.48,	0.12,	0.10,	0.05,	0.03,	0.03,	0.10),
(10, 'Radius Diffusers - E400 Mounting', null, null,	0.36,	0.15,	0.09,	0.07,	0.08,	0.10,	0.10),
(11, 'Soft Tone 50 - 1/2"',	48,	96,	0.10,	0.20,	0.35,	0.44,	0.55,	0.60,	0.40),
(12, 'Soft Tone 60 - 3/4"',	48,	96,	0.16,	0.33,	0.48,	0.56,	0.69,	0.70,	0.50),
(13, 'Sonic Basic Plus 1"',	48,	96,	0.17,	0.46,	0.97,	1.06,	1.00,	1.04,	0.85),
(14, 'Sonic Basic Plus 2"',	48,	96,	0.36,	0.86,	1.09,	1.04,	0.97,	0.95,	1.00),
(15, 'Sonic Design Form - Arch (M)',	9,	24,	0.90,	1.11,	1.35,	1.30,	1.22,	1.14,	1.25),
(16, 'Sonic Design Form - Diamond',	13.875, 24,	0.36,	0.67,	0.98,	1.03,	0.99,	0.96,	0.90),
(17, 'Sonic Design Form - Keystone (M)',	24,	30,	0.51,	0.83,	1.13,	1.13,	1.11,	1.03,	1.05),
(18, 'Sonic Design Form - Wedge (M)',	18, 36,	0.90,	1.06,	1.25,	1.20,	1.14,	1.13,	1.15),
(19, 'Sonic Radius 1 1/16"',	48,	96,	0.15,	0.32,	0.88,	1.18,	1.16,	1.06,	0.90),
(20, 'Sonic Radius 2 1/16"',	48,	96,	0.39,	0.82,	1.25,	1.18,	1.16,	1.10,	1.10),
(21, 'Sonic Reflective 1"',	48,	96,	0.24,	0.40,	0.21,	0.21,	0.23,	0.21,	0.25),
(22, 'Sonic Standard 1 1/2"',	48,	96,	0.24,	0.68,	1.07,	0.99,	1.00,	1.02,	0.95),
(23, 'Sonic Standard 1"',	48,	96,	0.19,	0.44,	1.00,	1.06,	1.00,	1.05,	0.90),
(24, 'Sonic Standard 2"',	48,	96,	0.38,	0.79,	1.08,	1.02,	1.01,	1.05,	1.00),
(25, 'Sonic Standard 3/4"',	48,	96,	0.05,	0.19,	0.46,	0.85,	0.97,	0.97,	0.60),
(26, 'Sonic Standard 4"',	48,	96,	0.63,	1.41,	1.33,	1.33,	1.23,	1.20,	1.35),
(27, 'Sonic Tackable HI 1 1/8"',	48,	96,	0.12,	0.60,	0.97,	1.17,	1.06,	1.04,	0.95),
(28, 'Sonic Tackable HI 2 1/8"',	48,	96,	0.39,	1.02,	1.02,	1.01,	0.96,	0.96,	1.00),
(29, 'Sonic Tackable HI 3 1/8"',	48,	96,	0.88,	1.27,	1.22,	1.22,	1.18,	1.12,	1.20),
(30, 'Sonic Ultra HI 1 1/16"',	48,	96,	0.15,	0.32,	0.88,	1.18,	1.16,	1.06,	0.90),
(31, 'Sonic Ultra HI 2 1/16"',	48,	96,	0.39,	0.82,	1.25,	1.18,	1.16,	1.10,	1.10),
(32, 'Sonic Ultra Plus HI 1 1/8"',	48,	96,	0.10,	0.28,	0.80,	1.17,	1.14,	1.08,	0.85),
(33, 'Sonic Ultra Plus HI 2 1/8"',	48,	96,	0.29,	0.96,	1.16,	1.13,	1.05,	0.95,	1.05),
(34, 'Sound Sucker 2"',	48,	96,	0.39,	0.79,	1.17,	1.05,	0.95,	0.74,	1.00);


INSERT INTO recommended_reverb_times (id, descript, min, max)
VALUES	
(1, 'Enter or select target reverb time', 0,0),			
(2,	'OPEN OFFICE: 0.5-0.8', 0.50, 0.80),
(3,	'PRIVATE OFFICE: 0.6-0.8', 0.60,	0.80),
(4,	'RECEPTION AREA: 0.6-1.0',	0.60,	1.00),
(5, 'CONFERENCE ROOM: 0.4-0.7', 0.40, 0.70),
(6,	'RESTAURANT: 0.5-0.7',	0.50,	0.70),
(7,	'CAFETERIA: 0.5-1.0',	0.50,	1.00),
(8,	'BAR WITH MUSIC: 0.8-1.0',	0.80,	1.00),
(9,	'CLASSROOM: 0.4-0.6',	0.40,	0.60),
(10, 'GYMNASIUM, SPORTS: 1.2-1.5', 1.20, 1.50),
(11, 'MUSIC PRACTICE: 1.5-2.5', 1.50,	2.50),
(12, 'CHURCH - Small to Medium: 2-10', 2.00,	10.00),
(13, 'CHURCH - Large: 6-10', 6.00, 10.00),
(14, 'RECORDING STUDIO: 0.2-0.3', 0.20,	0.30),
(15, 'INDUSTRIAL WAREHOUSE: 0.7-1.0', 0.70, 1.00),
(16, 'INDUSTRIAL "IN-PLANT": 1.4-1.7', 1.40, 1.70);
