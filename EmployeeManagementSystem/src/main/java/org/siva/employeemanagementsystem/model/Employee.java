package org.siva.employeemanagementsystem.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Employee  {
	
	@Id
	@Column(name="Employee_ID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	@Column(name="Employee_Name", length=40)
	private String fullName;
	@Column(name="Employee_Address", length=50)
	private String address;
	@Column(name="Employee_Email", length = 40, unique = true)
	private String email;
	@Column(name="Employee_Designation", length=40)
	private String designation;
	@Column(name="Employee_Salary")
	private Double salary;
	
	public Employee() {
		
	}

	public Employee(Integer id, String fullName, String address, String email, String password,
			String designation, Double salary) {
		this.id = id;
		this.fullName = fullName;
		this.address = address;
		this.email = email;
		this.designation = designation;
		this.salary = salary;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	public Double getSalary() {
		return salary;
	}

	public void setSalary(Double salary) {
		this.salary = salary;
	}

	@Override
	public String toString() {
		return "Employee [id=" + id + ", fullName=" + fullName + ", address=" + address + ", email=" + email
				+ ", designation=" + designation + ", salary=" + salary + "]";
	}

}