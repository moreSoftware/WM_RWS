package com.example.demo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
 
@RestController
public class UserController {
    
    @Autowired
    private UserMapper userMapper;
    
    
    @RequestMapping("/")
    public String hello() {
        return "userList";
    }
    
    @RequestMapping(path = "/user")
    public String jspTest() {
        return "user";
    }
    
    @RequestMapping("/userList")
    public String userList() throws Exception{
        List<UserDTO> user = userMapper.userList();
        System.out.println("test");
        return "userList";
    }



    
}