package app.alphahunter.backend.site.controller;

import app.alphahunter.backend.site.constant.BusinessCode;
import lombok.Getter;
import lombok.Setter;

/**
 * 供非rest接口使用, 如AuthenticationController
 *
 * @param <T>
 */
@Getter
@Setter
public class ResponseContent<T> {

    private Integer code;
    private String message;
    private T data;

    private ResponseContent() {

    }

    public static <T> ResponseContent<T> success() {
        return success(null);
    }

    public static <T> ResponseContent<T> success(T data) {
        ResponseContent<T> responseContent = new ResponseContent<>();
        responseContent.setCode(BusinessCode.SUCCESS.getCode());
        responseContent.setMessage("");
        responseContent.setData(data);
        return responseContent;
    }

    public static <T> ResponseContent<T> of(Integer code, String message, T data) {
        ResponseContent<T> responseContent = new ResponseContent<>();
        responseContent.setCode(code);
        responseContent.setMessage(message);
        responseContent.setData(data);
        return responseContent;
    }
}
