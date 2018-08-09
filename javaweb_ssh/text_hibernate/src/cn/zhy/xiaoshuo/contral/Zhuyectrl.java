package cn.zhy.xiaoshuo.contral;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import cn.zhy.xiaoshuo.model.*;
import cn.zhy.xiaoshuo.service.*;
public class Zhuyectrl extends ActionSupport {
	private Novel novel;
	public String novels()
	{	Map<String,Object> request = (Map<String, Object>)ActionContext.getContext().get("request");
		List<BenZhouTJ> list = new ZhuyeSer().DoReadBenZhouTJ();
		Novel novel= new Read().readnovel(0);
		request.put("list", list);
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
	
}
