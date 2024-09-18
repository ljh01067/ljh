<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="API TEST"></c:set>

<script>
function getPData(entpId, goodId) {
    // 값 확인
    console.log("entpId:", entpId); // entpId 값 확인
    console.log("goodId:", goodId); // goodId 값 확인
    
    // URL 생성
    const goodInspectDay = '20220805'; // 고정값
    const url = `/usr/home/getPData?entpId=`+entpId+`&goodId=`+goodId+`&goodInspectDay=`+goodInspectDay;
    
    // URL 확인
    console.log("Request URL:", url);

    // XMLHttpRequest 설정
    const xhr = new XMLHttpRequest();
    xhr.open("GET", url, true);

    xhr.onreadystatechange = function () {
        if (xhr.readyState === 4 && xhr.status === 200) {
            const xmlResponse = xhr.responseText;
            console.log("XML Data:", xmlResponse);
            
            // XML 파싱
            const parser = new DOMParser();
            const xmlDoc = parser.parseFromString(xmlResponse, "text/xml");
            
            // XML 문서 구조 확인
            console.log("XML Document:", xmlDoc.documentElement.innerHTML);

            // XML 데이터에서 'iros.openapi.service.vo.goodPriceVO' 태그 찾기
            const items = xmlDoc.getElementsByTagName('iros.openapi.service.vo.goodPriceVO');
            console.log("Items:", items);

            // XML 데이터에서 필드를 추출하여 처리
            if (items.length > 0) {
                Array.from(items).forEach(item => {
                    const entpId = item.getElementsByTagName('entpId')[0]?.textContent.trim();
                    const itemName = item.getElementsByTagName('itemName')[0]?.textContent.trim();
                    const price = item.getElementsByTagName('price')[0]?.textContent.trim();

                    console.log("EntpId:", entpId);
                    console.log("Item Name:", itemName);
                    console.log("Price:", price);

                    // 필요한 정보를 사용하여 추가 처리
                });
            }
        }
    };
    xhr.send();
}

// 함수를 호출하는 부분
getPData('63', '24');
</script>

<%@ include file="../common/head.jspf"%>

<%@ include file="../common/foot.jspf"%>