<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="API TEST"></c:set>


<script>
function getRData(entpId) {
    const url = `/usr/home/getRData?entpId=` + entpId; // 서버에서 프록시로 API 호출
    const xhr = new XMLHttpRequest();
    xhr.open("GET", url, true);
    xhr.onreadystatechange = function () {
        if (xhr.readyState === 4 && xhr.status === 200) {
            const xmlResponse = xhr.responseText;
            console.log("XML Data:", xmlResponse);
            
            // XML 파싱
            const parser = new DOMParser();
            const xmlDoc = parser.parseFromString(xmlResponse, "text/xml");
            
            // XML 문서의 내용을 콘솔에 출력
            console.log("XML Document:", xmlDoc.documentElement.innerHTML);
        }
    };
    xhr.send();
}

// 여기서 getRData 호출로 entpId 전달
getRData(115); // entpId를 115로 설정
</script>


<%@ include file="../common/head.jspf"%>