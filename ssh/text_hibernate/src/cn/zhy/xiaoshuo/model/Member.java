package cn.zhy.xiaoshuo.model;

public class Member {
		private String name;
		private String sex;
		private String password;
		private String mail;
		private String money;
		private int member_id;
		private int vip;
		public void setName(String name) {
			this.name = name;
		}
		public String getName() {
			return name;
		}
		public void setSex(String sex) {
			this.sex = sex;
		}
		public String getSex() {
			return sex;
		}
		public void setMail(String mail) {
			this.mail = mail;
		}
		public String getMail() {
			return mail;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		public String getPassword() {
			return password;
		}
		public void setMoney(String money) {
			this.money = money;
		}
		public String getMoney() {
			return money;
		}
		public void setMember_id(int member_id) {
			this.member_id = member_id;
		}
		public int getMember_id() {
			return member_id;
		}
		public void setVip(int vip) {
			this.vip = vip;
		}
		public int getVip() {
			return vip;
		}
}
