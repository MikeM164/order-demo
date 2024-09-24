package com.example.order_demo.service;

import com.example.order_demo.type.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

@Service
public class OrderService {
    public List<Order> getOrders() {
        return Stream.of(new Order(101, "Mobile", 1, 100L),
                        new Order(51, "Book", 3, 450L),
                        new Order(75, "Laptop", 2, 200L),
                        new Order(55, "Headset", 1, 50L))
                .collect(Collectors.toList());
    }
}
