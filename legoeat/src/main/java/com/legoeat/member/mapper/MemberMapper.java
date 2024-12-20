package com.legoeat.member.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.legoeat.member.vo.LoginVO;

@Mapper
@Repository
public interface MemberMapper {
	
	// 로그인
	public LoginVO login(LoginVO vo);

}
