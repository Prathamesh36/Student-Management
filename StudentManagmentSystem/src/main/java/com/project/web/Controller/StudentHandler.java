package com.project.web.Controller;

import java.security.Principal;
import java.util.Collections;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.web.Model.Student;
import com.project.web.Model.admin;
import com.project.web.Repository.StudentInfo;

import jakarta.servlet.http.HttpSession;

@Controller
public class StudentHandler {

	@Autowired
	private StudentInfo repo;

	/*
	 * @RequestMapping("/") public String home() { return "Registration"; }
	 */
	@RequestMapping("/")
	public String home() {
		return "homepage";
	}

	@RequestMapping("/addstudent")
	public String addstudent(@ModelAttribute Student student) {
		System.out.println(student.getId());
		System.out.println(student.getName());
		System.out.println(student.getEmail());
		System.out.println(student.getPassword());

		repo.save(student);

		// return "redirect:/get";
		return "success";

	}

	@RequestMapping("/get")
	public String getData(Model m) {
		List<Student> al = repo.findAll();

		m.addAttribute("e_data", al);

		System.out.println(al);
		return "listUser";
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

			return "listUser";
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
	public String updatedata(@PathVariable int id, @ModelAttribute Student us) {
		Student user1 = repo.findById(id).orElse(null);
		if (user1 != null) {
			user1.setName(us.getName());
			user1.setEmail(us.getEmail());
			repo.save(user1);
		}
		return "redirect:/get";
	}

	/*
	 * @RequestMapping("/login") public String login(@RequestParam String
	 * email,@RequestParam String password, HttpSession login) { Student
	 * st=repo.findByemail(email);
	 * 
	 * if( st != null && st.getEmail().equals("admin") &&
	 * st.getPassword().equals("admin")) { login.setAttribute("login", st); return
	 * "redirect:/get"; } else { return "Registration"; } }
	 */
	@RequestMapping("/login")
	public String login(@RequestParam String email, @RequestParam String password, HttpSession login) {

		if (email.equals("admin") && password.equals("admin")) {
			return "redirect:/get";
		} else {
			return "User not found";
		}

	}

	@RequestMapping("/slogin")
	public String stdlogin(@RequestParam int id, @RequestParam String password, HttpSession login, Model m) {

		Student st = repo.findById(id).orElse(null);
		System.out.print(st);
		if (st != null && st.getPassword().equals(password)) {
			m.addAttribute("std", st);
			System.out.println(st);
			return "singleUser";
		} else {
			return "User not found";
		}
		

		
	}

	@RequestMapping("/admin")
	public String home12() {
		return "admin";
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
