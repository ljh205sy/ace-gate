package com.github.wxiaoqi.gate.demo.provider.api;

import com.github.wxiaoqi.gate.agent.rest.ApiGateSecurity;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by ace on 2017/7/9.
 */
@Controller
@RequestMapping("language")
@ApiGateSecurity
@Slf4j
public class LanguageRest {
    @RequestMapping(value = "/chinese",method = RequestMethod.GET)
    public @ResponseBody String sayChineseHelloWorld() throws InterruptedException {
        return "你好，世界！";
    }
    @RequestMapping(value = "/english",method = RequestMethod.GET)
    public @ResponseBody String sayEnglishHelloWorld(){
        return "Hello World！";
    }
}
