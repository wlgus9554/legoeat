package com.legoeat.main.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.legoeat.main.mapper.MainMapper;
import com.legoeat.main.vo.MainSearchVO;
import com.legoeat.util.page.PageObject;

import lombok.Setter;

@Service
@Qualifier("mainServiceImpl")
public class MainServiceImpl implements MainService{

	@Setter(onMethod_ = @Autowired)
	private MainMapper mapper;
	
	@Override
	public List<MainSearchVO> list(PageObject pageObject) {
		// TODO Auto-generated method stub
		pageObject.setTotalRow(mapper.getTotalRow(pageObject));
		return mapper.list(pageObject);
	}
	
}
