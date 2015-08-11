package com.lcwbin.eshop.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lcwbin.eshop.module.Members;
import com.lcwbin.eshop.service.MembersService;

@Controller
public class MembersAction {

	@Resource
	private MembersService memberService;
	
	@RequestMapping(value="/addMembers",method=RequestMethod.POST)
	@ResponseBody
	public boolean addMembers(@ModelAttribute Members member){
		return memberService.registerMember(member);
	}
	
	@RequestMapping(value="/memberLogin",method=RequestMethod.POST)
	@ResponseBody
	public Members memberLogin(@ModelAttribute Members member){
		return memberService.memberLogin(member);
	}
}
