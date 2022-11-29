<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PMS 리스트 화면</title>
</head>
<body>
 <div id="wrap">
	<!-- container 시작 -->
	<div id="main_container">
                <div class="default_tablestyle">
                    <table summary="사용자 정보 목록입니다" cellpadding="0" cellspacing="0">
	                    <caption>사용자목록 리스트</caption>
	                    <colgroup>
	                    <col width="10%">
	                    <col width="44%">  
	                    <col width="10%">
	                    <col width="10%">
	                    <col width="15%">
	                    <col width="8%">
	                    </colgroup>
	                    <thead>
	                    <tr>
	                        <th scope="col" class="f_field" nowrap="nowrap">번호</th>
	                        <th scope="col" nowrap="nowrap">성명</th>
	                        <th scope="col" nowrap="nowrap">영문명</th>
	                        <th scope="col" nowrap="nowrap">나이</th>
	                        <th scope="col" nowrap="nowrap">휴대폰번호</th>
	                        <th scope="col" nowrap="nowrap">이메일</th>
	                    </tr>
	                    </thead>
	                    <tbody>
		                    <c:forEach var="result" items="${resultList}" varStatus="status">
		                    <!-- loop 시작 -->                                
							  <tr>
							    <td nowrap="nowrap"><c:out value="${result.no}"/></td>		    
							    <td nowrap="nowrap">
									<a href="<c:url value='/pms/psmDetail.do'/>?no=<c:out value='${result.no}'/>">
										<c:out value="${result.name}"/>
									</a>  
							    </td>
							    <td nowrap="nowrap"><c:out value="${result.eNm}"/></td>
							    <td nowrap="nowrap"><c:out value="${result.age}"/></td>
							    <td nowrap="nowrap"><c:out value="${result.cellNo}"/></td>
							    <td nowrap="nowrap"><c:out value="${result.email}"/></td>
							    <td nowrap="nowrap">
							    	<c:if test="${result.useAt == 'N'}"><spring:message code="button.notUsed" /></c:if>
							    	<c:if test="${result.useAt == 'Y'}"><spring:message code="button.use" /></c:if>
							    </td>  
							  </tr>
			                </c:forEach>	  
							<c:if test="${fn:length(resultList) == 0}">
							  <tr>
							    <td nowrap colspan="6"><spring:message code="common.nodata.msg" /></td>  
							  </tr>		 
							</c:if>	                    
	                    </tbody>
                 	</table> 		
				</div>
	</div> 	
 </div>
</body>
</html>