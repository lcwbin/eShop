package com.lcwbin.eshop.dao;

import com.lcwbin.eshop.module.Members;

public interface MembersDao {

	public int registerMember(Members member);
	
	public Members memberLogin(Members member);
}
