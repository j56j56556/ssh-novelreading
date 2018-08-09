package cn.zhy.xiaoshuo.contral;

import java.util.Map;

import cn.zhy.xiaoshuo.model.Chapter;
import cn.zhy.xiaoshuo.model.Novel;
import cn.zhy.xiaoshuo.service.Managersave;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class Managesavecontral extends ActionSupport {
	private Novel novel;
	private Chapter chapter;
		public String managersave()
		{
		Managersave ma = new Managersave();
		Map<String,Object> actionrequest = (Map<String, Object>) ActionContext.getContext().get("request");
		actionrequest.put("novelname", novel.getName());
		actionrequest.put("novelauother", novel.getAuother());
		actionrequest.put("novelcreatetime", novel.getCreatetime());
		novel.getMuchchapter().add(chapter);
		novel.setChapter(chapter);
		new Managersave().dosave(novel);
		return "success";
		
		}
		
	public Novel getNovel()
	{
		return novel;
	}
	public void setNovel(Novel novel1)
	{
		this.novel=novel1;
	}
	public Chapter getChapter()
	{
		return chapter;
	}
	public void setChapter(Chapter chapter1)
	{
		this.chapter=chapter1;
	}
}
