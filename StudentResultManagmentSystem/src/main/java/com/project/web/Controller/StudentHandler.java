package com.project.web.Controller;

import java.security.Principal;
import java.text.DecimalFormat;
import java.time.LocalDate;
import java.time.Period;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.web.Model.Student;
import com.project.web.Model.admin;
import com.project.web.Repository.StudentInfo;
import com.project.web.service.StudentService;

import jakarta.servlet.http.HttpSession;

@Controller
public class StudentHandler {

	@Autowired
	private StudentInfo repo;
	
	@Autowired
	private StudentService studentService;

	@RequestMapping("/")
	public String home() {
		return "homepage";
	}

	@RequestMapping("/addDetails")
	public String addDetails() {
		return "addDetails";
	}


	
	@RequestMapping("/addstudent")
	public String addstudent(@ModelAttribute Student student) {

		// calculating total marks;
		student.setTotalMarks(student.getMath() + student.getEnglish() + student.getScience() + student.getHindi()
				+ student.getHistory());
		Integer totalMarks = student.getTotalMarks();

		// calculating percentage;
		double percentage = totalMarks * 0.2;
		student.setPercentage1(percentage);
		
		String formattedNumber = String.format("%.2f", percentage);
		String percentafString = String.valueOf(formattedNumber);
		
		student.setPercentage(percentafString);

		// calculating grade
		
		if ((student.getMath()<40)||(student.getEnglish()<40) || (student.getScience()<40) || (student.getHindi()<40)
				|| (student.getHistory()<40)) {
					student.setGrade("Fail");
				}
		else if (percentage >= 90 && percentage <= 100) {
			student.setGrade("A+");
		} else if (percentage >= 80 && percentage < 90) {
			student.setGrade("A");
		} else if (percentage >= 75 && percentage < 80) {
			student.setGrade("B+");
		} else if (percentage >= 50 && percentage < 75) {
			student.setGrade("B");
		} else if (percentage >= 40 && percentage < 50) {
			student.setGrade("C");
		}

		// calculating age;
		Period period = Period.between(student.getDob(), LocalDate.now());
		int age = period.getYears();
		student.setAge(age);
		
		//generating password
		String[] fullName= student.getName().split(" ");
		String firstName= fullName[0];
		int dobYear = student.getDob().getYear();
		student.setPassword(firstName+"$"+dobYear);

		repo.save(student);
		System.out.println(student);
		return "redirect:/get";
		// return "listUser";

	}

	@RequestMapping("/get")
	public String getData(Model m) {
		List<Student> al = repo.findAll();

		m.addAttribute("e_data", al);

		System.out.println(al);
		return "redirect:/studentsDetailsTable";
	}

	@RequestMapping("/get/{id}")
	public String getByStudentID(@PathVariable Integer id, Model m, HttpSession login) {
		if (id == null) {
			id = (Integer) login.getAttribute("id");
		}

		if (id != null) {
			Student ob = repo.findById(id).orElse(null);
			m.addAttribute("id", id);
			m.addAttribute("e_data", ob);

			return "studentsDetailsTable";
		} else {
			return "User not found";
		}
	}

	@RequestMapping("/{id}")
	public String deleteuser(@PathVariable int id) {
		repo.deleteById(id);
		return "redirect:/get";
	}

	@RequestMapping("/edit/{id}")
	public String editform(@PathVariable int id, Model m) {
		Student ob = repo.findById(id).get();
		m.addAttribute("std1", ob);

		return "editform";
	}

	@RequestMapping("/update/{id}")
	public String updatedata(@PathVariable int id, @ModelAttribute Student student) {
		Student user1 = repo.findById(id).orElse(null);
		if (user1 != null) {
			user1.setName(student.getName());
			user1.setEmail(student.getEmail());
			user1.setGender(student.getGender());
			user1.setDob(student.getDob());
			user1.setMath(student.getMath());
			user1.setScience(student.getScience());
			user1.setEnglish(student.getEnglish());
			user1.setHistory(student.getHistory());
			user1.setHindi(student.getHindi());

			user1.setTotalMarks(user1.getMath() + user1.getEnglish() + user1.getScience() + user1.getHindi()
					+ user1.getHistory());
			Integer totalMarks = user1.getTotalMarks();

				//calculating percentage;
			double percentage = totalMarks * 0.2;
			String formattedNumber = String.format("%.2f", percentage);
			String percentafString = String.valueOf(formattedNumber);
	
			
			user1.setPercentage(percentafString);

				//calculating grade
			
			if ((user1.getMath()<40)||(user1.getEnglish()<40) || (user1.getScience()<40) || (user1.getHindi()<40)
					|| (user1.getHistory()<40)) {
				user1.setGrade("Fail");
			}
			else if (percentage >= 90 && percentage <= 100) {
				user1.setGrade("A+");
			} else if (percentage >= 80 && percentage < 90) {
				user1.setGrade("A");
			} else if (percentage >= 75 && percentage < 80) {
				user1.setGrade("B+");
			} else if (percentage >= 50 && percentage < 75) {
				user1.setGrade("B");
			} else if (percentage >= 40 && percentage < 50) {
				user1.setGrade("C");
			}

				//calculating age;
			Period period = Period.between(user1.getDob(), LocalDate.now());
			int age = period.getYears();
			user1.setAge(age);

			repo.save(user1);
		}
		return "redirect:/get";
	}
	
	
	
