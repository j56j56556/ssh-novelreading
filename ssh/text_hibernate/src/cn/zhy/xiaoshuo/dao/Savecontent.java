package cn.zhy.xiaoshuo.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import cn.zhy.xiaoshuo.model.Novel;


public class Savecontent {
		public void Savenovel(Novel novel1)
		{
			Session session = Connectsession.opensession();
			Transaction shiwu = session.beginTransaction();
			String hql="from cn.zhy.xiaoshuo.model.Novel";
			Query query = session.createQuery(hql);
			List<Novel> list = query.list();
			if(!(list.isEmpty()))
			{
			for(Novel n1:list)
			{System.out.println(n1.getName()+"."+novel1.getName());
				if(n1.getName().equals(novel1.getName()))
				{	System.out.println(n1.getName()+"="+novel1.getName());
					n1.getMuchchapter().add(novel1.getChapter());
					shiwu.commit();
					session.close();
					return;
				}
			}	
			}

			System.out.println("保存");
			session.save(novel1);
			shiwu.commit();
			session.close();
			
		}
}
