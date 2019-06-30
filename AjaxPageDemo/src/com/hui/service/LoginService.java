package com.hui.service;

import java.util.List;

import com.hui.entity.Login;

public interface LoginService {
	int querypageCount(int pageSize);
	List<Login> queryLoginPage(int page,int pageSize);
}
