package com.yingluo.yygh.msm.service;

import com.yingluo.yygh.vo.msm.MsmVo;

public interface MsmService {
    //发送手机验证码
    boolean send(String phone, String code);

    boolean send(MsmVo msmVo);
}
