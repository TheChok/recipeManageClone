package com.make.manage.dto;

// MemberDTO //
public class MemberDTO {
	//DTO
	private Long	id;
	private String 	memberEmail;
	private String 	memberPassword;
	private String 	memberName;
	private Integer memberAge;
	private String 	memberMobile;
	
	
	// getter & setter
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getMemberEmail() {
		return memberEmail;
	}
	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}
	public String getmemberPassword() {
		return memberPassword;
	}
	public void setmemberPassword(String memberPassword) {
		this.memberPassword = memberPassword;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public Integer getMemberAge() {
		return memberAge;
	}
	public void setMemberAge(Integer memberAge) {
		this.memberAge = memberAge;
	}
	public String getMemberMobile() {
		return memberMobile;
	}
	public void setMemberMobile(String memberMobile) {
		this.memberMobile = memberMobile;
	}
	
	// toString
	@Override
	public String toString() {
		return "MemberDTO ["
				+  "id=" + id + ", memberEmail=" + memberEmail + ", memberPassword=" + memberPassword
				+  ", memberName=" + memberName + ", memberAge=" + memberAge + ", memberMobile=" + memberMobile
			+ "]";
	}
	
	
} // end - MemberDTO
