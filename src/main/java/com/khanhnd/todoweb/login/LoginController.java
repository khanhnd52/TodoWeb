package com.khanhnd.todoweb.login;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class LoginController {
    private AuthenticationService authenticationService;

    public LoginController(AuthenticationService authenticationService) {
        this.authenticationService = authenticationService;
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login () {
        return "login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login (@RequestParam String username, @RequestParam String password, ModelMap modelMap) {
        if (authenticationService.authenticate(username, password)) {
            modelMap.put("username", username);
            return "welcome";
        }
        return "login";
    }


}
