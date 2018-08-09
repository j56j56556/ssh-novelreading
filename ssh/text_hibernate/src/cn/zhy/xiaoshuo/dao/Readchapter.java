package cn.zhy.xiaoshuo.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import cn.zhy.xiaoshuo.model.Chapter;
import cn.zhy.xiaoshuo.model.Novel;

public class Readchapter {
	public Chapter readchapter(String novelname,String chaptername)   //读取章节的内容，上下章用
	{Session session = Connectsession.opensession();
	Transaction shiwu = session.beginTransaction();
	String hql = "from cn.zhy.xiaoshuo.model.Chapter where novel_id = ? and name = ? ";
	String hql1 = "from cn.zhy.xiaoshuo.model.Novel where name = ? ";
	Query query = session.createQuery(hql1);
	query.setParameter(0, novelname);
	Novel n1=(Novel)query.uniqueResult();
	query = session.createQuery(hql);
	query.setParameter(0,n1.getNovel_id());
	query.setParameter(1, chaptername);
	Chapter c1 = (Chapter)query.uniqueResult();
	shiwu.commit();
	session.close();
	return c1;
	}
	public Novel readnovel(String novelname)             //根据小说名字读取小说基本信息
	{Session session = Connectsession.opensession();
	Transaction shiwu = session.beginTransaction();
	String hql1 = "from cn.zhy.xiaoshuo.model.Novel where name = ? ";
	Query query = session.createQuery(hql1);
	query.setParameter(0, novelname);
	Novel n1=(Novel)query.uniqueResult();
	shiwu.commit();
	session.close();
	return n1;
		
	}
	public Novel readnovel(long novelindex)        //根据小说id读取小说基本信息
	{Session session = Connectsession.opensession();
	Transaction shiwu = session.beginTransaction();
	String hql1 = "from cn.zhy.xiaoshuo.model.Novel where novel_id = ? ";
	Query query = session.createQuery(hql1);
	query.setParameter(0, novelindex);
	Novel n1=(Novel)query.uniqueResult();
	shiwu.commit();
	session.close();
	return n1;
		
	}
	
	public List readallnovel()							//读取全部小说的基本信息
	{Session session = Connectsession.opensession();
	Transaction shiwu = session.beginTransaction();
	String hql1 = "from cn.zhy.xiaoshuo.model.Novel";
	Query query = session.createQuery(hql1);
	List<Novel> list = query.list();
	shiwu.commit();
	session.close();
	return list;
		
	}
	
	public List readallchapter(String s1)         //使用原生sql查询章节名称
	{Session session = Connectsession.opensession();
	Transaction shiwu = session.beginTransaction();
	String Sql1 = "select novel_id from novel where name=?";
	Query query = session.createSQLQuery(Sql1);
	query.setParameter(0, s1);
	Object l1=  query.uniqueResult();
	Sql1 = "select name from chapter where novel_id=?";
	query = session.createSQLQuery(Sql1);
	query.setParameter(0,l1);
	List<Chapter> list = query.list();
	shiwu.commit();
	session.close();
	return list;
		
	}
	public Number readallchaptermount(String s1)   //传入小说名算出小说的章节数目
	{
		Session session = Connectsession.opensession();
		Transaction shiwu = session.beginTransaction();
		String hql1 = "from cn.zhy.xiaoshuo.model.Novel where name = ? ";
		String hql2 = "select count(*) from cn.zhy.xiaoshuo.model.Chapter where novel_id= ?";
		Query query = session.createQuery(hql1);
		query.setParameter(0, s1);
		Object num = query.uniqueResult();	
		query = session.createQuery(hql2);
		query.setParameter(0, num);
		Number mount = (Number) query.uniqueResult();
		System.out.println("//"+mount);
		shiwu.commit();
		session.close();
		return mount;
	}
	public Chapter readchapterindex(int i,String s)
	{
	Session session = Connectsession.opensession();
	Transaction shiwu = session.beginTransaction();
	
	String hql1 = "from cn.zhy.xiaoshuo.model.Novel";
	Query query = session.createQuery(hql1);
	query.list();
	
	String hql = "from cn.zhy.xiaoshuo.model.Chapter where novel_id = ? and chapternum = ? ";
	query = session.createQuery(hql);
	//query.list();
	query.setParameter(0,i);
	query.setParameter(1,s);
	Chapter c1=(Chapter)query.uniqueResult();
	shiwu.commit();
	session.close();
	return c1;
		
	}
}
