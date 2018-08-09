package cn.zhy.xiaoshuo.contral;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.zhy.xiaoshuo.model.Novel;
import cn.zhy.xiaoshuo.service.Login;
import cn.zhy.xiaoshuo.service.ZhuyeSer;

import com.google.gson.Gson;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class Loginctrl extends ActionSupport {
	private String j1;
	public String checklogin() throws IOException
	{
		ApplicationContext ac = new ClassPathXmlApplicationContext("ApplicationContext.xml");		
		HttpServletRequest request=ServletActionContext.getRequest();
		HttpServletResponse response=ServletActionContext.getResponse();
		response.setContentType("text/html;charset=UTF-8");
		String m1 = (String) request.getParameter("member");
		String p1 = (String) request.getParameter("password");
		Login l1 = (Login) ac.getBean("loginservice");
		Map<String,String> map1=new HashMap();
		map1.put("src", "/login/login");
		map1.put("src1", "/login/login");
		Gson s1= new Gson();
		j1=s1.toJson(map1);
		System.out.println(j1);
		if(m1==null)
		{
			System.out.println("空");
			return "empty";
		}
		int i = l1.checkmember(m1, p1);
		if(i==1)
		{

			return "success";
		}
		else if(i==-1)
		{	
			request.setAttribute("mes","用户名字不存在");
			return "error";
		}
		else
		{	System.out.println("0");
			request.setAttribute("mes","密码出错");
			return "error";
		}
	}
	public String login()
	{
		return "success";
	}
	public void setJ1(String j1) {
		this.j1 = j1;
	}
	public String getJ1() {
		return j1;
	}
	
}
