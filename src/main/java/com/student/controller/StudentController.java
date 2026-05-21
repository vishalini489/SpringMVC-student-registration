package com.student.controller;

import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class StudentController {

    @GetMapping("/")
    public String showForm() {
        return "index";
    }

    @PostMapping("/submit")
    public String submitForm(
            @RequestParam("name")     String name,
            @RequestParam("email")    String email,
            @RequestParam("password") String password,
            @RequestParam("age")      String age,
            @RequestParam("gender")   String gender,
            @RequestParam("course")   String course,
            @RequestParam("dob")      String dob,
            HttpSession session
    ) {
        session.setAttribute("name",     name);
        session.setAttribute("email",    email);
        session.setAttribute("password", password);
        session.setAttribute("age",      age);
        session.setAttribute("gender",   gender);
        session.setAttribute("course",   course);
        session.setAttribute("dob",      dob);

        return "redirect:/result";
    }

    @GetMapping("/result")
    public String showResult(HttpSession session) {
        if (session.getAttribute("name") == null) {
            return "redirect:/";
        }
        return "result";
    }
}
