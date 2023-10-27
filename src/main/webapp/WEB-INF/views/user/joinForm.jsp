<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../layout/header.jsp"%>

<style>
    .container {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        height: 100vh;
    }

    .form-signup {
        width: 100%;
        max-width: 330px;
        padding: 30px;
        margin: 10 auto;
    }

    .form-signup .form-control {
        position: relative;
        box-sizing: border-box;
        height: auto;
        padding: 10px;
        font-size: 16px;
    }

    .form-signup .form-control:focus {
        z-index: 2;
    }

    .form-signup #btn-save {
        width: 100%;
        margin-top: 20px;
    }


    .form-signup a {
        text-align: center;
        display: block;
        margin-top: 10px;
        margin-bottom:40px;'
    }

    .form-signup img {
        height: 38px;
    }
</style>


<div class="container">
    <form class="form-signup" action="/auth/loginProc" method="post">
        <h1 class="h3 mb-3 font-weight-normal" style="text-align: center;">Please Sign Up</h1>
        <label for="username">Username</label>
        <input type="text" id="username" class="form-control" placeholder="Enter username" required="" autofocus="" name="username">
        
        <label for="password">Password</label>
        <input type="password" name="password" class="form-control" placeholder="Enter password" id="password">
        
         <label for="age">Age</label>
        <input type="text" id="age" class="form-control" placeholder="Enter age" name="age">
        
        <label for="email">Email</label>
        <input type="email" id="email" class="form-control" placeholder="Enter email" name="email">

        <label for="location">Location</label>
        <input type="text" id="location" class="form-control" placeholder="Enter location" name="location">
        
        <label for="travelStyle">Travel Style</label>
        <input type="text" id="travelStyle" class="form-control" placeholder="Enter travel style" name="travelStyle">
        
        <label for="mbti">MBTI</label>
        <select id="mbti" class="form-control" name="mbti">
            <option value="ISTJ">ISTJ</option>
            <option value="ISFJ">ISFJ</option>
            <option value="INFJ">INFJ</option>
            <option value="INTJ">INTJ</option>
            <option value="ISTP">ISTP</option>
            <option value="ISFP">ISFP</option>
            <option value="INFP">INFP</option>
            <option value="INTP">INTP</option>
            <option value="ESTP">ESTP</option>
            <option value="ESFP">ESFP</option>
            <option value="ENFP">ENFP</option>
            <option value="ENTP">ENTP</option>
            <option value="ESTJ">ESTJ</option>
            <option value="ESFJ">ESFJ</option>
            <option value="ENFJ">ENFJ</option>
            <option value="ENTJ">ENTJ</option>
        </select>
        
        <label for="Introduction">Introduction</label>
        <input type="text" id="introduction" class="form-control" placeholder="Enter introduction" name="introduction" rows="3" >
        
        <button id="btn-save" class="btn btn-primary" >회원가입</button>
    </form>
</div>


<script src="/js/user.js"></script>
<%@ include file="../layout/footer.jsp"%>
