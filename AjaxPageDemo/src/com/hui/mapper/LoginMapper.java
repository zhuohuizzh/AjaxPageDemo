package com.hui.mapper;

import java.util.List;
import java.util.Map;

import com.hui.entity.Login;

public interface LoginMapper {
	public int countAllLogin();
	public List<Login> queryLoginPage(Map<String,Object> params);
}
