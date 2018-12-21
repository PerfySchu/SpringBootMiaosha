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
    /**
     * 方式1：通过前端url上传过来秒杀活动id， 下单接口内校验对应id是否属于对应商品且活动已开始
     *      方便扩展多个秒杀活动，且不需要再下单逻辑里面进行冗余的判断，此种方式更优
     * 方式2：这接在下单接口内判断对应的商品是否存在秒杀活动，若存在进行汇中的则以秒杀价格下单
     */
    OrderModel createOrder(Integer userId, Integer itemId, Integer promoId, Integer amount) throws BusinessException;
}
