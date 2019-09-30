package org.smartweb.day6;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.smartweb.day6.domain.BoardVO;
import org.smartweb.day6.domain.Criteria;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BoardMapperText2 {

	
	@Setter(onMethod_=@Autowired)
	private BoardMapper boardMapper;
	
	Criteria cri=new Criteria();
	
	@Test
	public void test() {
		cri.setKeyword("b");
		cri.setType("TC");
		List<BoardVO> list=boardMapper.getListwithPaging(cri);
		list.forEach(board-> log.info(board));
	}

}
