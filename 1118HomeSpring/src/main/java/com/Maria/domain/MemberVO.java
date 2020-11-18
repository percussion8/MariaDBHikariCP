package com.Maria.domain;

import java.util.Date;

import lombok.Data;

@Data
public class MemberVO {
	private Long mno;
	private String mname;
	private String pwd;
	private String email;
	private Date cre_date;
	private Date mod_date;

}
