package com.sherlock.dao;

import com.sherlock.pojo.User;

public interface UserDao {


    /**
     * 根据用户名查询用户信息
     * @param username 用户名
     * @return
     */
    public User queryUserByUsername(String username);

    /**
     * 保存用户信息
     * @param user POJO
     * @return 如果返回-1表示保存用户失败
     */
    public int saveUser(User user);

    /**
     * 根据用户名和密码查询用户信息
     * @param username 用户名
     * @param password 用户密码
     * @return 如果返回null说明没有该用户信息
     */
    public User queryUserByUsernameAndPassword(String username, String password);
}
