package cit285.project.services;

import java.sql.SQLException;
import java.util.ArrayList;

import cit285.project.dao.StudentDao;
import cit285.project.domain.Student;

public class StudentServices implements StudentServicesAPI{
	StudentDao studentDao;
	
	public StudentServices() {
		studentDao = new StudentDao();
	}
	
	public ArrayList<String> getStudents(){
		ArrayList<Student> studentsList = null;
		ArrayList<String> students = new ArrayList<>();
		System.out.println("Passing services...");
		try {
			studentsList = studentDao.getStudentsList();
			
			studentsList.forEach(student -> {
				String name = student.getFirstName() + " " + student.getLastName();
				students.add(name);
			});
		}catch (SQLException | ClassNotFoundException e) {
			System.out.println(e.toString());
		}
		
		return students;
	}
}
