package app.alphahunter.backend.site.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@ResponseBody
@RequestMapping(value = "/")
public class HelloController {
    @RequestMapping(value = "hello")
    public String hello() {
        return "Hello, World!";
    }
}
