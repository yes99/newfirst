package com.example.newfirst.board.controller;

import com.example.newfirst.board.domain.BoardVO;
import com.example.newfirst.board.service.BoardService;
import com.example.newfirst.board.service.Criteria;
import com.example.newfirst.board.service.Paging;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

@Controller   //여기는 컨트롤러 클래스 이다.

public class BoardController {

    @Resource(name="com.example.newfirst.board.service.BoardService")   //이름을 통해서 Bean 객체를 주입
    BoardService mBoardService;


    @RequestMapping("/list") //게시판 리스트 화면 호출
    private String boardList(Criteria cri, Model model) throws Exception{

        int boardListCnt =mBoardService.boardCount();

        // 페이징 객체
        Paging paging = new Paging();
        paging.setCri(cri);
        paging.setTotalCount(boardListCnt);


        model.addAttribute("list", mBoardService.boardListService(cri));
        model.addAttribute("paging", paging);

        return "list"; //생성할 jsp
    }

    @RequestMapping("/detail/{id}") // 어떤 url에 연결하면 밑의 메소드가 처리한다. 맵핑
    private String boardDetail(@PathVariable int id, Model model) throws Exception{

        model.addAttribute("detail", mBoardService.boardDetailService(id));

        return "detail";
    }


    @RequestMapping("/insert") //게시글 작성폼 호출
    private String boardInsertForm(){

        return "insert";
    }

    @RequestMapping("/insertProc")
    private String boardInsertProc(HttpServletRequest request) throws Exception{
        //HttpServletRequest 객체를 컨트로럴 메서드의 파라미터로 전달받아 세션 처리

        BoardVO board = new BoardVO();

        board.setDate(request.getParameter("date"));
        board.setTitle(request.getParameter("title"));
        board.setAssign(request.getParameter("assign"));
        board.setPerform(request.getParameter("perform"));
        board.setFail(request.getParameter("fail"));
        System.out.println("되긴 하는건가?12111111");

        mBoardService.boardInsertService(board);

        System.out.println("되긴 하는건가?");
        return "redirect:/list";
    }

    @RequestMapping("/update/{id}") //게시글 수정폼 호출
    private String boardUpdateForm(@PathVariable int id, Model model) throws Exception{
        System.out.println("boardupdateform");
        model.addAttribute("detail", mBoardService.boardDetailService(id));

        return "update";
    }



    @RequestMapping("/updateProc")
    private String boardUpdateProc(HttpServletRequest request) throws Exception{

        System.out.println("board update proc 111");
        BoardVO board = new BoardVO();

        board.setDate(request.getParameter("date"));
        board.setTitle(request.getParameter("title"));
        board.setAssign(request.getParameter("assign"));
        board.setPerform(request.getParameter("perform"));
        board.setFail(request.getParameter("fail"));
        board.setId(Integer.parseInt(request.getParameter("id")));  // 이거 없으니까 수정 안됨

        mBoardService.boardUpdateService(board);
        System.out.println("board update proc 222");

        return "redirect:/detail/"+request.getParameter("id");
    }

    // method parameter 앞에 사용하면서 해당 URL에서 {특정값}을 변수로 받아 올 수 있다.
    @RequestMapping("/delete/{id}")
    private String boardDelete(@PathVariable int id) throws Exception{

        mBoardService.boardDeleteService(id);

        return "redirect:/list";
    }


   /* public String boardList(Criteria cri, Model model) throws Exception{

        int boardListCnt = boardService.boardListCnt();
 */

}
