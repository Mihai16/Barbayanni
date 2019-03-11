CREATE INDEX idx_dID_sID on student_registrations(dID,sID);
CREATE INDEX rID on course_registrations(rID);
ALTER TABLE course_offers ADD CONSTRAINT PK_offerID PRIMARY KEY (offerID);
CREATE MATERIALIZED VIEW MW1(rID, sID) AS (SELECT Distinct sr.rID, sr.sID FROM course_registrations cr, course_offers co, courses c, student_registrations sr, degrees d WHERE cr.grade >= 5 A`ND cr.rID = sr.rID AND cr.offerID = co.offerID AND co.cID = c.cID AND d.dID = sr.dID GROUP BY sr.rid, d.totalECTS HAVING sum(c.ECTS) >= d.totalECTS);
Create Materialized VIEW Q2(sID, AVG) as(SELECT DISTINCT MW1.sID, AVG(cr.grade) FROM course_registrations cr, MW1 WHERE MW1.rID not in (SELECT cr2.rID FROM course_registrations cr2, MW1 where MW1.rID = cr2.rID AND cr2.grade < 5) AND cr.rID = MW1.rID GROUP BY MW1.sID);
CREATE INDEX idx_did ON student_registrations(dID);
ALTER TABLE students ADD CONSTRAINT sID PRIMARY KEY (sID);