	@GetMapping("/studentsDetailsTable")
	public String getAllStudents(@RequestParam(defaultValue = "0") int pageNo, @RequestParam(defaultValue = "10") int pageSize, Model model){
		
		 Page<Student> page = studentService.getAllStudents(pageNo, pageSize);
	
	     model.addAttribute("projects", page.getContent());
	     model.addAttribute("totalPages", page.getTotalPages());
	     model.addAttribute("currentPage", pageNo);
	     return "studentsDetailsTable";
	}

	
	@GetMapping("/listUserSearch")
	public String searchProjects(@RequestParam(required = false) String keyword, Model model){
		
		if(keyword == null || keyword.isEmpty()) {
			
			return "redirect:/get";
		}
		else {
			 List<Student> searchResult = repo.searchStudentsByKeyword(keyword, null, null, null, null, null, null, null);
			 System.out.println(searchResult.toString());
	           model.addAttribute("projects", searchResult);
		}	

		return "studentsDetailsTable" ;
	}
	
	@GetMapping("/sort")
	public String sortProjects(@RequestParam String sortBy, Model model) {
		
		 List<Student> sortedProjects = repo.findAll(Sort.by(sortBy));   
		 model.addAttribute("projects", sortedProjects);
		 return "studentsDetailsTable"; 
	}
	
	
	@RequestMapping("/dashboard")
	public String dashBoard(Model model) {
		
		Long studentCount = repo.count();
		model.addAttribute("studentCount", studentCount);
		
		Long PassStudents  = repo.countPassedStudents();
		model.addAttribute("PassStudents", PassStudents);
		
		Long FailStudents  = repo.countFailedStudents();
		model.addAttribute("FailStudents", FailStudents);
		
		
		Double AveragePercentage =  (repo.totalPercentageSum()/repo.count());
		String avgPerString = String.format("%.2f", AveragePercentage);
		model.addAttribute("AveragePercentage",avgPerString);
		
		Double passPercentage  = 0.0;
		if(studentCount == 0) {
			passPercentage= 0.0;
		}
		else {
			passPercentage = ((double) PassStudents/studentCount)*100;
		}
		String AvgOverallPer = String.format("%.2f", passPercentage);
		model.addAttribute("passPercentage",AvgOverallPer);
		
		List<Long> maleGradesInfo = new ArrayList<>();
		maleGradesInfo.add(repo.countMaleStudentsWithAplusGrade());
		maleGradesInfo.add(repo.countMaleStudentsWithAGrade());
		maleGradesInfo.add(repo.countMaleStudentsWithBplusGrade());
		maleGradesInfo.add(repo.countMaleStudentsWithBGrade());
		maleGradesInfo.add(repo.countMaleStudentsWithCGrade());
		maleGradesInfo.add(repo.countMaleStudentsWithFail());
		model.addAttribute("maleGradesInfo", maleGradesInfo);
		
		
		List<Long> femaleGradesInfo = new ArrayList<>();
		femaleGradesInfo.add(repo.countFemaleStudentsWithAplusGrade());
		femaleGradesInfo.add(repo.countFemaleStudentsWithAGrade());
		femaleGradesInfo.add(repo.countFemaleStudentsWithBplusGrade());
		femaleGradesInfo.add(repo.countFemaleStudentsWithBGrade());
		femaleGradesInfo.add(repo.countFemaleStudentsWithCGrade());
		femaleGradesInfo.add(repo.countFemaleStudentsWithFail());
		model.addAttribute("femaleGradesInfo", femaleGradesInfo);
		
		
		
		
		return "dashboard";
				
	}
	

	@RequestMapping("/student-Login")
	public String stdlogin(@RequestParam String email, @RequestParam String password, HttpSession login, Model m) {

		Student st = repo.findByEmail(email);
		System.out.print(st);
		if (st != null && st.getPassword().equals(password)) {
			m.addAttribute("std", st);
			System.out.println(st);
			return "studentResult";
		} else {
			  m.addAttribute("error", "Invalid credentials"); 
	            return "studentLogin";
		}

	}

	@RequestMapping("/adminLogin")
	public String adminLogin() {
		return "adminLogin";
	}
	
	@RequestMapping("/studentLogin")
	public String home13() {
		return "studentLogin";
	}
	
	

	/*
	 * @RequestMapping("/addAdmin") public String abc(@ModelAttribute admin dh) {
	 * adminRepo.save(dh); return "listUser"; }
	 */
	/*
	 * @RequestMapping("/addAdmin") public String dataforAdmin(Model m) {
	 * List<Student> al = repo.findAll();
	 * 
	 * m.addAttribute("e_data",al);
	 * 
	 * System.out.println(al); return "listUser"; }
	 */

}
