package cn.zhy.xiaoshuo.service;
import cn.zhy.xiaoshuo.contral.Managesavecontral;
import cn.zhy.xiaoshuo.dao.Savecontent;
import cn.zhy.xiaoshuo.model.Chapter;
import cn.zhy.xiaoshuo.model.Novel;
public class Managersave {
			public void dosave(Novel novel1)
			{
				(new Savecontent()).Savenovel(novel1);
			}
			
}
