package com.sherlock.service;

import com.sherlock.pojo.User;

public interface UserService {


    public void registeUser(User user);

    public User login(User user);

    /**
     * 检查用户名是否可以注册
     * @param username
     * @return 返回true表示用户名已存在，返回false表示用户名可用
     */
    public boolean existUsername(String username);

}
