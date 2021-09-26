package com.example.newfirst.board.mapper;

import com.example.newfirst.board.domain.BoardVO;
import com.example.newfirst.board.service.Criteria;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository("com.example.newfirst.board.mapper.BoardMapper")     //여기는 DAO를 정의 할 것 이다.
public interface BoardMapper {
    public int boardCount() throws Exception;

    public List<BoardVO> boardList(Criteria cri) throws Exception;

    public BoardVO boardDetail(int id) throws Exception;

    public int boardInsert(BoardVO board) throws Exception;

    public int boardUpdate(BoardVO board) throws Exception;

    public int boardDelete(int id) throws Exception;

}
