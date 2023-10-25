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
        <input type="text" id="username" class="form-control" placeholder="Enter username" required="" autofocus="" name="username" data-listener-added_615eccf4="true">
        <label for="password">Password</label>
        <input type="password" name="password" class="form-control" placeholder="Enter password" id="password">
        <label for="email">Email</label>
        <input type="email" id="email" class="form-control" placeholder="Enter email">
        <button id="btn-save" class="btn btn-primary" >회원가입</button>
    </form>
</div>

<script src="/js/user.js"></script>
<%@ include file="../layout/footer.jsp"%>
