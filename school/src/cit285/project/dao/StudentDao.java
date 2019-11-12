package cit285.project.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import cit285.project.domain.Student;

public class StudentDao {
	
	public ArrayList<Student> getStudentsList()
			throws SQLException, ClassNotFoundException {
		
		ArrayList<Student> studentsList = new ArrayList<>();
		
		Student student1 = new Student();
		student1.setFirstName("John");student1.setLastName("Smith");
		studentsList.add(student1);
		
		Student student2 = new Student();
		student2.setFirstName("Shauna");student2.setLastName("Iris");
		studentsList.add(student2);
		
		Student student3 = new Student();
		student3.setFirstName("Salene");student3.setLastName("Salivan");
		studentsList.add(student3);
		System.out.println("Passing Dao...");
		// Get Db connection
		Connection connection = getConnection();
		
		// Create statement
		Statement statement = connection.createStatement();
		
		// Execute statement
		ResultSet resultSet = statement.executeQuery("select * from student");
		
		// Iterate through the result and print
		while(resultSet.next()) {
			Student student = new Student();
			student.setId(resultSet.getInt(1));
			student.setFirstName(resultSet.getString(2));
			student.setFirstName(resultSet.getString(3));
			
			studentsList.add(student);
		}
		System.out.println("Returning Dao ...");
		return studentsList;
	}
	
	private Connection getConnection() 
			throws SQLException, ClassNotFoundException {
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		System.out.println("Driver loaded!");
		
		// Connect to the database
		Connection connection = DriverManager
				.getConnection("jdbc:mysql://localhost/schooldb","root","cmoreno");
		System.out.println("Database connected!");
		
		return connection;
	}
}
