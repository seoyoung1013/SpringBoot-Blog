<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="layout/header.jsp"%>
<link rel='stylesheet' type='text/css' href='/css/chatt.css'>
<style>
    input[type="text"],
    input[type="button"],
    textarea {
        margin-bottom: 20px;
    }
</style>

<div id='chatt'>
    <h1>WebSocket Chatting</h1>
    <label>여행자들의 공간에서 사용하실 별명을 써주세요</label>
    <br>
    <input type='text' id='mid' placeholder='홍길동'>
    <input type='button' value='적용하기' id='btnApply'>
    <br/>
    <div id='talk'></div>
    <div id='sendZone'>
        <textarea id='msg' placeholder='대화 내용을 작성해주세요.'  style="margin-top:20px"></textarea>
        <input type='button' value='전송' id='btnSend' style="margin-top:20px">
    </div>
</div>
<script src='/js/chatt.js'></script>
<%@ include file="layout/footer.jsp"%>
