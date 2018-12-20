package com.miaoshaproject.service;

import com.miaoshaproject.service.model.PromoModel;

/**
 * @ClassName PromoService
 * @Author PerfySchu
 * @Date 2018/12/20 16:59
 * @Version 1.0
 **/
public interface PromoService {

    PromoModel getPromoByItemId(Integer itemId);
}
