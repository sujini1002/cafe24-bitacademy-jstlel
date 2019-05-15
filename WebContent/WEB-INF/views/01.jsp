<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	pageContext.setAttribute("i", 10);
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${10 + 200 * 3.14}<br>
 ${i}<!-- 값이 아니라 이름이다. -->
 
 <h1>데이터 타입</h1>
 ${iVal }<br>
 ${lVal }<br>
 ${fVal }<br>
 ${bVal }<br>
 --${obj }--<br>
  <h1>연산</h1>
 ${iVal+20*lVal/2-10}<br>
 ${iVal eq lVal&&iVal>fVal}<br>
 ${empty obj }<br>
 ${not empty obj }<br>
 <h1>요청파라미터 가져오기</h1>
 <%=request.getParameter("a") + 10 %><br><!-- String으로 받아오므로 String로 더해서 나온다. -->
 ${param.a + 10}<!-- el은 자동으로 int형으로 나온다 -->
 
 <h1>객체 접근</h1>
 ${requestScope.vo.no }<br><!-- requestScope 생략가능 충돌시 써야함 -->
 ${vo.no }<br>
 ${vo.name }<br>
 
 ${sessionScope.vo.no }<br><!-- requestScope 생략가능 충돌시 써야함 -->
 ${sessionScope.vo.no }<br>
 ${sessionScope.vo.name }<br>
 
  <h1>Map객체 접근</h1>
  ${map.iVal }<br>
  ${map.lVal }<br>
  ${map.fVal }<br>
  ${map.bVal }<br>
 
 <!-- jsp내에서 찾는 것이 아니라 
 1. servletContext안의 i값을 찾는다 
 2. request.getSession()(HttpSession) 객체안에서 i 값을 찾는다.
 3. HttpServletReqest에서 i 값을 찾는다.
 4. PageContext()에서 찾는다. -->
</body>
</html>