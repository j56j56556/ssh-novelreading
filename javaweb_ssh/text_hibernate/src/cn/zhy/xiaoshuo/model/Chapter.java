package cn.zhy.xiaoshuo.model;

public class Chapter {
	private long chapter_id;
	private String chapternum;
	private String name;
	private String content;
	private Novel novel;
	public Chapter(){}
	public void setChapter_id(long chapter_id) {
		this.chapter_id = chapter_id;
	}
	public long getChapter_id() {
		return chapter_id;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getName() {
		return name;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getContent() {
		return content;
	}
	public void setNovel(Novel novel) {
		this.novel = novel;
	}
	public Novel getNovel() {
		return novel;
	}
	public void setChapternum(String chapternum) {
		this.chapternum = chapternum;
	}
	public String getChapternum() {
		return chapternum;
	}

}
