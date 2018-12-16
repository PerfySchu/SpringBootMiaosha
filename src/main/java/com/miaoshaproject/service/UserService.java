package com.miaoshaproject.service;

import com.miaoshaproject.service.model.UserModel;

/**
 * @ClassName UserService
 * @Author PerfySchu
 * @Date 2018/12/14 18:43
 * @Version 1.0
 **/
public interface UserService {

    //通过用户ID获取用户对象的方法
    UserModel getUserById(Integer id);
}
