package net.hibzinet.pms.vo;

public class PmsVO {

	private int no;
	private String name;
	private String eNm;
	private String nickNm;
	private int age;
	private String sex;
	private String address1;
	private String address2;
	private String postno;
	private String email;
	private String job;
	private String sns1Addr;
	private String sns2Addr;
	private String sns3Addr;
	private String memo1;
	private String memo2;
	private String memo3;
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String geteNm() {
		return eNm;
	}
	public void seteNm(String eNm) {
		this.eNm = eNm;
	}
	public String getNickNm() {
		return nickNm;
	}
	public void setNickNm(String nickNm) {
		this.nickNm = nickNm;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getAddress1() {
		return address1;
	}
	public void setAddress1(String address1) {
		this.address1 = address1;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	public String getPostno() {
		return postno;
	}
	public void setPostno(String postno) {
		this.postno = postno;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getSns1Addr() {
		return sns1Addr;
	}
	public void setSns1Addr(String sns1Addr) {
		this.sns1Addr = sns1Addr;
	}
	public String getSns2Addr() {
		return sns2Addr;
	}
	public void setSns2Addr(String sns2Addr) {
		this.sns2Addr = sns2Addr;
	}
	public String getSns3Addr() {
		return sns3Addr;
	}
	public void setSns3Addr(String sns3Addr) {
		this.sns3Addr = sns3Addr;
	}
	public String getMemo1() {
		return memo1;
	}
	public void setMemo1(String memo1) {
		this.memo1 = memo1;
	}
	public String getMemo2() {
		return memo2;
	}
	public void setMemo2(String memo2) {
		this.memo2 = memo2;
	}
	public String getMemo3() {
		return memo3;
	}
	public void setMemo3(String memo3) {
		this.memo3 = memo3;
	}
	@Override
	public String toString() {
		return "PmsVO [no=" + no + ", name=" + name + ", eNm=" + eNm + ", nickNm=" + nickNm + ", age=" + age + ", sex="
				+ sex + ", address1=" + address1 + ", address2=" + address2 + ", postno=" + postno + ", email=" + email
				+ ", job=" + job + ", sns1Addr=" + sns1Addr + ", sns2Addr=" + sns2Addr + ", sns3Addr=" + sns3Addr
				+ ", memo1=" + memo1 + ", memo2=" + memo2 + ", memo3=" + memo3 + "]";
	}
}