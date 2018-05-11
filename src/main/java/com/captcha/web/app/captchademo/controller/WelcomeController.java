package com.captcha.web.app.captchademo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class WelcomeController {

    @RequestMapping(value = {"/welcome", "/"})
    public String loginMessage(){
        return "welcome";
    }

}