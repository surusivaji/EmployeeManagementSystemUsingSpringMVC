package org.siva.employeemanagementsystem.service;

import java.util.List;

import org.siva.employeemanagementsystem.dao.IEmployeeDao;
import org.siva.employeemanagementsystem.model.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("employeeService")
public class IEmployeeServiceImpl implements IEmployeeService {
	
	@Autowired
	private IEmployeeDao dao;

	@Override
	public Employee addEmployee(Employee employee) {
		Employee save = dao.insertEmployee(employee);
		if (save!=null) {
			return save;
		}
		return null;
	}
	
	@Override
	public List<Employee> showAllEmployees() {
		List<Employee> employees = dao.displayEmployees();
		return employees;
	}
	
	@Override
	public Employee showEmployee(int id) {
		Employee employee = dao.getEmployee(id);
		return employee;
	}
	
	@Override
	public void removeEmployee(int id) {
		dao.deleteEmployee(id);
	}

}
