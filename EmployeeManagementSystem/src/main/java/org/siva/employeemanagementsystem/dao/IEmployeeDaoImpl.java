package org.siva.employeemanagementsystem.dao;

import java.util.List;
import java.util.Optional;

import org.siva.employeemanagementsystem.model.Employee;
import org.siva.employeemanagementsystem.repositories.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("employeeDao")
public class IEmployeeDaoImpl implements IEmployeeDao {
	
	@Autowired
	private EmployeeRepository employeeRepository;

	@Override
	public Employee insertEmployee(Employee employee) {
		try {
			Employee save = employeeRepository.save(employee);
			if (save!=null) {
				return save;
			}
			return null;
		}
		catch (Exception e) {
			return null;
		}
	}
	
	@Override
	public List<Employee> displayEmployees() {
		List<Employee> employees = employeeRepository.findAll();
		return employees;
	}
	
	@Override
	public Employee getEmployee(int id) {
		Optional<Employee> optional = employeeRepository.findById(id);
		return optional.get();
	}
	
	@Override
	public void deleteEmployee(int id) {
		employeeRepository.deleteById(id);
	}

}
