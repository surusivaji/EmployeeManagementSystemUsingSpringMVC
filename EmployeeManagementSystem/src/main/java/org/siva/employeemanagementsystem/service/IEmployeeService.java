package org.siva.employeemanagementsystem.service;

import java.util.List;

import org.siva.employeemanagementsystem.model.Employee;

public interface IEmployeeService {
	
	Employee addEmployee(Employee employee);
	List<Employee> showAllEmployees();
	Employee showEmployee(int id);
	void removeEmployee(int id);
	
}
