package org.smartweb.day6;

import static org.junit.Assert.fail;

import java.util.stream.IntStream;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.smartweb.day6.domain.ReplyVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ReplyMapperTest {

	
	private Long[] bnoArr = {8L, 9L, 11L, 12L, 13L};
	
	@Setter(onMethod_=@Autowired)
	private ReplyMapper mapper;
	
	@Test
	public void testCreate() {
		IntStream.rangeClosed(1, 10).forEach(i -> {
			ReplyVO vo= new ReplyVO();
			
			vo.setBno(bnoArr[i%5]);
			vo.setReplytext("��� �׽�Ʈ : " +i);
			vo.setReplyer("replyer : "+i);
			
			mapper.insert(vo);
		});
	}
	
	@Test
	public void test() {
		log.info(mapper);
	}

}
