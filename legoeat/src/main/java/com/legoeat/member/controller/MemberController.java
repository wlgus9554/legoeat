package com.legoeat.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.legoeat.member.service.MemberService;
import com.legoeat.member.vo.LoginVO;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/member")
@Log4j
public class MemberController {

	@Autowired
	@Qualifier("memberServiceImpl")
	private MemberService service;
	
	// 로그인폼
	@GetMapping("/loginForm.do")
	public String loginForm() {
		log.info("--------------- [ loginForm.do ] ---------------");
		return "member/loginForm";
	}
	
	// 로그인
	@PostMapping("/login.do")
	public String login(LoginVO vo, HttpSession session, RedirectAttributes rttr) {
		log.info("--------------- [ login.do ] ---------------");
		LoginVO loginVO = service.login(vo);
		log.info("LoginVO: " + vo);
		log.info("Email: " + vo.getEmail());
		log.info("Password: " + vo.getPw());
		
		log.info(vo.toString());
		
		if(loginVO == null) {
			rttr.addFlashAttribute("msg",
				"로그인 정보가 맞지 않습니다. 정보를 확인하고 다시 시도해 주세요.");
			return "redirect:/member/loginForm.do";
		}
		
		session.setAttribute("login", loginVO);
		rttr.addFlashAttribute("msg",
				loginVO.getName() + "님은 " + loginVO.getGradeName() + "(으)로 로그인 되었습니다.");
		
		return "redirect:/main/main.do";
	}
	
	// 로그아웃
	@GetMapping("/logout.do")
	public String longout(HttpSession session,
			RedirectAttributes rttr) {
		log.info("logout.do ..................................");
		
		session.removeAttribute("login");
		
		rttr.addFlashAttribute("msg",
				"로그아웃 되었습니다. 불편한 사항을 질문 답변 게시판을 이용해 주세요.");
		
		return "redirect:/main/main.do";
	}
}
