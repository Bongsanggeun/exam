package com.mycompany.webapp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.mycompany.webapp.dao.ReviewDao;
import com.mycompany.webapp.dto.Review;

@Service
public class ReviewService {
   @Autowired
   private ReviewDao qnaDao;

   public Review getQna(int bno) {
	   Review qna = qnaDao.selectByREVIEW_ID(bno);
      return qna;
   }

   public void updateREVIEW(Review review) {
	   ReviewDao.update(review);
   }
   
   public void deleteREVIEW(int bno) {
	   ReviewDao.deleteByREVIEW_ID(bno);
   }

   public int getTotalRows() {
      int rows = qnaDao.count();
      return rows;
   }

   
}