<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- taglib 지시자 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>

    <title>Document></title>
    <style type="text/css">
        *{
        margin: 0px;
        padding: 0px;
        } 
        
        .start{
        background-color: #e9ecef;
        }
        
        .info{
                margin: 20px auto 0;
                padding: 24px 120px 24px 40px;
                border-radius: 8px;
                border: 1px solid #e9ecef;
                flex-direction: row;
            }
        .col-2{
            
            text-align: left;
            font-size: 12px;
        }

        .list-group-item-action{
            color: #222;
            background-color: white;
            border-color: white;
        }

        .list-group-item-action:focus{
            color: #FF3357;
            background-color:  white;
            border-color:  white;
        }

        .list-group-item-action:hover{
         
            color: #FF3357;
            background-color: white;
            border-color: white;
        }

        .list-group-item.active{
            color:#FF3357;
            background-color: white;
            border-color:#fff;
        }

        .qa{
            flex:5;
        }
        
        .btn-secondary{
            flex:0.4;
            background-color: #FF3357;
            border-color: #FF3357;
        } 
        
        .div1{
            display: flex;
        }



        .answer {
        display: none;
        font-size: 13px;
        padding-left: 30px;
        padding-top: 20px;
        padding-bottom: 20px;
         }

		    .faq-content {
		        border-bottom: 1px solid #e0e0e0;
		    }
		    .question {
		        font-size: 13px;
		        padding: 10px;
		        cursor: pointer;
		        border: none;
		        outline: none;
		        background: none;
		        width: 100%;
		        text-align: left;
		
		        display: flex;
		        justify-content: space-between;
		    }
		    .question:hover {
		        color: #FF3357;
		    }
		    [id$="-toggle"] {
		        margin-right: 15px;
		    }
		    .btn-2{
		        float:right;
		    }
		    .btn-3{
		        border: 1px solid #dee2e6;
		        border-radius: 3px;
		        background-color: #e9ecef;
		    }
		    .wait{
		        border: 1px solid gray;
		        border-radius: 3px;
		        margin-left: 10px;
		    }
		    .orderDate{
		        margin-right: 10px;
		    }


</style>

