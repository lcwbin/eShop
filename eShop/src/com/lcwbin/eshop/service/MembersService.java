package com.lcwbin.eshop.service;

import com.lcwbin.eshop.module.Members;

public interface MembersService {

	public boolean registerMember(Members member);
	
	public Members memberLogin(Members member);
}
