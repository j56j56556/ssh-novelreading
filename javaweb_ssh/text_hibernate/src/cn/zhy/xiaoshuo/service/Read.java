package cn.zhy.xiaoshuo.service;

import java.util.List;
import java.util.Set;

import cn.zhy.xiaoshuo.dao.Readchapter;
import cn.zhy.xiaoshuo.model.Chapter;
import cn.zhy.xiaoshuo.model.Novel;

public class Read {
		private static Set<Chapter> chapter;
		public Chapter readchapter(String s1,String s2)
		{ 
		 return	new Readchapter().readchapter(s1, s2);
		}
		public Novel readnovel(String s1)
		{ 
		 return	new Readchapter().readnovel(s1);
		}
		public Novel readnovel(long i1)
		{ 
		 return	new Readchapter().readnovel(i1);
		}
		public List readallnovel()
		{ 
		 return	new Readchapter().readallnovel();
		}
		public List readallchapter(String n1)
		{ 
		 return	new Readchapter().readallchapter(n1);
		}
		public Chapter readchapterindex(int i1,String s1)
		{
			return	new Readchapter().readchapterindex(i1, s1);
		}
		public Number readchaptermount(String s1)
		{
			
			return new Readchapter().readallchaptermount(s1);
		}
		public static void main(String[] argus)
		{
			System.out.println(new Readchapter().readallchaptermount("假如给我三天光明"));

		}
}
