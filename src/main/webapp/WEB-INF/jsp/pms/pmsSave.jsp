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
</head>
<body>
 <div id="wrap">
    <!-- container 시작 -->
    <div id="container">
   			<div id="content">
			<form:form modelAttribute="boardMaster" name="boardMaster" method="post" action="cop/bbs/SelectBBSMasterInfs.do">
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
						<td>SNS1</td><td><input type="text" id="sns1" name="sns1" value="<c:out value='${result.sns1}'/>"/></td>
					</tr>
					<tr>
						<td>SNS2</td><td><input type="text" id="sns2" name="sns2" value="<c:out value='${result.sns2}'/>"/></td>
					</tr>
					<tr>
						<td>SNS3</td><td><input type="text" id="sns3" name="sns3" value="<c:out value='${result.sns3}'/>"/></td>
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
    </div>	
 </div>
</body>
</html>