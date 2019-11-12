--
-- Load student table.
--
insert into Student (StudentID,StudentFirstName,StudentLastName,StudentAddress,StudentPhone,StudentEmail)
            values (12345670,"Lori","Messier","70 Main St, Lowell, MA 02121",7777777777,"lorymessier@email.com");
insert into Student (StudentID,StudentFirstName,StudentLastName,StudentAddress,StudentPhone,StudentEmail)
            values (12345671,"Susan","Pierce","80 North St, Lourence, MA 02172",5555555555,"susanpierce@email.com");
insert into Student (StudentID,StudentFirstName,StudentLastName,StudentAddress,StudentPhone,StudentEmail)
            values (12345672,"Jennifer","Jones","50 South St, Boston, MA 02111",2222222222,"jenniferjones@email.com");

--
-- Load faculty table.
--
insert into faculty (FacultyID,FacultyFirstName,FacultyLastName)
            values (1000001,"John","Salivan");
insert into faculty (FacultyID,FacultyFirstName,FacultyLastName)
            values (1000002,"Shauna","McDonald");
insert into faculty (FacultyID,FacultyFirstName,FacultyLastName)
            values (1000003,"Alice","Rosevelt");
--
--
-- Load course table.
--
insert into course (CourseID,CourseCode,CourseTitle,CourseDescription)
            values (11111,"CIT-231","Course Title 1","Course Description 1");
insert into course (CourseID,CourseCode,CourseTitle,CourseDescription)
            values (11112,"CIT-232","Course Title 2","Course Description 2");
insert into course (CourseID,CourseCode,CourseTitle,CourseDescription)
            values (11113,"CIT-233","Course Title 3","Course Description 3");
--
-- Load student_course table
insert into student_course (StudentID,CourseID)
            values (12345670,11111);
insert into student_course (StudentID,CourseID)
            values (12345671,11111);
insert into student_course (StudentID,CourseID)
            values (12345672,11111);
insert into student_course (StudentID,CourseID)
            values (12345670,11113);
insert into student_course (StudentID,CourseID)
            values (12345673,11113);
insert into student_course (StudentID,CourseID)
            values (12345672,11112);
--
-- Load faculty_course table
insert into faculty_course(FacultyID,CourseID)
            values (1000001,11111);
insert into faculty_course(FacultyID,CourseID)
            values (1000002,11112);
insert into faculty_course(FacultyID,CourseID)
            values (1000001,11113);
insert into faculty_course(FacultyID,CourseID)
            values (1000003,11113);
