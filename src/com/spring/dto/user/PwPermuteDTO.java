package com.spring.dto.user;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class PwPermuteDTO {

	private String id;
	private String email;
	private String tel;

	@Size(min = 4, max = 20)
	@Pattern(regexp = "([a-zA-Z0-9].*[!,@,#,$,%,^,&,*,?,_,~])|([!,@,#,$,%,^,&,*,?,_,~].*[a-zA-Z0-9]){8,12}")
	@NotBlank
	private String pw1;

	@Size(min = 4, max = 20)
	@NotBlank
	private String pw2;

	private boolean pwSearch;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getPw1() {
		return pw1;
	}

	public void setPw1(String pw1) {
		this.pw1 = pw1;
	}

	public String getPw2() {
		return pw2;
	}

	public void setPw2(String pw2) {
		this.pw2 = pw2;
	}

	public boolean isPwSearch() {
		return pwSearch;
	}

	public void setPwSearch(boolean pwSearch) {
		this.pwSearch = pwSearch;
	}
}
