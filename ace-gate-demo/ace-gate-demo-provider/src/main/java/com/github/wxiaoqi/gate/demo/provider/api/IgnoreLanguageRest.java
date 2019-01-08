package com.github.wxiaoqi.gate.demo.provider.api;

//import com.github.wxiaoqi.gate.agent.rest.ApiGateSecurity;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.wxiaoqi.gate.agent.rest.ApiGateSecurity;

/**
 * 验证的结果
 * 访问http://localhost:8765/ignoreLanguage/ignoreChinese   则不需要验证这个方法
 * 访问http://localhost:8765/ignoreLanguage/english          需要验证，这个方法不能忽略
 * 
 * 对于@ApiGateSecurity 注解的方法需要被拦截
 * 对于@ApiGateSecurity 注解的类，那么类下的所有方法都会被Interceptor进行拦截
 */
@Controller
@RequestMapping("ignoreLanguage")
//@ApiGateSecurity  如果不加注解则不会拦截类的请求
@Slf4j
public class IgnoreLanguageRest {
    @RequestMapping(value = "/ignoreChinese",method = RequestMethod.GET)
    public @ResponseBody String sayChineseHelloWorld() throws InterruptedException {
        return "忽略!!! 请求,你好世界！";
    }
    // 如果是类和某一个方法，那么也会有Interceptor的拦截器进行拦截
    @RequestMapping(value = "/english",method = RequestMethod.GET)
    @ApiGateSecurity
    public @ResponseBody String sayEnglishHelloWorld(){
        return "ignore, Hello World！";
    }
}
