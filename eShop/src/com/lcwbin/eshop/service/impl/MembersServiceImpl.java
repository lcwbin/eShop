package com.lcwbin.eshop.service.impl;

import java.util.Date;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lcwbin.eshop.dao.MembersDao;
import com.lcwbin.eshop.module.Members;
import com.lcwbin.eshop.service.MembersService;
import com.lcwbin.eshop.tools.MD5Tool;

@Service
public class MembersServiceImpl implements MembersService {
	
	@Resource
	private MembersDao memberdao; 

	@Override
	public boolean registerMember(Members member) {
		boolean temp = false;
		try {
			member.setMid(UUID.randomUUID().toString().replace("-", ""));
			member.setPassword(MD5Tool.md5(member.getPassword()).toString());
			member.setIntegral(100);
			Date now = new Date();
			member.setCreationdate(now);
			member.setUpdatedate(now);
			if(memberdao.registerMember(member)>0){
				temp = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
			temp = false;
		}
		
		return temp;
	}

	@Override
	public Members memberLogin(Members member) {
		member.setPassword(MD5Tool.md5(member.getPassword().toString()));
		return memberdao.memberLogin(member);
	}

}
