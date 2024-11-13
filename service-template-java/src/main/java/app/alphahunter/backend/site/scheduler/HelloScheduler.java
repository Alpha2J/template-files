package app.alphahunter.backend.site.scheduler;

import app.alphahunter.backend.site.service.HelloService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;


@Component
public class HelloScheduler {
    private static final Logger logger = LoggerFactory.getLogger(HelloScheduler.class);

    private final HelloService helloService;

    public HelloScheduler(HelloService helloService) {
        this.helloService = helloService;
    }

    // 1分钟执行一次
    @Scheduled(fixedRate = 60 * 1000)
    public void sayHello() {
        logger.info("HelloScheduler.sayHello()");
        helloService.sayHello();
        logger.info("HelloScheduler.sayHello() end");
    }
}
