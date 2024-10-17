package org.siva.employeemanagementsystem.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.siva.employeemanagementsystem.model.Employee;
import org.siva.employeemanagementsystem.service.IEmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class EmployeeController {
	
	@Autowired
	private IEmployeeService service;
	
	@Autowired
	private HttpSession session;
	
	@RequestMapping("/")
	public String homePage() {
		return "home";
	}
	
	@RequestMapping("/displayEmployee")
	public String displayIndexPage(Model model) {
		List<Employee> employees = service.showAllEmployees();
		model.addAttribute("employees", employees);
		return "DisplayEmployee";
	}
	
	@RequestMapping("/addEmployee")
	public String addEmployee() {
		return "AddEmployee";
	}
	
	@RequestMapping(value="/saveEmployee", method = RequestMethod.POST)
	public String saveEmployee(@ModelAttribute("employee") Employee employee) {
		Employee save = service.addEmployee(employee);
		System.out.println(save);
		if (save!=null) {
			session.setAttribute("addsuccess", "employee added successfully");
			return "redirect:/addEmployee";
		}
		else {
			session.setAttribute("addfail", "something went wrong");
			return "redirect:/addEmployee";
		}
	}
	
	@RequestMapping(value="/updateEmployee/{id}", method=RequestMethod.GET)
	public String updateEmployee(@PathVariable("id") int id, Model model) {
		Employee employee = service.showEmployee(id);
		System.out.println(employee);
		model.addAttribute("emp", employee);
		return "UpdateEmployee";
	}
	
	@RequestMapping(value="update", method=RequestMethod.POST)
	public String updateEmployeeInfo(@ModelAttribute("employee") Employee employee) {
		Employee emp = service.addEmployee(employee);
		if (emp!=null) {
			System.out.println(emp);
			session.setAttribute("updation", "employee updated successfully");
			return "redirect:/displayEmployee";
		}
		else {
			session.setAttribute("updationfail", "something went wrong");
			return "redirect:/displayEmployee";
		}
	}
	
	@RequestMapping(value="/deleteEmployee/{id}") 
	public String deleteEmployee(@PathVariable("id") int id) {
		service.removeEmployee(id);
		session.setAttribute("deletion", "employee removed successfully");
		return "redirect:/displayEmployee";
	}
	
}
