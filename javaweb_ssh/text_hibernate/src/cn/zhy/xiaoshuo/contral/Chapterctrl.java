package cn.zhy.xiaoshuo.contral;

import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.google.gson.Gson;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import cn.zhy.xiaoshuo.model.Chapter;
import cn.zhy.xiaoshuo.model.Novel;
import cn.zhy.xiaoshuo.service.*;
public class Chapterctrl extends ActionSupport{
	public String readallchapter() throws UnsupportedEncodingException 
	{//	Map<String,Object> request=(Map<String, Object>) ActionContext.getContext().get("request");
		HttpServletRequest request = ServletActionContext.getRequest();
		System.out.println("进来");
		String s1=new String(request.getParameter("name").getBytes("iso-8859-1"),"utf-8");
		List list=new Read().readallchapter(s1);
		Novel novel=new Read().readnovel(s1);
		request.setAttribute("list", list);
		request.setAttribute("name", s1);
		request.setAttribute("auother", novel.getAuother());
		return "readallchapter";
	}
	public String readchapter()	
	{
		//Map<String,Object> actionrequest = (Map<String, Object>) ActionContext.getContext().get("request");
		HttpServletRequest request = ServletActionContext.getRequest();
		try {
			Chapter c1 = new Read().readchapter(new String(request.getParameter("name").getBytes("iso-8859-1"),"utf-8"), new String(request.getParameter("chaptername").getBytes("iso-8859-1"),"utf-8"));
			request.setAttribute("chapter", c1);
			Novel n1= new Read().readnovel(new String(request.getParameter("name").getBytes("iso-8859-1"),"utf-8"));
			request.setAttribute("novel",n1);
			Number num = new Read().readchaptermount(n1.getName());
			System.out.println("+++"+n1.getName());
			request.setAttribute("mount", num);
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		return "readchapter";
	}
	public String nextchapter()
	{	HttpServletRequest request = ServletActionContext.getRequest();
		Chapter c1=new Read().readchapterindex(Integer.parseInt(request.getParameter("nameid")),(String)request.getParameter("page"));
		request.setAttribute("chapter", c1);
		Novel n1= new Read().readnovel(Long.parseLong(request.getParameter("nameid")));
		System.out.println(n1.getAuother());
		request.setAttribute("novel", n1);
		return "nextchapter";
	}
	
}
