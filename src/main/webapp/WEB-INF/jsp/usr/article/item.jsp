<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="ITEM"></c:set>
<%@ include file="../common/head.jspf"%>
<div class="ta-c">
<div class="inline-block pd-0 mg-0 ta-c">
<div class="inline-block w-50px pd-0 mg-0">업소</div>
<div class="inline-block pd-0 mg-l--5 ta-c">
    <label>
      <input type="checkbox">
      <span>대형마트</span>
    </label>
    <label>
      <input type="checkbox">
      <span>백화점</span>
    </label>
    <label>
      <input type="checkbox">
      <span>슈퍼마켓</span>
    </label>
    <label>
      <input type="checkbox">
      <span>전통시장</span>
    </label>
    <label>
      <input type="checkbox">
      <span>편의점</span>
    </label>
    </div>
    </div>
    <br>
    <div class="inline-block w-50px pd-0 mg-0">지역</div>
<div class="inline-block pd-0 mg-l--5 ta-c">
     <select name="" id="">
      <option value="1">전체</option>
      <option value="2">서울특별시</option>
      <option value="3">부산광역시</option>
      <option value="4">대구광역시</option>
      <option value="5">대전광역시</option>
      <option value="6">광주광역시</option>
      <option value="7">울산광역시</option>
      <option value="8">인천광역시</option>
      <option value="9">강원특별자치도</option>
      <option value="10">경기도</option>
      <option value="11">경상남도</option>
      <option value="12">경상북도</option>
      <option value="13">전라남도</option>
      <option value="14">전북특별자치도</option>
      <option value="15">충청남도</option>
      <option value="16">충청북도</option>
      <option value="17">제주특별자치도</option>
      <option value="18">세종특별자치시</option>
    </select>
    </div>
    <div class="inline-block w-50px pd-0 mg-0">판매점</div>
<div class="inline-block pd-0 mg-l--5 ta-c">
     <select name="" id="">
      <option value="1">전체</option>
      <option value="2">대형마트</option>
      <option value="3">백화점</option>
      <option value="4">슈퍼마켓</option>
      <option value="5">전통시장</option>
      <option value="6">편의점</option>
    </select>
    </div>
    <br>
    <div class="inline-block w-50px pd-0 mg-0">품목</div>
<div class="inline-block pd-0 mg-l--5 ta-c">
     <select name="" id="">
     <option value="" selected disabled>품목을 선택하세요</option>
      <option value="1">곡물가공품</option>
      <option value="2">정육·난류</option>
      <option value="3">수산가공품</option>
      <option value="4">낙농·축산가공품</option>
      <option value="5">조미료·장류·식용유</option>
      <option value="6">채소</option>
      <option value="7">과자·빙과류</option>
      <option value="8">차·음료·주류</option>
      <option value="9">미용품</option>
      <option value="10">세탁·주방·가사용품</option>
      <option value="11">생선류</option>
      <option value="12">기타 가공식품</option>
      <option value="13">곡물</option>
    </select>
    </div>
    <div class="inline-block w-50px pd-0 mg-0">상세품목</div>
<div class="inline-block pd-0 mg-l--5 ta-c">
     <select name="" id="">
     <option value="" selected disabled>품목을 선택하세요</option>
      <option value="1">곡물가공품</option>
      <option value="2">정육·난류</option>
      <option value="3">수산가공품</option>
      <option value="4">낙농·축산가공품</option>
      <option value="5">조미료·장류·식용유</option>
      <option value="6">채소</option>
      <option value="7">과자·빙과류</option>
      <option value="8">차·음료·주류</option>
      <option value="9">미용품</option>
      <option value="10">세탁·주방·가사용품</option>
      <option value="11">생선류</option>
      <option value="12">기타 가공식품</option>
      <option value="13">곡물</option>
    </select>
    </div>
    </div>
    <style>
    body{
    position:flex;
    justify-content: center;
    align-items: center;
    margin: 0;
    padding: 0;
    }
    .block{
    display:block;
    }
    .inline-block{
    display:inline-block;
    }
    .w-50px{
    width:50px;
    }
    .w-400px{
    width:400px;
    }
    .w-500px{
    width:500px;
    }
    .bg-red{
    background-color: red;
    }
    .bg-blue{
    background-color: blue;
    }
    .bg-gold{
    background-color: gold;
    }
    .pd-0{
    padding:0;
    }
    .mg-0{
    margin:0;
    }
    .mg-l--5{
    margin-left:-5px;
    }
    .ta-c{
    text-align:center;
    }
    .po-ab{
    position:absolute;
    }
    .left-0{
    left:0;
    }
    .right-0{
    right:0;
    }
    </style>
<%@ include file="../common/foot.jspf"%>