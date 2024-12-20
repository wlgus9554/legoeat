package com.legoeat.member.service;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.legoeat.member.mapper.MemberMapper;
import com.legoeat.member.vo.LoginVO;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
@Qualifier("memberServiceImpl")
public class MemberServiceImpl implements MemberService{

	@Inject
	private MemberMapper mapper;

	// 로그인
	@Override
	public LoginVO login(LoginVO vo) {
		// TODO Auto-generated method stub
		return mapper.login(vo);
	}
}
