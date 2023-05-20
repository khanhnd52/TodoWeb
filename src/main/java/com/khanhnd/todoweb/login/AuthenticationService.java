package com.khanhnd.todoweb.login;

import org.springframework.stereotype.Service;

@Service
public class AuthenticationService {
    public boolean authenticate(String username, String password) {
        boolean isValidUsername = username.equalsIgnoreCase("khanhnd");
        boolean isValidPassword = password.equalsIgnoreCase("123");
        return isValidUsername && isValidPassword;
    }
}
