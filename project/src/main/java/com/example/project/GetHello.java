package com.example.project;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class GetHello {

    @GetMapping(value = "/hello")
    public String getHello(){
        return "Hello";
    }
    
}
