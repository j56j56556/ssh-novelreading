package cn.zhy.xiaoshuo.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import cn.zhy.xiaoshuo.model.*;


public class Zhuye {
		public List ReadBenZhouTJ()
		{
			Session session = Connectsession.opensession();
			Transaction shiwu = session.beginTransaction();
			String hql1 = "from cn.zhy.xiaoshuo.model.BenZhouTJ";
			Query query= session.createQuery(hql1);
			List<BenZhouTJ> list =query.list();
			shiwu.commit();
			session.close();
			return list;
			
		}
		
		public List readmember(String member)
		{
			Session session = Connectsession.opensession();
			Transaction shiwu = session.beginTransaction();
	//		Member m1 = session.get(Member.class,4);
		//	System.out.println(m1.getMoney());
			String hql = "from Member where name = ?";
			Query q1= session.createQuery(hql);
			q1.setParameter(0, member);
			List<Member> list = q1.list();
			shiwu.commit();
			session.close();
			return list;
		}
		public static void main(String[] argu)
		{
		//	new Zhuye().readmember();
		}
}
