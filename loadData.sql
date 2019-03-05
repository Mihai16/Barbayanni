-- this file should load all data in the previously-created tables
-- the data will be stored under /mnt/ramdisk/tables
-- for example, the Students file is under /mnt/ramdisk/tables/Students.table 
-- The files of the folder are as follows (mind the lower-case/upper-case): 
--   CourseOffers.table, CourseRegistrations.table, Courses.table, Degrees.table
--   StudentAssistants.table, StudentRegistrationsToDegrees.table, Students.table
--   TeacherAssignmentsToCourses.table, Teachers.table
-- Don't forget to analyze at the end. It can make a difference in query performance.
-- Example:

COPY degrees FROM '/mnt/ramdisk/tables/Degrees.table' DELIMITER ',' CSV HEADER;  COPY students FROM '/mnt/ramdisk/tables/Students.table' DELIMITER ',' CSV HEADER;  COPY teachers FROM '/mnt/ramdisk/tables/Teachers.table' DELIMITER ',' CSV HEADER;  COPY courses FROM '/mnt/ramdisk/tables/Courses.table' DELIMITER ',' CSV HEADER;  COPY course_offers FROM '/mnt/ramdisk/tables/CourseOffers.table' DELIMITER ',' CSV HEADER;  COPY student_registrations FROM '/mnt/ramdisk/tables/StudentRegistrationsToDegrees.table' DELIMITER ',' CSV HEADER;  COPY teacher_assignments FROM '/mnt/ramdisk/tables/TeacherAssignmentsToCourses.table' DELIMITER ',' CSV HEADER;  COPY student_assistants FROM '/mnt/ramdisk/tables/StudentAssistants.table' DELIMITER ',' CSV HEADER;  COPY course_registrations FROM '/mnt/ramdisk/tables/CourseRegistrations.table' DELIMITER ',' CSV HEADER NULL AS 'null';

ANALYZE VERBOSE;
