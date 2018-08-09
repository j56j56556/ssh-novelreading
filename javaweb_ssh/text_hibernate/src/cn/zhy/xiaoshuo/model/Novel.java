package cn.zhy.xiaoshuo.model;

import java.util.HashSet;
import java.util.Set;

public class Novel {
	private long Novel_id;
	private String name;
	private String auother;
	private String createtime;
	private Chapter chapter;
	private Set<Chapter> muchchapter =  new HashSet<Chapter>();
	public Novel(){}
	public void setNovel_id(long novel_id) {
		Novel_id = novel_id;
	}
	public long getNovel_id() {
		return Novel_id;
	}
	public void setAuother(String auother) {
		this.auother = auother;
	}
	public String getAuother() {
		return auother;
	}
	public void setMuchchapter(Set<Chapter> muchchapter) {
		this.muchchapter = muchchapter;
	}
	public Set<Chapter> getMuchchapter() {
		return muchchapter;
	}
	public void setCreatetime(String createtime) {
		this.createtime = createtime;
	}
	public String getCreatetime() {
		return createtime;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getName() {
		return name;
	}
	public void setChapter(Chapter chapter) {
		this.chapter = chapter;
	}
	public Chapter getChapter() {
		return chapter;
	}

}
