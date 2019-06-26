package com.example.spring01.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.spring01.model.dto.ProductDTO;

@RestController
public class SampleRestController {
	//RestController: ajax 전용 컨트롤러, Spring 4.0부터 사용 가능(뷰를 리턴하는 게 아니라 json을 리턴)
	@RequestMapping("/test/doF")
	public ProductDTO doF() {
		return new ProductDTO("냉장고", 3000000);
	}
}
