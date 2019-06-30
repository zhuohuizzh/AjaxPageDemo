package com.hui.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.hui.dao.LoginDao;
import com.hui.entity.Login;
import com.hui.service.LoginService;

public class LoginServiceImpl implements LoginService{
	LoginDao loginDao = new LoginDao();
	
	@Override
	public int querypageCount(int pageSize) {
		int countAll = loginDao.countAllLogin();
		int pageCount = (int) Math.ceil((double)countAll/pageSize);
		return pageCount;
	}

	@Override
	public List<Login> queryLoginPage(int page, int pageSize) {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("pageStart", page*pageSize);
		params.put("pageSize", pageSize);
		return loginDao.queryLoginPage(params);
	}
	
}
