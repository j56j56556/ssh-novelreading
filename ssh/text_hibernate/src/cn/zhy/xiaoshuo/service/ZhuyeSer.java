package cn.zhy.xiaoshuo.service;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import net.sf.json.JSON;
import net.sf.json.JSONObject;
import net.sf.json.JSONString;
import net.sf.json.util.JSONStringer;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.google.gson.Gson;


import cn.zhy.xiaoshuo.model.*;
import cn.zhy.xiaoshuo.dao.*;
public class ZhuyeSer {
		public List DoReadBenZhouTJ()
		{
			List<BenZhouTJ> list= new Zhuye().ReadBenZhouTJ();
			return list;
		}
		public void test()
		{
			ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
			Novel n1=(Novel)ac.getBean("novel");
			System.out.println(n1.getName());
			Map<String,String> map1=new HashMap();
			map1.put("src", "/login/login");
			map1.put("src1", "/login/login");
			Gson g1 = new Gson();
			String s1 = g1.toJson(map1);
			System.out.println(s1);
		}
		public static void main(String[] argu)
		{
			new ZhuyeSer().test();
		}
}
