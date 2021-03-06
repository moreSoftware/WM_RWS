package com.example.demo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
 
@RestController
public class UserController {
    
    @Autowired
    private UserMapper userMapper;
    
    @RequestMapping("/")
    public ModelAndView  hello() throws Exception {
    	return userList();
    }
 
    @RequestMapping("/test")
    public ModelAndView  test() throws Exception {
    	return new ModelAndView("test", "test","test");
    }
    
    //유저 조회
    @RequestMapping("/userList")
    public ModelAndView userList() throws Exception{
        List<UserDTO> userList = userMapper.userList();
        return new ModelAndView("userList","list",userList);
    }
    
    //유저 생성
    @RequestMapping(value="/userCreate",method=RequestMethod.GET)
    public ModelAndView writeForm() throws Exception{
        
        return new ModelAndView("userCreate");
    }

    @RequestMapping(path = "/userCreate",method=RequestMethod.POST)
    public int userCreate(UserDTO user) throws Exception {
    	try {
    		//에러 핸들링 전용
//    		HashMap<String, Object> map = new HashMap<>();
//    		map.put("abcaa", "ddeeed");
//    		return map;	
    		System.out.println(user.getId());
    		return userMapper.userCreate(user);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("에러");
		}
    	return 0 ;
    }
    
    //유저 삭제
    @RequestMapping("/userDelete")
    public ModelAndView userDelete(String id) throws Exception {
    	try {
    		System.out.println(id);
    		userMapper.userDelete(id);
		} catch (Exception e) {
			// TODO: handle exception
		}
    	// 에러 핸들링 예정
    	return userList();
    }
    
    //유저 수정
    @RequestMapping(value="/userUpdate",method=RequestMethod.GET)
    public ModelAndView updateForm(String id) throws Exception{
        return new ModelAndView("userUpdate","id",id);
    }
    
    @RequestMapping(path = "/userUpdate",method=RequestMethod.POST)
    public ModelAndView userUpdate(UserDTO user) throws Exception {
    	try {
    		//에러 핸들링 전용
//    		HashMap<String, Object> map = new HashMap<>();
//    		map.put("abcaa", "ddeeed");
//    		return map;	
    		System.out.println(user.getId()+"업데이트 예정");
    		userMapper.userUpdate(user);
		} catch (Exception e) {
			System.out.println("error");
			// TODO: handle exception
		}
    	return userList();
    }
    
}