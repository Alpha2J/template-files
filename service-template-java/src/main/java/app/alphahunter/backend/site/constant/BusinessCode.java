package app.alphahunter.backend.site.constant;

public enum BusinessCode {
    SESSION_EXPIRED(-3, "session expired"),
    UNKNOWN_EXCEPTION(-2, "unknown exception"),
    COMMON_BIZ_ERROR(-1, ""),
    SUCCESS(0, "success");

    private final int code;
    private final String message;

    BusinessCode(int code, String message) {
        this.code = code;
        this.message = message;
    }

    public int getCode() {
        return code;
    }

    public String getMessage() {
        return message;
    }
}

