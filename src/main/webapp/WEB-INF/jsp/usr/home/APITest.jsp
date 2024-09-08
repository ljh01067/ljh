<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="APITEST"></c:set>

<script>
const API_KEY = 'llvpYURxInBanHczUcjI2GEOqjse7%2BXuXJfxblF4qKvO8E%2Fw56ir7k1Zg2e20G3ruc481lscs4BBENSPtEJBug%3D%3D';

async function getCData() {
    const url = 'https://openapi.price.go.kr/openApiImpl/ProductPriceInfoService/getProductInfoSvc.do?serviceKey=' + API_KEY;
    
    try {
        const response = await fetch(url);
        const textData = await response.text(); // XML 데이터를 텍스트로 가져옴
        
        // XML 파싱
        const parser = new DOMParser();
        const xmlDoc = parser.parseFromString(textData, "application/xml");
        
        console.log("XML Data", xmlDoc);
        
        // 필요한 데이터 추출 예시
        const items = xmlDoc.getElementsByTagName("item");
        for(let i = 0; i < items.length; i++) {
            const itemName = items[i].getElementsByTagName("itemName")[0].textContent;
            console.log("Item Name:", itemName);
        }
        
    } catch (error) {
        console.error("Error fetching data:", error);
    }
}

getCData();
</script>


<%@ include file="../common/head.jspf"%>

<%@ include file="../common/foot.jspf"%>