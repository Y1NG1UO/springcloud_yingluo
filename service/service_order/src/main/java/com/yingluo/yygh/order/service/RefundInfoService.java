package com.yingluo.yygh.order.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.yingluo.yygh.model.order.PaymentInfo;
import com.yingluo.yygh.model.order.RefundInfo;

public interface RefundInfoService extends IService<RefundInfo> {
    //保存退款记录
    RefundInfo saveRefundInfo(PaymentInfo paymentInfo);
}