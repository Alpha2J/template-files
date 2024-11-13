package app.alphahunter.backend.site.exception;

import app.alphahunter.backend.site.constant.BusinessCode;

public class BusinessException extends RuntimeException {
    private final Integer code;

    private BusinessException(Integer code, String message) {
        super(message);
        this.code = code;
    }

    public static BusinessException of(String msg) {
        return new BusinessException(BusinessCode.COMMON_BIZ_ERROR.getCode(), msg);
    }

    public static BusinessException of(BusinessCode businessCode) {
        return new BusinessException(businessCode.getCode(), businessCode.getMessage());
    }

    public static BusinessException of(Integer code, String msg) {
        return new BusinessException(code, msg);
    }

    public Integer getCode() {
        return this.code;
    }
}
