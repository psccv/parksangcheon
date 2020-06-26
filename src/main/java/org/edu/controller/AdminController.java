package org.edu.controller;

import java.util.List;
import java.util.Locale;

import javax.inject.Inject;

import org.edu.service.IF_BoardService;
import org.edu.service.IF_MemberService;
import org.edu.vo.BoardVO;
import org.edu.vo.MemberVO;
import org.springframework.cglib.reflect.MethodDelegate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminController {
	
	@Inject
	private IF_MemberService memberService;
	@Inject
	private IF_BoardService boardService;
	
	/**
	 * 관리자 홈
	 * @param locale
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "admin/home";
	}
	/**
	 * 회원목록 입니다.
	 * @param locale
	 * @param model
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping(value = "/admin/member/list", method = RequestMethod.GET)
	public String memberList(Locale locale, Model model) throws Exception {
		List<MemberVO>list = memberService.selectMember();
		//model매개변수에 memberService에서 Select한 list값을 memberList란
		//이름으로 사용할 수 있도록 jsp화면으로 보낸다.
		//model { list -> memberList -> jsp }
		model.addAttribute("memberList", list);
		return "admin/member/member_list";
	}
	/**
	 * 회원 상세보기 입니다.
	 * @param locale
	 * @param model
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping(value = "/admin/member/view", method = RequestMethod.GET)
	public String memberView(Locale locale, Model model) throws Exception {
		
		return "admin/member/member_view";
	}
	/**
	 * 회원등록 입니다.
	 * @param locale
	 * @param model
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping(value = "/admin/member/write", method = RequestMethod.GET)
	public String memberWrite(Locale locale, Model model) throws Exception {
		
		return "admin/member/member_write";
	}
	/**
	 * 게시물 목록 입니다.
	 * @param locale
	 * @param model
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping(value = "/admin/board/list", method = RequestMethod.GET)
	public String boardList(Locale locale, Model model) throws Exception {
		List<BoardVO> list = boardService.selectBoard();
		//model매개변수에 boardService에서 Select한 list값을 boardList란
		//이름으로 사용할 수 있도록 jsp화면으로 보낸다.
		//model { list -> boardList -> jsp }
		model.addAttribute("boardList", list);
		return "admin/board/board_list";
	}
	/**
	 * 게시물 상세보기 입니다.
	 * @param locale
	 * @param model
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping(value = "/admin/board/view", method = RequestMethod.GET)
	public String boardView(Locale locale, Model model) throws Exception {
		
		return "admin/board/board_view";
	}
	/**
	 * 게시물 작성 입니다.
	 * @param locale
	 * @param model
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping(value = "/admin/board/write", method = RequestMethod.GET)
	public String boardWrite(Locale locale, Model model) throws Exception {
		
		return "admin/board/board_write";
	}
}
