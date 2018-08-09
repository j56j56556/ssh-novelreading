package cn.zhy.xiaoshuo.service;

import java.util.List;

import cn.zhy.xiaoshuo.dao.*;
import cn.zhy.xiaoshuo.model.*;
public class Login {
       public int checkmember(String m1,String p1)
       {	
    	   List<Member> l1 =  new Zhuye().readmember(m1);
    	   System.out.println(m1+p1);
    	   if(l1.isEmpty())
    	   {
    		   return -1;
    	   }
    	   else if(l1.get(0).getPassword().equals(p1))
    	   {
    		   
    		   return 1;
    	   }
    	   else
    	   {
    		   return 0;
    	   }
       }
   	public static void main(String[] argu)
	{
		System.out.println(new Login().checkmember("123456", "11111"));
		
	}
}
