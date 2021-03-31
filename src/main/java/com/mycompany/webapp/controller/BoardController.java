package com.mycompany.webapp.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mycompany.webapp.dto.Board;
import com.mycompany.webapp.dto.Pager;
import com.mycompany.webapp.dto.Qna;
import com.mycompany.webapp.service.QnaService;

@Controller
@RequestMapping("/boards")
public class BoardController {
	@Autowired
	private QnaService QnaService;
	   private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	//1:1문의 게시판으로 이동
	@GetMapping("/askList")
	public String askList() {
		@RequestParam(defaultValue = "1") int pageNo, Model model) {
			  int totalRows = qnaService.getTotalRows();
		      Pager pager = new Pager(10, 5, totalRows, pageNo);
			  List<Board> list = boardsService.getBoardList(pager);
		      model.addAttribute("list", list);
		      model.addAttribute("pager", pager);
		return "/boards/askList";
	}
	//'문의하기'버튼 클릭시 작성란으로 이동
	@GetMapping("/askWrite")
	public String askWrite() {
		return "/boards/askWrite";
	}
	//'1:1 문의하기 등록'버튼 클릭 
	@PostMapping("/insertAskWrite")
	public String insertAskWrite(Qna qna ,Model model) {
		QnaService.insert(qna);
		return "redirect:askList";
	}
	// 1:1 문의 게시판에서 '수정'버튼 클릭
	@GetMapping("/editaskWrite")
	public String editaskWrite() {
		return "/boards/askWrite";
	}
}
