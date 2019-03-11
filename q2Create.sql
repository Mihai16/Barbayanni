CREATE INDEX dID,sID on student_registrations(dID,sID);
CREATE INDEX rID on course_registrations(rID);
ALTER TABLE course_offers ADD CONSTRAINT PK_offerID PRIMARY KEY (offerID);
CREATE MATERIALIZED VIEW MW1(rID, sID) AS (SELECT Distinct sr.rID, sr.sID FROM course_registrations cr, course_offers co, courses c, student_registrations sr, degrees d WHERE cr.grade >= 5 AND cr.rID = sr.rID AND cr.offerID = co.offerID AND co.cID = c.cID AND d.dID = sr.dID GROUP BY sr.rid, d.totalECTS HAVING sum(c.ECTS) >= d.totalECTS);
CREATE INDEX idx_did ON student_registrations(dID);
ALTER TABLE students ADD CONSTRAINT sID PRIMARY KEY (sID);

