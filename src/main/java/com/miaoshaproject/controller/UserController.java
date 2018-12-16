package com.miaoshaproject.controller;

import com.miaoshaproject.controller.viewobject.UserVO;
import com.miaoshaproject.error.BusinessException;
import com.miaoshaproject.error.EmBusinessError;
import com.miaoshaproject.response.CommonReturnType;
import com.miaoshaproject.service.UserService;
import com.miaoshaproject.service.model.UserModel;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.Random;

/**
 * @ClassName   UserController
 * @Author      PerfySchu
 * @Date        2018/12/14 18:02
 * @Version     1.0
 **/
@Controller("user")
@RequestMapping("/user")
public class UserController extends BaseController {
    @Autowired
    private UserService userService;
    @Autowired
    private HttpServletRequest httpServletRequest;


    //用户获取otp短信接口
    @RequestMapping("/getotp")
    @ResponseBody
    public CommonReturnType getOtp(@RequestParam(name="telephone")String telephone){
        //需要按照一定的规则生成OTP验证码
        Random random = new Random();
        int randomInt = random.nextInt(999999);
        randomInt += 10000;
        String otpCode = String.valueOf(randomInt);

        //将OTP验证码同对应用户的手机号关联
        //使用HttpSession的方式绑定手机号和OTPcode
        httpServletRequest.getSession().setAttribute(telephone, otpCode);


        //将OTP验证码通过短信通道发送给用户（TODO：此处省略）
        System.out.println("telephone = " + telephone + " & otpCode = " + otpCode);

        return CommonReturnType.create(null);
    }


    @RequestMapping("/get")
    @ResponseBody
    public CommonReturnType getUser(@RequestParam(name="id")Integer id) throws BusinessException {
        //调用service服务获取对应id的用户对象并返回给前端
        UserModel userModel = userService.getUserById(id);

        if(userModel == null){
            throw new BusinessException(EmBusinessError.USER_NOT_EXIST);
        }

        //将核心领域模型用户对象转换为可供UI使用的viewobject
        UserVO userVO = convertFromModel(userModel);

        return CommonReturnType.create(userVO);
    }

    private UserVO convertFromModel(UserModel userModel){
        if(userModel == null){
            return null;
        }
        UserVO userVO = new UserVO();
        BeanUtils.copyProperties(userModel, userVO);
        return userVO;
    }
}
