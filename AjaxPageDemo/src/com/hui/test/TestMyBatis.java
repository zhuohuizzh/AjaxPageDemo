package com.hui.test;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.hui.entity.Login;
import com.hui.mapper.LoginMapper;

public class TestMyBatis {
	public static void main(String[] args) {
		Reader config = null;
		try {
			config = Resources.getResourceAsReader("mybatis.xml");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		SqlSessionFactoryBuilder sessionFactoryBuilder = new SqlSessionFactoryBuilder();
		SqlSessionFactory sqlSessionFactory = sessionFactoryBuilder.build(config);
		
		SqlSession session = sqlSessionFactory.openSession();
		
		LoginMapper loginMapper = session.getMapper(LoginMapper.class);
		int pageSize = 5;
		int countAll = loginMapper.countAllLogin();
		int pageCount = (int) Math.ceil((double)countAll/pageSize);
		System.out.println("分页大小： "+pageSize);
		System.out.println("总数据： "+countAll+" 条");
		System.out.println("总页数: "+pageCount);
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("pageSize", pageSize);
		for(int i=0;i<pageCount;i++) {
			System.out.println("第 "+(i+1)+" 页      ------------------------------------------");
			params.put("pageStart", i*pageSize);
			List<Login> loginlist = loginMapper.queryLoginPage(params);
			System.out.println(loginlist);
		}
		
		System.out.println("Done !");
	}
}
