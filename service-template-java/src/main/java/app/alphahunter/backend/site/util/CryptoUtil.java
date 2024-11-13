package app.alphahunter.backend.site.util;

import org.springframework.util.DigestUtils;

import java.nio.charset.StandardCharsets;

public class CryptoUtil {

    public static String toMd5(String str) {
        byte[] contentBytes = str.getBytes(StandardCharsets.UTF_8);
        return DigestUtils.md5DigestAsHex(contentBytes);
    }
}
