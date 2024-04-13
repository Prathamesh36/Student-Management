package com.project.web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.project.web.Model.Student;
import com.project.web.Repository.StudentInfo;

@Service
public class StudentService {
	
	@Autowired
	private StudentInfo studentInfo;
	
	 public Page<Student> getAllStudents(int pageNo, int pageSize) {
	        Pageable pageable = PageRequest.of(pageNo, pageSize);
	        return studentInfo.findAll(pageable);
	   }

}
