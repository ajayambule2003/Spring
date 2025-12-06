package com.bean;

import java.util.List;

public class Student {

	private String fname;
	private String lname;
	private String gender;
	private String year;
	private List<String> courses;

	public Student() {
		// TODO Auto-generated constructor stub
	}

	public Student(String fname, String lname, String gender, String year, List<String> courses) {
		super();
		this.fname = fname;
		this.lname = lname;
		this.gender = gender;
		this.year = year;
		this.courses = courses;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public List<String> getCourses() {
		return courses;
	}

	public void setCourses(List<String> courses) {
		this.courses = courses;
	}

	@Override
	public String toString() {
		return "Student [fname=" + fname + ", lname=" + lname + ", gender=" + gender + ", year=" + year + ", courses="
				+ courses + "]";
	}

}
