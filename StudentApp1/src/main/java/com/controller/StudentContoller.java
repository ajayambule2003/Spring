package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
// @GetMapping =@RequestMapping(value = "/new", method = RequestMethod.GET)
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.model.Student;
import com.service.StudentService; 

@RequestMapping("/students")
@Controller
public class StudentContoller {

	private StudentService service;

	// http://localhost:8080/StudentApp/students/
	@GetMapping("/") // @RequestMapping("/") //
	public String openForm() {
		return "welcome";
	}

	@RequestMapping(value = "/new", method = RequestMethod.GET)
	public String studentRegistrationForm(Model model) {
		model.addAttribute("stud", new Student());
		return "studfrom";
	}

	// @RequestMapping(value = "/save", method = RequestMethod.POST)
	@PostMapping("/save")
	public String saveRecord(@ModelAttribute("stud") Student student, Model model) {
		System.out.println("  ==>  " + student);
		service.addStudent(student);
//	
		List<Student> studList = service.findAllStudent();
		model.addAttribute("studList", studList);

		return "display";
	}

	// http://localhsot:8080/StudentApp1/students/delete/11
	@GetMapping("/delete/{id}")
	public String deleteRecord(@PathVariable("id") int id) {
		service.deleteStudent(id);
		return "redirect:/students/read";
	}

	@GetMapping("/read")
	public String showAllStudent(Model model) {
		List<Student> studList = service.findAllStudent();
		System.out.println(studList);
		model.addAttribute("studList", studList);
		return "display";

	}

	@GetMapping("/edit/{id}")
	public String openUpdateForm(@PathVariable("id") int id, Model model) {
		Student student = service.findStudentById(id);
		model.addAttribute("stud", student);

		return "student-update";

	}

	@GetMapping("/update")
	public String updateStudent(@ModelAttribute("stud") Student student) {

		service.modifyStudent(student);
		return "redirect:/students/read";
	}

	public StudentService getService() {
		return service;
	}

	@Autowired
	public void setService(StudentService service) {
		this.service = service;
	}

}