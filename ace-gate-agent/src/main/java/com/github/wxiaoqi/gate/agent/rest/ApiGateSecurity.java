package com.github.wxiaoqi.gate.agent.rest;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * Created by ace on 2017/7/7.
 *  @Target(ElementType.TYPE)       // 接口、类、枚举、注解
 *  @Target(ElementType.METHOD)    // 方法
 */
@Retention(RetentionPolicy.RUNTIME)
@Target(value = { ElementType.METHOD, ElementType.TYPE })
public @interface ApiGateSecurity {
}
