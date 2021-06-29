package com.example.fooservice.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.concurrent.atomic.AtomicLong;

@RestController
public class FooController {

    private static AtomicLong callCount = new AtomicLong(0);

    @GetMapping("/foo")
    public String foo() {
        return "foo # " + callCount.incrementAndGet();
    }
}
