package com.yingluo.yygh.order.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.yingluo.yygh.model.order.OrderInfo;
import com.yingluo.yygh.model.order.PaymentInfo;

import java.util.Map;

public interface PaymentService extends IService<PaymentInfo> {
    //向支付记录表里面添加信息
    void savePaymentInfo(OrderInfo order, Integer paymentType);

    //更改订单状态
    void paySuccess(String out_trade_no, Integer status, Map<String, String> resultMap);

    //获取支付记录
    PaymentInfo getPaymentInfo(Long orderId, Integer paymentType);
}
