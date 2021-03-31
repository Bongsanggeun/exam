package com.mycompany.webapp.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.QnaDao;
import com.mycompany.webapp.dto.Pager;
import com.mycompany.webapp.dto.Qna;

@Service
public class QnaService {
   @Autowired
   private QnaDao qnaDao;
   private static final Logger logger = LoggerFactory.getLogger(QnaService.class);

   public Qna getQna(int bno) {
      Qna qna = qnaDao.selectByQa_id(bno);
      return qna;
   }

   public void updateQna(Qna qna) {
	   qnaDao.update(qna);
   }
   
   public void deleteqna(int bno) {
	   qnaDao.deleteByQa_id(bno);
   }
   public void insert(Qna qna) {
	   logger.info(qna.getQa_content());
	   qnaDao.insert(qna);
   }
}