package org.siva.employeemanagementsystem.dao;

import java.util.List;

import org.siva.employeemanagementsystem.model.Employee;

public interface IEmployeeDao {
	
	Employee insertEmployee(Employee employee);
	List<Employee> displayEmployees();
	Employee getEmployee(int id);
	void deleteEmployee(int id);
	
}
