package app.alphahunter.backend.site.exception;

public class URLRequestException extends RuntimeException {
    public URLRequestException() {
        super();
    }

    public URLRequestException(String message) {
        super(message);
    }
}
