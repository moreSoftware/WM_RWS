package com.example.demo;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
interface UserMapper {
    public List<UserDTO> userList() throws Exception;
    public int userCreate(UserDTO user) throws Exception;
    public int userDelete(String id) throws Exception;
    public int userUpdate(UserDTO user) throws Exception;
}