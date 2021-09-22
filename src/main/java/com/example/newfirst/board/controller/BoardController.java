package com.example.newfirst.board.controller;

import com.example.newfirst.board.domain.BoardVO;
import com.example.newfirst.board.service.BoardService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

@Controller
public class BoardController {

    @Resource(name="com.example.newfirst.board.service.BoardService")
    BoardService mBoardService;


    @RequestMapping("/list") //게시판 리스트 화면 호출
    private String boardList(Model model) throws Exception{

        model.addAttribute("list", mBoardService.boardListService());

        return "list"; //생성할 jsp
    }

    @RequestMapping("/detail/{bno}")
    private String boardDetail(@PathVariable int bno, Model model) throws Exception{

        model.addAttribute("detail", mBoardService.boardDetailService(bno));

        return "detail";
    }


    @RequestMapping("/insert") //게시글 작성폼 호출
    private String boardInsertForm(){

        return "insert";
    }

    @RequestMapping("/insertProc")
    private String boardInsertProc(HttpServletRequest request) throws Exception{

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
        mBoardService.boardUpdateService(board);
        System.out.println("board update proc 222");

        return "redirect:/detail/"+request.getParameter("id");
    }

    @RequestMapping("/delete/{id}")
    private String boardDelete(@PathVariable int id) throws Exception{

        mBoardService.boardDeleteService(id);

        return "redirect:/list";
    }





}
