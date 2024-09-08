<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.example.demo.vo.Member" %>
<%@ page import="java.util.*" %>
<c:set var="pageTitle" value="qna"></c:set>
<div class="chat-container">
        <form action="qna" method="post">
            <input type="text" name="userInput" placeholder="안녕을 치시면 시작됩니다." required />
            <input type="submit" value="Send" />
        </form>

        <div class="chat-messages">
            <% 
            Member member = (Member) request.getAttribute("member"); // Request 속성에서 가져오기
            if (member == null) {
                // 예제 데이터로 Member 객체를 생성하거나 데이터베이스에서 가져옵니다.
                member = new Member(1, "2024-01-01 12:00", "2024-01-01 12:00", "user1", "password", 1, "John Doe", "johndoe", "1234567890", "john@example.com", false, null);
                request.setAttribute("member", member); // Request 속성에 저장
            }
                String userInput = request.getParameter("userInput");
                String botResponse = "";
                
                if (userInput != null && !userInput.trim().isEmpty()) {
                    // Simple bot logic for demonstration
                    if (userInput.toLowerCase().contains("안녕")) {
                        botResponse = "안녕하세요. 무엇을 도와드릴까요 <br> 검색가능한 단어는 총 2가지입니다 <br> 맴버 or 글";
                    } else if (userInput.toLowerCase().contains("맴버")) {
                    	botResponse = "회원 ID는 " + member.getId() + " 입니다.<br>";
                    }
                    else {
                        botResponse = "죄송합니다. 다시 시도해 주세요";
                    }
            %>
            <div class="chat-message user-message">
                User: <%= userInput %>
            </div>
            <div class="chat-message bot-message">
                Bot: <%= botResponse %>
            </div>
            <% 
                }
            %>
        </div>
    </div>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .chat-container {
            width: 50%;
            margin: 0 auto;
            border: 1px solid #ddd;
            padding: 10px;
            border-radius: 5px;
        }
        .chat-message {
            margin: 10px 0;
        }
        .user-message {
            color: blue;
        }
        .bot-message {
            color: green;
        }
    </style>

<%@ include file="../common/foot.jspf"%>