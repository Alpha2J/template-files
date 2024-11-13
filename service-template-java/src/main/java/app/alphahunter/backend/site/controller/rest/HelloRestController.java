package app.alphahunter.backend.site.controller.rest;

import app.alphahunter.backend.site.service.HelloService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/api/v1/hello")
public class HelloRestController {
    @Autowired
    private HelloService helloService;

    @GetMapping(value = "/sayHello")
    public String sayHello() {
        return helloService.sayHello();
    }
}
