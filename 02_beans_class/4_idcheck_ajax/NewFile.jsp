<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "member.beans.MemberDao" %>
<%
      String user =request.getParameter("id");
      MemberDao dao = MemberDao.getInstance();
      boolean result= dao.isDuplicatedId(user);
  
      String data = "NO";
   if(result) {

      data = "YES";
  } 
   out.println(data);
   
   %>