<div class="header2"> 
    <div class="inner">
        <div  style="font-size: 0.85em; padding-top: 5px;">홈 > 고객센터</div> 
    </div>
 </div>
 <div class="inner">
    <div class="info" style="height: 120px;">
        <picture style="float: left;">
            <img src="<%=application.getContextPath() %>/resources/img/profile-empty.svg" style="width: 75px; border: 1px solid #cfcfd0; overflow: hidden; border-radius: 50%; background-color: #fff; ;" >
        </picture>
            <div style="float: left; padding-left: 20px; padding-top: 15px;">
                <strong>1조</strong> <i class="fas fa-cog"></i>  <div style="color: rgb(138, 138, 146); font-size: 0.9em;">abcd1234@naver.com</div>
            </div>
    </div>
    <br/>
        <div class="my"></div>

            <div class="row">
                <div class="col-2">
                    <div class="list-group" id="list-tab" role="tablist">
                        <a class="list-group-item list-group-my" id="list-home-list" style="text-decoration:none; border-color: white; color: black; font-weight: bold; font-size:1.3em;" >마이페이지</a><hr/>
                        <a class="list-group-item list-group-item-action" id="list-home-list" data-toggle="list" href="#list-home" role="tab" aria-controls="home" >회원정보</a>
                        <a class="list-group-item list-group-item-action" id="list-profile-list" data-toggle="list" href="#list-profile" role="tab" aria-controls="profile">주문내역</a>
                        <a class="list-group-item list-group-item-action" id="list-messages-list" data-toggle="list" href="#list-messages" role="tab" aria-controls="messages">장바구니</a>
                        <a class="list-group-item list-group-item-action active" id="list-settings-list" data-toggle="list" href="#list-settings" role="tab" aria-controls="settings">고객센터</a>
                    </div>
                </div>
                <div class="col-10">
                    <div class="tab-content" id="nav-tabContent">
                        <div class="tab-pane fade" id="list-home" role="tabpanel" aria-labelledby="list-home-list"><br><h5><strong>나의 정보</strong></h5>
                        
                            <br>
    
                            <div class="tab-master">
                                <div class="tab">
                                    <div class="tab3">이름</div>
                                    <div class="tab2"><strong>1조</strong></div>
                                </div>
                                <div class="tab">
                                    <div class="tab4">이메일</div>
                                    <div class="tab2"><strong>bbsj1058@naver.com</strong></div>
                                </div>                  
                                <div class="tab">
                                    <div class="tab1">휴대전화</div>
                                    <div class="tab2"><strong>010-9479-1058</strong><button style="margin-left: 10px;" type="button" onclick="location.href='phoneChange.html' "  class="btn btn-outline-secondary btn-sm">수정</button>
                                    </div>
                                </div>
                                <div class="tab">
                                    <div class="tab1">비밀번호</div>
                                    <div class="tab2"><strong> ***********</strong> <button style="margin-left: 10px;" onclick="location.href='pwChange.html' " type="button" class="btn btn-outline-secondary btn-sm">수정</button>
                                    </div>
                                </div>
                                <div class="tab">
                                    <div class="event"><button style="margin-left: 10px;" type="button" class="btn btn-outline-secondary btn-sm">로그아웃</button></div>
                                </div>
                            </div>
                        </div>
                       
                            <div class="tab-pane fade"  id="list-profile" role="tabpanel" aria-labelledby="list-profile-list">
                                <div>
                                    <h5 style="padding-top: 23px; padding-bottom: 17px; font-size: 1.4em;"><strong>주문 · 배송</strong>
                                    </h5>
                                </div>
                                <table class="table";>
                                        <thead class="thead-light">
                                            <tr>
                                                <th scope="col" style="width: 10%;">주문 번호</th>
                                                <th scope="col" style="width: 10%;">주문 일자</th>
                                                <th scope="col" style="width: 65%;">상품 정보</th>
                                                <th scope="col" style="width: 15%;">진행 상황</th>
                                            </tr>
                                        </thead>
        
                                        <tbody>
                                            <tr>
                                                <th scope="row" style="color:rgb(138, 138, 146);">1556290343861</th>
                                                <td style="color:rgb(138, 138, 146);"> 2019.04.26</td>
                                                <td> <img src="<%=application.getContextPath() %>/resources/img/photo31.jpg" width="20%" style="float: left; margin-right: 10px;">
                                                    <strong style="font-size: 1.2em;">이츠독 플러피 기모 후드 점퍼</strong> </br> <strong style="font-size: 1.2em;">26,000원</strong> 
                                                </td>
                                                <td style="border-right: white; text-align: center;">발송처리완료</td>
                                            </tr>
                                            <tr>
                                                <th scope="row" style="color:rgb(138, 138, 146); align-items: center;">1556290343861</th>
                                                <td style="color:rgb(138, 138, 146);">2017.06.08</td>
                                                <td> <img src="<%=application.getContextPath() %>/resources/img/photo32.jpg" width="20%" style="float: left; margin-right: 10px;">
                                                    <strong style="font-size: 1.2em;">플로트 컬러 블록 후드 블루블랙</strong></br> <strong style="font-size: 1.2em;">26,000원</strong>
                                                </td>
                                                <td style="border-right: white; text-align: center;">발송처리완료</td>
                                            </tr>
                                        </tbody>
                                </table>
                            
                            </div>
                        
                        <div class="tab-pane fade" id="list-messages" role="tabpanel" aria-labelledby="list-cart-list">
                                <div class="cart-main">
                                    <div class="cart-title">장바구니</div>
                                    <div class="cart-route">
                                        <div class="route route1">01 장바구니></div>
                                        <div class="route route2">02 주문결제></div>
                                        <div class="route route3">03 결제완료</div>
                                    </div>
                                </div> 
                                <div class="cart-content">
                                    <div class="container" style="margin-bottom: 20px;">
                                        <div class="row cart-content1-box">
                                            <div class="cart-info-box col-sm-5">
                                                <div class="cart-info">
                                                <img src="<%=application.getContextPath() %>/resources/img/rec1.jpg" alt="cart1" style="margin:5px 0"/>
                                                <a class="cart-goods-name" href="...">플로트 스탠다드 맨투맨 V라인 멜로</a>
                                                </div>
                                            </div>        
                                            <div class="col-sm-3" style="border-right: 1px solid #e9ecef;border-bottom: 1px solid #e9ecef; margin: 0;">
                                                <div class="count-button">
                                                    <div class="btn-group" role="group" aria-label="Basic example">
                                                        <button type="button" class="btn btn-light btn-sm">-</button>
                                                        <div class="count-text">1</div>
                                                        <button type="button" class="btn btn-light btn-sm">+</button>
                                                      </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-2" style="border-right: 1px solid #e9ecef;border-bottom: 1px solid #e9ecef;">
                                                <div class="cart-price">
                                                    <div style="font-weight: bold;">
                                                        10000000원
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-2" style="border-bottom: 1px solid #e9ecef;">
                                                <div class="delete-button" >
                                                    <button type="button" class="btn btn-light">삭제</button>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row cart-content1-box">
                                            <div class="cart-info-box col-sm-5">
                                                <div class="cart-info">
                                                <img src="<%=application.getContextPath() %>/resources/img/rec1.jpg" alt="cart1" style="margin:5px 0"/>
                                                <a class="cart-goods-name" href="...">플로트 스탠다드 맨투맨 V라인 멜로</a>
                                                </div>
                                            </div>        
                                            <div class="col-sm-3" style="border-right: 1px solid #e9ecef;border-bottom: 1px solid #e9ecef; margin: 0;">
                                                <div class="count-button">
                                                    <div class="btn-group" role="group" aria-label="Basic example">
                                                        <button type="button" class="btn btn-light btn-sm">-</button>
                                                        <div class="count-text">1</div>
                                                        <button type="button" class="btn btn-light btn-sm">+</button>
                                                      </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-2" style="border-right: 1px solid #e9ecef;border-bottom: 1px solid #e9ecef;">
                                                <div class="cart-price">
                                                    <div style="font-weight: bold;">
                                                        10000000원
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-2" style="border-bottom: 1px solid #e9ecef;">
                                                <div class="delete-button" >
                                                    <button type="button" class="btn btn-light">삭제</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="border:3px solid #FF3357"></div>
                                    <div class="row cart-content2-box">
                                        <div class="col-sm-3" style="border-right: 1px solid #e9ecef; margin: 0 0;">
                                          <div class="goods-price">
                                              <div style="text-align:center">총 상품금액</div>
                                              <div style="font-weight: bold; text-align: center;">2000000원</div>
                                          </div>
                                        </div>
                                        <div class="col-sm-2" style="border-right: 1px solid #e9ecef;">
                                            <div class="goods-price">
                                                <div style="text-align:center">배송비</div>
                                                <div style="font-weight: bold; text-align: center;">0원</div>
                                            </div>
                                        </div>
                                        <div class="col-sm-2" style="border-right: 1px solid #e9ecef;">
                                            <div class="goods-price">
                                                <div style="text-align:center">총 결제금액</div>
                                                <div style="font-weight: bold; text-align: center;">2000000원</div>
                                            </div>
                                        </div>
                                        <div class="col-sm-5">
                                            <div class="total-price">
                                                <div style="text-align:center; margin-right:1px">합계 : </div>
                                                <div style="font-weight: bold; text-align: center; margin-right:5px">2000000원</div>
                                                <button type="button" class="btn btn-secondary">구매하기</button>
                                            </div>
                                          </div>
                                      </div>
                                    
                                </div>         
                        </div>
                        <div class="tab-pane fade show active" id="list-settings" role="tabpanel" aria-labelledby="list-settings-list">
                            <div>
                                <div class="div1" style="margin-bottom: 20px;">
                                <h5 class="qa">고객센터(1:1문의)</h5>
                                <a href="cs3.html" class="btn btn-secondary btn-sm" role="button" aria-pressed="true">문의하기</a>
                                </div>
                                
                                <div class="div2" style="padding-bottom: 200px;">
                                    <div class="faq-content">
                                        <button class="question" id="que-1">
                                            <div>
                                                <span>상품 문의</span>
                                                <span class="wait">답변 대기</span>
                                            </div>
                                            <div>
                                                <span class="orderDate">2021-03-12</span>
                                                <span id="que-1-toggle">∨</span>
                                            </div>
                                        </button>
                                        <div class="answer" id="ans-1">상품에 관해서 문의합니다.
                                            <div class="btn-2">
                                                <button type="button" class="btn btn-outline-secondary btn-sm">수정</button>
                                                <button type="button" class="btn btn-outline-secondary btn-sm">삭제</button>
                                            </div>
                                        </div>
                                    </div>
    
                                    <div class="faq-content">
                                        <button class="question" id="que-2">
                                            <div>
                                                <span>배송 문의</span>
                                                <span class="wait">답변 대기</span>
                                            </div>
                                            <div>
                                                <span class="orderDate">2021-03-12</span>
                                                <span id="que-1-toggle">∨</span>
                                            </div>
                                        </button>
                                        <div class="answer" id="ans-2">배송에 관해서 문의합니다.
                                            <div class="btn-2">
                                                <button type="button" class="btn btn-outline-secondary btn-sm">수정</button>
                                                <button type="button" class="btn btn-outline-secondary btn-sm">삭제</button>
                                            </div>
                                        </div>
                                    </div>
    
    
                                    <div class="faq-content">
                                        <button class="question" id="que-3">
                                        <div>
                                            <span>주문/결제 문의</span>
                                            <span class="wait">답변 대기</span>
                                        </div>
                                        <div>
                                            <span class="orderDate">2021-03-12</span>
                                            <span id="que-3-toggle">∨</span>
                                        </div>
                                        </button>
                                        <div class="answer" id="ans-3">주문/결제 방법에 대해서 문의합니다.
                                            <div class="btn-2">
                                                <button type="button" class="btn btn-outline-secondary btn-sm">수정</button>
                                                <button type="button" class="btn btn-outline-secondary btn-sm">삭제</button>
                                            </div>
                                        </div>
                                    </div>
    
                                            <script>
                                                const items = document.querySelectorAll('.question');
                                                    function openCloseAnswer() {
                                                        const answerId = this.id.replace('que', 'ans');
    
                                                        if(document.getElementById(answerId).style.display === 'block') {
                                                        document.getElementById(answerId).style.display = 'none';
                                                        document.getElementById(this.id + '-toggle').textContent = '∨';
                                                        } else {
                                                        document.getElementById(answerId).style.display = 'block';
                                                        document.getElementById(this.id + '-toggle').textContent = '∧';
                                                        }
                                                    }
                                                items.forEach(item => item.addEventListener('click', openCloseAnswer));
                                            </script>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
      </div>
    
 <%@ include file="/WEB-INF/views/common/footer.jsp"%>     