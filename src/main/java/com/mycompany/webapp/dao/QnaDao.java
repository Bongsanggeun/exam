package com.mycompany.webapp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.webapp.dto.Pager;
import com.mycompany.webapp.dto.Qna;


@Mapper
public interface QnaDao {
	public int insert(Qna qna);
	public Qna selectByQa_id(int qa_id);
	public int update(Qna board);
	public int deleteByQa_id(int qa_id);
	public int count();
}



