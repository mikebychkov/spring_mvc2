package com.mvc;

import com.mvc.model.Student;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StudentController {

    private static final Logger logger = LogManager.getLogger(HelloWorldController.class);

    @RequestMapping("/show-student")
    public String showStudentPage(Model model) {
        model.addAttribute("studentModel", new Student());
        return "student";
    }

    @RequestMapping("/process-student")
    public String processStudentPage(@ModelAttribute("studentModel") Student student) {
        logger.info(student);
        return "student-process";
    }
}
