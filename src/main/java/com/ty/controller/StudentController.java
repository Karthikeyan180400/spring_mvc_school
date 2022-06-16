package com.ty.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ty.dto.Student;
import com.ty.service.StudentService;

@Controller
public class StudentController {
	@Autowired
	StudentService studentService;

	@GetMapping("/createStudent")
	public ModelAndView createStudent(ModelAndView modelAndView) {
		modelAndView.setViewName("createStudent.jsp");
		return modelAndView.addObject("student", new Student());

	}

	@PostMapping("/saveStudent")
	public ModelAndView saveStudent(@ModelAttribute Student student, ModelAndView modelAndView) {
		Student student2 = studentService.saveStudent(student);
		modelAndView.setViewName("showStudent.jsp");
		return modelAndView.addObject("student", student2);

	}
	
	@RequestMapping("/getAllStudents")
	public ModelAndView getAllStudent(ModelAndView modelAndView) {
		modelAndView.setViewName("showStudents.jsp");
		return modelAndView.addObject("students", studentService.getAllStudents());
		
	}
	
	@RequestMapping("/editstudent")
	public ModelAndView getStudentById(@RequestParam(name = "id")int id, ModelAndView modelAndView) {
		modelAndView.setViewName("updateStudent.jsp");
		return modelAndView.addObject("student", studentService.getStudentById(id));
		
	}
	
	@PostMapping("/updateStudent")
	public ModelAndView updateStudent(@ModelAttribute Student student, @RequestParam(name = "id") int id, ModelAndView modelAndView) {
		Student student2 = studentService.updateStudent(student, id);
		modelAndView.setViewName("showStudent.jsp");
		return modelAndView.addObject("student", student2);
		
	}
	
	@RequestMapping("/deletestudent")
	public ModelAndView deleteStudent(@RequestParam(name = "id") int id, ModelAndView modelAndView) {
		boolean res = studentService.deleteStudent(id);
		
		if(res) {
			modelAndView.setViewName("home.jsp");
			modelAndView.addObject("myMsg", "Id "+id+"Deleted");
		} else {
			modelAndView.setViewName("editStudent.jsp");
		}
		return modelAndView;
		
	}

}
