package com.legoeat.main.service;

import java.util.List;

import com.legoeat.main.vo.MainSearchVO;
import com.legoeat.util.page.PageObject;

public interface MainService {

	public List<MainSearchVO> list(PageObject pageObject);
	
}
