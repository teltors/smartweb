package org.smartweb.day6;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.smartweb.day6.domain.BoardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BoardMapperTest {
	
	@Setter(onMethod_=@Autowired)
	private BoardMapper boardMapper;
	
	@Test
	public void test() {
		log.info("getList");
		log.info(boardMapper.getList());
	/*
		BoardVO board=new BoardVO();  /삽입
		board.setTitle("first test");
		board.setContent("first test");
		board.setWriter("hongkildong");
		
		boardMapper.insert(board);  //삽입
		*/
		//log.info(board);
		
		//BoardVO board=boardMapper.read(6L);  //선택
		//boardMapper.delete(5L);   //삭제
		
		BoardVO board=new BoardVO();   //갱신
		board.setBno(6L);
		board.setTitle("수정된 내용");
		board.setContent("수정된 내용");
		board.setWriter("수정된 내용");
		
		int count=boardMapper.update(board);
		
		log.info("update:"+count);
	}

}
