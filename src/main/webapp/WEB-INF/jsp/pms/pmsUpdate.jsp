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
	
	// 저장버튼 처리.
	$("#cancelBtn").click(function() {
		document.location.href="<c:url value='/pms/selectListPms.do'/>";
	});
	
	$("#saveBtn").click(function(e) {
		e.preventDefault();
		
        $("#frm").attr("action","/pms/updatePms.do");
        $("#frm").submit();
	});	
	
});
</script>
</head>
<body>
 <div id="wrap">
    <!-- container 시작 -->
    <div id="container" class="container">
   			<div id="content">
			<form:form modelAttribute="pms" id="frm" name="frm" method="post">
			    <input type="hidden" name="no"  value="<c:out value='${result.no}'/>"/>
				<table cellpadding="0" cellspacing="0">
					<tr>
						<td>이름</td><td><input type="text" id="name" name="name" value="<c:out value='${result.name}'/>"/></td>
					</tr>
					<tr>
						<td>영문명</td><td><input type="text" id="eNm" name="eNm" value="<c:out value='${result.eNm}'/>"/></td>
					</tr>
					<tr>
						<td>별명</td><td><input type="text" id="nickNm" name="nickNm" value="<c:out value='${result.nickNm}'/>"/></td>
					</tr>
					<tr>
						<td>나이</td><td><input type="text" id="age" name="age" value="<c:out value='${result.age}'/>"/></td>
					</tr>
					<tr>
						<td>성별</td><td><input type="text" id="sex" name="sex" value="<c:out value='${result.sex}'/>"/></td>
					</tr>
					<tr>
						<td>주소1</td><td><input type="text" id="address1" name="address1" value="<c:out value='${result.address1}'/>"/></td>
					</tr>
					<tr>
						<td>주소2</td><td><input type="text" id="address2" name="address2" value="<c:out value='${result.address2}'/>"/></td>
					</tr>					
                    <tr>
						<td>우편번호</td><td><input type="text" id="postNo" name="postNo" value="<c:out value='${result.postNo}'/>"/></td>
					</tr>
					<tr>
						<td>직업</td><td><input type="text" id="job" name="job" value="<c:out value='${result.job}'/>"/></td>
					</tr>
					<tr>
						<td>SNS1</td><td><input type="text" id="sns1Addr" name="sns1Addr" value="<c:out value='${result.sns1Addr}'/>"/></td>
					</tr>
					<tr>
						<td>SNS2</td><td><input type="text" id="sns2Addr" name="sns2Addr" value="<c:out value='${result.sns2Addr}'/>"/></td>
					</tr>
					<tr>
						<td>SNS3</td><td><input type="text" id="sns3Addr" name="sns3Addr" value="<c:out value='${result.sns3Addr}'/>"/></td>
					</tr>
					<tr>
						<td>전화번호</td><td><input type="text" id="telNo" name="telNo" value="<c:out value='${result.telNo}'/>"/></td>
					</tr>
					<tr>
						<td>휴대폰번호</td><td><input type="text" id="cellNo" name="cellNo" value="<c:out value='${result.cellNo}'/>"/></td>
					</tr>
					<tr>
						<td>메모1</td><td><input type="text" id="memo1" name="memo1" value="<c:out value='${result.memo1}'/>"/></td>
					</tr>
					<tr>
						<td>메모2</td><td><input type="text" id="memo2" name="memo2" value="<c:out value='${result.memo2}'/>"/></td>
					</tr>
					<tr>
						<td>메모3</td><td><input type="text" id="memo3" name="memo3" value="<c:out value='${result.memo3}'/>"/></td>
					</tr>																																										
				</table>    
			 </form:form>
			</div>
			<div id="buttons">
				<table>
					<tr>
						<td><input type="button" id="cancelBtn" name="cancelBtn" value="취소"/></td>
						<td><input type="button" id="saveBtn" name="saveBtn" value="저장"/></td>
					</tr>
				</table>
			</div>			    
    </div>	
 </div>
</body>
</html>