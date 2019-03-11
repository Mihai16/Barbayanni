SELECT  co.,c.name, c.description, d.did, c.ects, d.dept,d.description, d.totalECTS, t.* FROM course_offers co, courses c,degrees d ,teacher_assignments ta, teachers t WHERE co.offerID = 1 AND co.cID = c.cID AND c.dID = d.dID AND (ta.offerID = co.offerID and ta.tID = t.tID );
SELECT co.*, st.*, d.* FROM student_registrations sr, course_offers co, students st, degrees d, student_assistants sa WHERE sr.rID=3 AND sa.rID=sr.rID AND sa.offerID=co.offerID AND sr.sID=st.sID AND d.dID=sr.dID;
SELECT AVG(grade) FROM course_registrations cr WHERE cr.rID = 3;
