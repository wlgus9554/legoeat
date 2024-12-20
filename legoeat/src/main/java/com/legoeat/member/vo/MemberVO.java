package com.legoeat.member.vo;

import java.util.Date;

import lombok.Data;

@Data
public class MemberVO {
	private String email; // 아이디
	private String pw; // 비밀번호
	private String name; // 이름
	private String nickName; // 이름
	private String gender; //성별
	private Date birth; // 생일
	private String tel; // 전화번호
	private Date regDate; // 회원 가입일
	private Date conDate; // 최근 접속일
	private String business_name; // 상호명 (사업자)
	private String business_number; // 사업자번호 (사업자)
	private String address_city; // 시/도 (사업자)
	private String address_district; // 시/군/구 (사업자)
	private String address_detail; // 상세 주소 (사업자)
	private String business_license_image; // 사업자 등록증 (사업자)
	private String status; // 상태
	private String photo; // 회원 이미지
	private Integer gradeNo; // 등급번호
	private String gradeName; //등급명
}
