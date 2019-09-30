package org.smartweb.day6.service;

import java.util.List;

import org.smartweb.day6.BoardMapper;
import org.smartweb.day6.domain.BoardVO;
import org.smartweb.day6.domain.Criteria;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
@Primary
public class BoardServiceImpl implements BoardService{

	@Setter(onMethod_=@Autowired) //mapper������ set�޼��� ������� �Ͱ� ���� public void setMapper(BoardMapper mapper){this.mapper=mapper;} �� �ڵ� ���� 
	private BoardMapper mapper;

	@Override
	public void register(BoardVO board) {
		// TODO Auto-generated method stub
		mapper.insert(board);
	}

	@Override
	public BoardVO get(Long bno) {
		// TODO Auto-generated method stub
		return mapper.read(bno);
	}

	@Override
	public boolean modify(BoardVO board) {
		// TODO Auto-generated method stub
		return mapper.update(board)==1;
	}

	@Override
	public boolean remove(Long bno) {
		// TODO Auto-generated method stub
		return mapper.delete(bno)==1;
	}

	@Override
	public List<BoardVO> getList(Criteria cri) {
		// TODO Auto-generated method stub
		log.info("getList with Critria : " + cri);
		return mapper.getListwithPaging(cri);
	}

	@Override
	public int getTotal(Criteria cri) {
		// TODO Auto-generated method stub
		return mapper.getTotalCount(cri);
	}
	
	
}
