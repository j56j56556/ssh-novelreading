package cn.zhy.xiaoshuo.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class Connectsession {
	private static SessionFactory s;
		static
		{	Configuration conf = new Configuration().configure();
			s = conf.buildSessionFactory();
		}
	public static Session opensession()
	{
		return s.openSession();
	}
	public static Session getsession()
	{
		return s.getCurrentSession();
	}
}
