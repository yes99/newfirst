package com.example.newfirst;

import com.example.newfirst.board.mapper.BoardMapper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
public class JspTest {

    @Resource(name="com.example.newfirst.board.mapper.BoardMapper")
    BoardMapper mBoardMapper;

    @RequestMapping("/test")
    private String jspTest() throws Exception {

        System.out.println("testsetsetsetsetse");
        System.out.println(mBoardMapper.boardCount()); // <<<<TEST

        return "test"; //생성한 jsp이름 (test.jsp)
    }
}
