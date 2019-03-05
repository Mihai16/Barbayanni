-- ATTENTION: Remove the comments and the example before submitting
-- This file should contain exactly 8 lines, without any comment. Each line will correspond to one of the 8 sub-questions of question 2.
-- Do not break long queries to more than one line, and do not leave empty lines between them. 
-- If you do not know the answer to one of the sub-questions, then write SELECT 0;
-- Example: Let's say I only know sub-question 3:
SELECT 0;
SELECT 0;
SELECT phonenumber from myphonebook where name=%1%; 
SELECT 0;
SELECT 0;
SELECT 0;
SELECT 0;
WITH required_assistants (offerID, count) AS (SELECT cr.offerID, 1+COUNT(cr.rID)/50 FROM course_registrations cr GROUP BY cr.offerID), actual_assistants(offerID, count) AS (SELECT offerID, COUNT(sa.rID) FROM student_assistants sa GROUP BY sa.offerID) SELECT c.name, co.year, co.quartile, co.offerID, aa.nr as actual_count, ra.count as required_count FROM required_assistants ra, actual_assistants aa, course_offers co, courses c WHERE co.offerID = ra.offerID AND co.cID = c.cID AND aa.offerID = co.offerID AND aa.count < ra.count ORDER BY co.offerId;
