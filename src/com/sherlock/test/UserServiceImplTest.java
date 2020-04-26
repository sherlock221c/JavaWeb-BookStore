package com.sherlock.test;

import com.sherlock.pojo.User;
import com.sherlock.service.UserService;
import com.sherlock.service.impl.UserServiceImpl;
import org.junit.Test;

import static org.junit.Assert.*;

public class UserServiceImplTest {

    UserService userService = new UserServiceImpl();

    @Test
    public void registeUser() {
        userService.registeUser(new User("tommmm", "23414", "wqrqt@qq.com"));
    }

    @Test
    public void login() {
        System.out.println(userService.login(new User(null,"waston", "111111", null)));
    }


    @Test
    public void existUsername() {
        if (userService.existUsername("ccccasda")){
            System.out.println("用户名已存在");
        }else {
            System.out.println("用户名不存在");
        }
    }
}