package com.example.order_demo;

import com.example.order_demo.service.OrderService;
import com.example.order_demo.type.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@SpringBootApplication
@RestController
@RequestMapping("/orders")
public class OrderDemoApplication {

	@Autowired
	private OrderService orderService;

	public static void main(String[] args) {
		SpringApplication.run(OrderDemoApplication.class, args);
	}

	@GetMapping
	public List<Order> getOrders(){
		return orderService.getOrders();
	}

}
