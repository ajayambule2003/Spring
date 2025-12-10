package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.StudentDAO;
import com.model.Student;

@Service
public class StudentService {

	private StudentDAO studentDao;

	public void addStudent(Student student) {
		studentDao.insertStudent(student);
	}

	public void deleteStudent(int id) {
		studentDao.removeStudent(id);
	}

	public void modifyStudent(Student student) {
		studentDao.updateStudent(student);
	}

	public List<Student> findAllStudent() {
		return studentDao.getAllStudent();

	}

	public Student findStudentById(int id) {
		return studentDao.getStudentById(id);

	}

	public StudentDAO getStudentDao() {
		return studentDao;
	}

	@Autowired
	public void setStudentDao(StudentDAO studentDao) {
		this.studentDao = studentDao;
	}

}
