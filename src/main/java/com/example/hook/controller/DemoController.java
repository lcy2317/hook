package com.example.hook.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;

/**
 * @Description
 * @Author lichengyang
 * @Date 2020/6/18 22:18
 */
@RestController
@RequestMapping("/ci")
public class DemoController {
    @RequestMapping("/get")
    private String Foo(HttpServletRequest request) {
        String clone_url = request.getParameter("clone_url");
        System.out.println(clone_url);
        return clone_url;
    }
}
