-- here you will write the three queries requested in Question 1. Each query should be in a single line, i.e., do not break long queries to more lines.
SELECT c.name, cr.grade FROM courses c, student_registrations sr, course_registrations cr, course_offers co WHERE sr.sID = %1% AND sr.dID = %2% AND sr.rID = cr.rID AND cr.offerID = co.offerID AND co.cID = c.cID;
SELECT co.*, st.*, d.* FROM student_registrations sr, course_offers co, students st, degrees d, student_assistants sa WHERE sr.rID=140 AND sa.rID=sr.rID AND sa.offerID=co.offerID AND sr.sID=st.sID AND d.dID=sr.dID;
SELECT average(grade) FROM course_registrations cr WHERE cr.rID = 3;
