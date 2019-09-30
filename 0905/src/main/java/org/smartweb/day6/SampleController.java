package org.smartweb.day6;


import org.smartweb.day6.domain.Ticket;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import lombok.extern.log4j.Log4j;



//@Controller
@RestController  //웹에서 미디어형식으로 파일을 지원
@RequestMapping("/sample/*")
@Log4j
public class SampleController {

	@RequestMapping(value="/basic", method={RequestMethod.GET, RequestMethod.POST})
	public void basic() {
		log.info("basic------------");
	}
	
	/*
	@GetMapping("/ex01")  //springFramework4.3.0버전부터 적용되는 @
	public String ex01(SampleDTO dto) {
		log.info(""+dto);
		return "ex01";
	}
	
	@GetMapping("/ex02")
	public String ex02(SampleDTO dto, @ModelAttribute("page")int page, Model model) {
		String title="TEST";
		Date dateDue = new Date();
		log.info("dto:" + dto);
		log.info("page:" + page);
		model.addAttribute("time", new TodoDTO(title, dateDue));
		return "sample/ex02";
	} 
	
	@GetMapping("/ex02")
	public String ex03(@RequestParam("name")String name, @RequestParam("age")int age) {
		log.info("name:"+name);
		log.info("age:"+age);
		return "sample/ex02";
	}
	
	@GetMapping(value="/getText", produces="text/plain; charset=UTF-8")
	public String getText() {
		
		log.info("MIME TYPE : "+MediaType.TEXT_PLAIN_VALUE);
		return "hello world";
	}
	
	@GetMapping(value="/getSample", produces= {MediaType.APPLICATION_JSON_UTF8_VALUE, MediaType.APPLICATION_XML_VALUE})
							//처리방식 헤더정보
	public SampleVO getSample() {
		return new SampleVO(111, "홍", "길동");
	}
	
	
	
	@GetMapping(value="/getList")
	public List<SampleVO> getList(){
		
		return IntStream.range(1, 10).mapToObj(i->new SampleVO(i, i+"first", i+"Last")).collect(Collectors.toList());
		//배열 리스트 
	}
	
	@GetMapping(value="/getMap")
	public Map<String, SampleVO> getMap(){
		Map<String, SampleVO> map = new HashMap();
		map.put("First", new SampleVO(111, "홍", "길동"));
		return map;
	}
	
	//url상 입력 params ?height=11&weight=22
	@GetMapping(value="/check", params= {"height", "weight"})
	public ResponseEntity<SampleVO> check(Double height, Double weight){ 
		SampleVO vo=new SampleVO(0, ""+height, ""+weight);
		
		ResponseEntity<SampleVO> result=null;
		
		if(height > 150) {
			result=ResponseEntity.status(HttpStatus.BAD_GATEWAY).body(vo);
		}else {
			result=ResponseEntity.status(HttpStatus.OK).body(vo);
		}
		return result;
	}
	
	
	@GetMapping("/board/{bno}/{num}")
	public String[] getpath(@PathVariable("bno") String bno, @PathVariable("num")Integer num) {
		return new String[] {"bno : "+bno, "num : "+num};
	}*/
	
	@PostMapping("/ticket")
	public Ticket convert(@RequestBody Ticket ticket){
		return ticket;
	}
}










