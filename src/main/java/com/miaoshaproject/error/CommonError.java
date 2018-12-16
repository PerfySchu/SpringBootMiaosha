package com.miaoshaproject.error;

/**
 * @ClassName CommonError
 * @Author PerfySchu
 * @Date 2018/12/16 13:01
 * @Version 1.0
 **/
public interface CommonError {
    public int getErrCode();

    public String getErrMsg();

    public CommonError setErrMsg(String errMsg);
}
