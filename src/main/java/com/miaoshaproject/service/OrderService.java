package com.miaoshaproject.service;

import com.miaoshaproject.error.BusinessException;
import com.miaoshaproject.service.model.OrderModel;

/**
 * @ClassName OrderService
 * @Author PerfySchu
 * @Date 2018/12/20 11:37
 * @Version 1.0
 **/
public interface OrderService {
    OrderModel createOrder(Integer userId, Integer itemId, Integer amount) throws BusinessException;
}
