package com.miaoshaproject.service.model;

import org.joda.time.DateTime;

import java.math.BigDecimal;

/**
 * @ClassName PromoModel
 * @Author PerfySchu
 * @Date 2018/12/20 16:47
 * @Version 1.0
 **/
public class PromoModel {
    /**
     * 秒杀活动id
     */
    private Integer id;

    /**
     * 秒杀活动状态
     * 1：尚未开始 2：进行中 3：已结束
     */
    private Integer status;

    /**
     * 秒杀活动名称
     */
    private String promoname;

    /**
     * 秒杀活动开始时间
     */
    private DateTime startDate;

    /**
     * 秒杀活动结束时间
     */
    private DateTime endDate;

    /**
     * 秒杀活动的适用商品id
     */
    private Integer itemId;

    /**
     * 秒杀活动的商品价格
     */
    private BigDecimal promoItemPrice;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPromoname() {
        return promoname;
    }

    public void setPromoname(String promoName) {
        this.promoname = promoName;
    }

    public DateTime getStartDate() {
        return startDate;
    }

    public void setStartDate(DateTime startDate) {
        this.startDate = startDate;
    }

    public DateTime getEndDate() {
        return endDate;
    }

    public void setEndDate(DateTime endDate) {
        this.endDate = endDate;
    }

    public Integer getItemId() {
        return itemId;
    }

    public void setItemId(Integer itemId) {
        this.itemId = itemId;
    }

    public BigDecimal getPromoItemPrice() {
        return promoItemPrice;
    }

    public void setPromoItemPrice(BigDecimal promoItemPrice) {
        this.promoItemPrice = promoItemPrice;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "PromoModel{" +
                "id=" + id +
                ", status=" + status +
                ", promoName='" + promoname + '\'' +
                ", startDate=" + startDate +
                ", endDate=" + endDate +
                ", itemId=" + itemId +
                ", promoItemPrice=" + promoItemPrice +
                '}';
    }
}
