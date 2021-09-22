package com.example.newfirst.board.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.example.newfirst.board.domain.BoardVO;
import com.example.newfirst.board.mapper.BoardMapper;

@Service("com.example.newfirst.board.service.BoardService")
public class BoardService {

    @Resource(name="com.example.newfirst.board.mapper.BoardMapper")
    BoardMapper mBoardMapper;

    public List<BoardVO> boardListService() throws Exception{

        return mBoardMapper.boardList();
    }

    public BoardVO boardDetailService(int id) throws Exception{

        return mBoardMapper.boardDetail(id);
    }

    public int boardInsertService(BoardVO board) throws Exception{

        return mBoardMapper.boardInsert(board);
    }

    public int boardUpdateService(BoardVO board) throws Exception{

        return mBoardMapper.boardUpdate(board);
    }

    public int boardDeleteService(int id) throws Exception{

        return mBoardMapper.boardDelete(id);
    }
}
