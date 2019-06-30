package com.hui.dao;

import java.io.IOException;
import java.io.Reader;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.hui.entity.Login;
import com.hui.mapper.LoginMapper;

public class LoginDao implements LoginMapper{
	
	private SqlSession getSession() {
		Reader config = null;
		try {
			config = Resources.getResourceAsReader("mybatis.xml");
		} catch (IOException e) {
			e.printStackTrace();
		}
		return new SqlSessionFactoryBuilder().build(config).openSession();
	}
	
	private LoginMapper getMapper() {
		return getSession().getMapper(LoginMapper.class);
	}
	
	@Override
	public int countAllLogin() {
		return getMapper().countAllLogin();
	}

	@Override
	public List<Login> queryLoginPage(Map<String, Object> params) {
		return getMapper().queryLoginPage(params);
	}

}
