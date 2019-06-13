
DROP TABLE IF EXISTS muhammad.`tmp_codelist`;
CREATE TEMPORARY TABLE muhammad.`tmp_codelist`(
        medcode INT(15),
        category INT(2),
        PRIMARY KEY( medcode ) );


INSERT INTO muhammad.`tmp_codelist` (medcode,category) VALUES (21713, 2); 
INSERT INTO muhammad.`tmp_codelist` (medcode,category) VALUES (7885, 2); 
INSERT INTO muhammad.`tmp_codelist` (medcode,category) VALUES (71453, 3); 
INSERT INTO muhammad.`tmp_codelist` (medcode,category) VALUES (25383, 3); 
INSERT INTO muhammad.`tmp_codelist` (medcode,category) VALUES (60104, 3); 
INSERT INTO muhammad.`tmp_codelist` (medcode,category) VALUES (100592, 3); 
INSERT INTO muhammad.`tmp_codelist` (medcode,category) VALUES (40963, 3); 
INSERT INTO muhammad.`tmp_codelist` (medcode,category) VALUES (9494, 3); 
INSERT INTO muhammad.`tmp_codelist` (medcode,category) VALUES (58630, 3); 
INSERT INTO muhammad.`tmp_codelist` (medcode,category) VALUES (5129, 3); 
INSERT INTO muhammad.`tmp_codelist` (medcode,category) VALUES (17330, 4); 
INSERT INTO muhammad.`tmp_codelist` (medcode,category) VALUES (7602, 4); 
INSERT INTO muhammad.`tmp_codelist` (medcode,category) VALUES (7943, 4); 
INSERT INTO muhammad.`tmp_codelist` (medcode,category) VALUES (8363, 4); 
INSERT INTO muhammad.`tmp_codelist` (medcode,category) VALUES (4743, 4); 
INSERT INTO muhammad.`tmp_codelist` (medcode,category) VALUES (100474, 4); 
INSERT INTO muhammad.`tmp_codelist` (medcode,category) VALUES (19512, 5); 
INSERT INTO muhammad.`tmp_codelist` (medcode,category) VALUES (8206, 5); 
INSERT INTO muhammad.`tmp_codelist` (medcode,category) VALUES (102922, 5); 
INSERT INTO muhammad.`tmp_codelist` (medcode,category) VALUES (26319, 5); 
INSERT INTO muhammad.`tmp_codelist` (medcode,category) VALUES (68376, 5); 
INSERT INTO muhammad.`tmp_codelist` (medcode,category) VALUES (69204, 5); 
INSERT INTO muhammad.`tmp_codelist` (medcode,category) VALUES (3450, 5); 
INSERT INTO muhammad.`tmp_codelist` (medcode,category) VALUES (44676, 5); 
INSERT INTO muhammad.`tmp_codelist` (medcode,category) VALUES (92909, 5); 
INSERT INTO muhammad.`tmp_codelist` (medcode,category) VALUES (40567, 5); 
INSERT INTO muhammad.`tmp_codelist` (medcode,category) VALUES (27438, 5); 
INSERT INTO muhammad.`tmp_codelist` (medcode,category) VALUES (108819, 5); 
INSERT INTO muhammad.`tmp_codelist` (medcode,category) VALUES (100253, 5); 
INSERT INTO muhammad.`tmp_codelist` (medcode,category) VALUES (73482, 5); 
INSERT INTO muhammad.`tmp_codelist` (medcode,category) VALUES (109540, 5); 
INSERT INTO muhammad.`tmp_codelist` (medcode,category) VALUES (48928, 5); 
INSERT INTO muhammad.`tmp_codelist` (medcode,category) VALUES (16725, 5); 
INSERT INTO muhammad.`tmp_codelist` (medcode,category) VALUES (47257, 5); 
INSERT INTO muhammad.`tmp_codelist` (medcode,category) VALUES (55454, 5); 
INSERT INTO muhammad.`tmp_codelist` (medcode,category) VALUES (16455, 5); 
INSERT INTO muhammad.`tmp_codelist` (medcode,category) VALUES (22841, 5); 
INSERT INTO muhammad.`tmp_codelist` (medcode,category) VALUES (18739, 5); 
INSERT INTO muhammad.`tmp_codelist` (medcode,category) VALUES (1638, 5); 
INSERT INTO muhammad.`tmp_codelist` (medcode,category) VALUES (15424, 5); 
INSERT INTO muhammad.`tmp_codelist` (medcode,category) VALUES (6863, 5); 
INSERT INTO muhammad.`tmp_codelist` (medcode,category) VALUES (44120, 5); 
INSERT INTO muhammad.`tmp_codelist` (medcode,category) VALUES (6015, 5); 
INSERT INTO muhammad.`tmp_codelist` (medcode,category) VALUES (96664, 6); 
INSERT INTO muhammad.`tmp_codelist` (medcode,category) VALUES (58184, 6); 
INSERT INTO muhammad.`tmp_codelist` (medcode,category) VALUES (91591, 6); 
INSERT INTO muhammad.`tmp_codelist` (medcode,category) VALUES (34642, 6); 

DROP TABLE IF EXISTS muhammad.cal_cirrhosis_cprd_1;
CREATE TABLE muhammad.cal_cirrhosis_cprd_1 AS
SELECT 
    c.*,
    t.category
FROM 
    caliber.`clinical_all` c, 
    caliber.eligible_patients p,
    muhammad.tmp_codelist t
WHERE 
    c.patid = p.patid
AND 
    c.medcode = t.medcode;

CREATE INDEX `patid` ON muhammad.cal_cirrhosis_cprd_1( `patid` );