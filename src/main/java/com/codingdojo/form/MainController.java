package com.codingdojo.form;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpSession;

@Controller
public class MainController {

    // Rute for form
    @GetMapping("/")
    public String omikujiForm() {
        return "redirect:/omikuji"; 
    }

    @GetMapping("/omikuji")
    public String form() {
        return "form.jsp"; 
    }
    @PostMapping("/omikuji/process")
    public String processOmikuji(
            @RequestParam("number") int number,
            @RequestParam("city") String city,
            @RequestParam("person") String person,
            @RequestParam("hobby") String hobby,
            @RequestParam("livingThing") String livingThing,
            @RequestParam("message") String message,
            HttpSession session
    ) {
	        session.setAttribute("number", number);
	        session.setAttribute("city", city);
	        session.setAttribute("person", person);
	        session.setAttribute("hobby", hobby);
	        session.setAttribute("livingThing", livingThing);
        session.setAttribute("message", message);

        
        return "redirect:/omikuji/show";
    }

    @GetMapping("/omikuji/show")
    public String showOmikuji(HttpSession session, Model model) {
        
        model.addAttribute("number", session.getAttribute("number"));
        model.addAttribute("city", session.getAttribute("city"));
        model.addAttribute("person", session.getAttribute("person"));
        model.addAttribute("hobby", session.getAttribute("hobby"));
        model.addAttribute("livingThing", session.getAttribute("livingThing"));
        model.addAttribute("message", session.getAttribute("message"));
        
        return "show.jsp";
    }
}