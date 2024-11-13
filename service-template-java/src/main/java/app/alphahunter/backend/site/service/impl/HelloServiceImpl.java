package app.alphahunter.backend.site.service.impl;

import app.alphahunter.backend.site.service.HelloService;
import org.springframework.stereotype.Service;

@Service
public class HelloServiceImpl implements HelloService {
    @Override
    public String sayHello() {
        return "hello";
    }
}
