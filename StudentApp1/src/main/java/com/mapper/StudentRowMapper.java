package com.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.model.Student;

public class StudentRowMapper implements RowMapper<Student> {

	public Student mapRow(ResultSet rs, int args1) throws SQLException {

		Student student = new Student(rs.getInt(1), rs.getString(2), rs.getDouble(3));

		return student;

	}

}
