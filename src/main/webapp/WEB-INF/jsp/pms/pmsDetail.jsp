<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PMS 상세정보 화면</title>
<link href="<c:url value='/'/>bootstrap5/css/bootstrap.css" rel="stylesheet" type="text/css" >
<script src="<c:url value='/'/>js/jquery.min.js"></script>
<script type="text/javascript">
$(function() {
	
	
	// 취소 처리.
	$("#cancelBtn").click(function() {
		document.location.href="<c:url value='/pms/selectListPms.do'/>";
	});
	// 삭제 처리.
	$("#deleteBtn").click(function(e) {
		e.preventDefault();
		document.location.href="<c:url value='/pms/deleteOnePms.do?no=${result.no}'/>";
	});		
	
	// 저장버튼 처리.
	$("#updateBtn").click(function() {
		document.location.href="<c:url value='/pms/updatePmsView.do?no=${result.no}'/>";
	});
	
});

</script>
</head>
<body>
 <div id="wrap">
    <!-- container 시작 -->
    <div id="container">
   			<div id="content">
			<form:form modelAttribute="pms" name="frm" method="post">
			    <input type="hidden" name="no"  value="<c:out value='${result.no}'/>"/>
				<table cellpadding="0" cellspacing="0">
					<tr>
						<td>이름</td><td><c:out value='${result.name}'/></td>
					</tr>
					<tr>
						<td>영문명</td><td><c:out value='${result.eNm}'/></td>
					</tr>
					<tr>
						<td>별명</td><td><c:out value='${result.nickNm}'/></td>
					</tr>
					<tr>
						<td>나이</td><td><c:out value='${result.age}'/></td>
					</tr>
					<tr>
						<td>성별</td><td><c:out value='${result.sex}'/></td>
					</tr>
					<tr>
						<td>주소1</td><td><c:out value='${result.address1}'/></td>
					</tr>
					<tr>
						<td>주소2</td><td><c:out value='${result.address2}'/></td>
					</tr>					
																																			<tr>
						<td>우편번호</td><td><c:out value='${result.postNo}'/></td>
					</tr>
					<tr>
						<td>직업</td><td><c:out value='${result.job}'/></td>
					</tr>
					<tr>
						<td>SNS1</td><td><c:out value='${result.sns1Addr}'/></td>
					</tr>
					<tr>
						<td>SNS2</td><td><c:out value='${result.sns2Addr}'/></td>
					</tr>
					<tr>
						<td>SNS3</td><td><c:out value='${result.sns3Addr}'/></td>
					</tr>
					<tr>
						<td>전화번호</td><td><c:out value='${result.telNo}'/></td>
					</tr>
					<tr>
						<td>휴대폰번호</td><td><c:out value='${result.cellNo}'/></td>
					</tr>
					<tr>
						<td>메모1</td><td><c:out value='${result.memo1}'/></td>
					</tr>
					<tr>
						<td>메모2</td><td><c:out value='${result.memo2}'/></td>
					</tr>
					<tr>
						<td>메모3</td><td><c:out value='${result.memo3}'/></td>
					</tr>																																										
				</table>    
			 </form:form>
			</div>
			<div id="buttons">
				<table>
					<tr>
						<td><input type="button" id="cancelBtn" name="cancelBtn" value="취소"/></td>
						<td><input type="button" id="deleteBtn" name="deleteBtn" value="삭제"/></td>
						<td><input type="button" id="updateBtn" name="updateBtn" value="수정"/></td>
					</tr>
				</table>
			</div>			  
    </div>	
 </div>
</body>
</html>