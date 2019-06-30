package com.hui.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.alibaba.fastjson.JSON;
import com.hui.entity.Login;
import com.hui.service.LoginService;
import com.hui.service.impl.LoginServiceImpl;

public class GetLoginPageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		Object obj_page = request.getParameter("page");
		Object obj_pageSize = request.getParameter("pagesize");
		int page = 1;
		int pageSize = 10;
		if(obj_page!=null) {
			page = Integer.parseInt((String) obj_page);
		}
		if(obj_pageSize!=null) {
			pageSize = Integer.parseInt((String) obj_pageSize);
		}
		LoginService loginService = new LoginServiceImpl();
		int pageCount = loginService.querypageCount(pageSize);
		List<Login> loginPage = loginService.queryLoginPage(page-1, pageSize);
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("pageCount", pageCount);
		result.put("pageSize",pageSize);
		result.put("curPage",page);
		result.put("loginPage", loginPage);
		String result_josn = JSON.toJSONString(result);
		response.getWriter().write(result_josn);
		response.getWriter().flush();
		
		System.out.println("第 "+page+" 页,  大小:"+pageSize );
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
