package cit285.project.config;

import java.io.PrintWriter;
import java.io.StringWriter;

import cit285.project.services.StudentServices;
import cit285.project.services.StudentServicesAPI;

public class SchoolSystemConfig {

	// the service objects in use, representing all lower layers to the app
	private static StudentServicesAPI studentServices;
	
	// set up service API, data access objects
	public static void configureServices()
		throws Exception {	
		try {
			
			studentServices = new StudentServices();
		} catch (Exception e) {
			System.out.println("Problem with contacting DB");
			
		    // rethrow to notify caller (caller should print exception details)
			throw new Exception("Exception in configureServices",e); 
		}
	}
	
	public static String exceptionReport(Exception e) {
		String message = e.toString(); // exception name + message
		if (e.getCause() != null) {
			message += "\n  cause: " + e.getCause();
			if (e.getCause().getCause() != null) {
				message += "\n    cause's cause: " + e.getCause().getCause();
			}
		}
		message += "\n Stack Trace: " + exceptionStackTraceString(e);
		return message;
	}

	private static String exceptionStackTraceString(Throwable e) {
		StringWriter sw = new StringWriter();
		e.printStackTrace(new PrintWriter(sw));
		return sw.toString();
	}
	
	public static StudentServicesAPI getStudentServices() {
		
		return studentServices;
	}
}
