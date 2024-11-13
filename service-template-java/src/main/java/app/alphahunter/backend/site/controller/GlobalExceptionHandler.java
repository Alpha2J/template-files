package app.alphahunter.backend.site.controller;

import app.alphahunter.backend.site.constant.BusinessCode;
import app.alphahunter.backend.site.exception.BusinessException;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

// todo tag modify me
@ControllerAdvice("app.alphahunter.backend.site.controller")
public class GlobalExceptionHandler {

    @ExceptionHandler(value = {Exception.class})
    @ResponseStatus(value = HttpStatus.OK)
    @ResponseBody
    public ResponseContent<Object> unknownExceptionHandler() {
        return ResponseContent.of(
                BusinessCode.UNKNOWN_EXCEPTION.getCode(),
                BusinessCode.UNKNOWN_EXCEPTION.getMessage(),
                null
        );
    }

    @ExceptionHandler(value = {BusinessException.class})
    public ResponseContent<?> bizException(BusinessException e) {
        return ResponseContent.of(e.getCode(), e.getMessage(), null);
    }
}

