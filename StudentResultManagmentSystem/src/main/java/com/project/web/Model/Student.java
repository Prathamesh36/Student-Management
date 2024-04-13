package com.project.web.Model;

import java.time.LocalDate;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Student {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String name;
	private String email;
	private LocalDate dob;
	private Integer age;
	private String gender;
	private Integer math;
	private Integer english;
	private Integer science;
	private Integer history;
	private Integer hindi;
	private String password;
	private Integer totalMarks;
	private String percentage;		//to display 
	private Double percentage1;		//for calculations
	private String grade;

	public Student() {
		// TODO Auto-generated constructor stub
	}


	


	public Student(int id, String name, String email, LocalDate dob, Integer age, String gender, Integer math,
			Integer english, Integer science, Integer history, Integer hindi, String password, Integer totalMarks,
			String percentage, Double percentage1, String grade) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.dob = dob;
		this.age = age;
		this.gender = gender;
		this.math = math;
		this.english = english;
		this.science = science;
		this.history = history;
		this.hindi = hindi;
		this.password = password;
		this.totalMarks = totalMarks;
		this.percentage = percentage;
		this.percentage1 = percentage1;
		this.grade = grade;
	}





	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public LocalDate getDob() {
		return dob;
	}

	public void setDob(LocalDate dob) {
		this.dob = dob;
	}

	public Integer getMath() {
		return math;
	}

	public void setMath(Integer math) {
		this.math = math;
	}

	public Integer getEnglish() {
		return english;
	}

	public void setEnglish(Integer english) {
		this.english = english;
	}

	public Integer getScience() {
		return science;
	}

	public void setScience(Integer science) {
		this.science = science;
	}

	public Integer getTotalMarks() {
		return totalMarks;
	}

	public void setTotalMarks(Integer totalMarks) {
		this.totalMarks = totalMarks;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public Integer getHistory() {
		return history;
	}

	public void setHistory(Integer history) {
		this.history = history;
	}

	public Integer getHindi() {
		return hindi;
	}

	public void setHindi(Integer hindi) {
		this.hindi = hindi;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getPercentage() {
		return percentage;
	}


	public void setPercentage(String percentage) {
		this.percentage = percentage;
	}

	public Double getPercentage1() {
		return percentage1;
	}

	public void setPercentage1(Double percentage1) {
		this.percentage1 = percentage1;
	}





	@Override
	public String toString() {
		return "Student [id=" + id + ", name=" + name + ", email=" + email + ", dob=" + dob + ", age=" + age
				+ ", gender=" + gender + ", math=" + math + ", english=" + english + ", science=" + science
				+ ", history=" + history + ", hindi=" + hindi + ", password=" + password + ", totalMarks=" + totalMarks
				+ ", percentage=" + percentage + ", percentage1=" + percentage1 + ", grade=" + grade + "]";
	}

	
	






	



	

}
