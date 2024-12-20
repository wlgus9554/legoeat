package com.legoeat.main.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.legoeat.main.vo.MainSearchVO;
import com.legoeat.util.page.PageObject;

@Repository
public interface MainMapper {

	public Long getTotalRow(PageObject pageObject);
	
	public List<MainSearchVO> list(PageObject pageObject);
	
}
