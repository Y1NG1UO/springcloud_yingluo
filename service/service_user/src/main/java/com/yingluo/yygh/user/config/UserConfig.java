package com.yingluo.yygh.user.config;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@MapperScan("com.yingluo.yygh.user.mapper")
public class UserConfig {
}
