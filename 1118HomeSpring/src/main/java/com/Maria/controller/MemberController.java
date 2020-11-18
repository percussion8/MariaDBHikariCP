package com.Maria.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Maria.mapper.MemberMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;

@Controller
@RequestMapping("/member")
@AllArgsConstructor
public class MemberController {
	@Setter(onMethod_=@Autowired)
	private MemberMapper mapper;
	
	@GetMapping("/members")
	public void getList(Model model) {
		model.addAttribute("all", mapper.memv());
	}

}
