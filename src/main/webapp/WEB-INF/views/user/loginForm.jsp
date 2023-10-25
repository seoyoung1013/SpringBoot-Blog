<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>

<style>
    .container {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        height: 100vh;
    }

    .form-signin {
        width: 100%;
        max-width: 330px;
        padding: 30px;
        margin: 0 auto;
    }

    .form-signin .form-control {
        position: relative;
        box-sizing: border-box;
        height: auto;
        padding: 10px;
        font-size: 16px;
    }

    .form-signin .form-control:focus {
        z-index: 2;
    }

    .form-signin #btn-login {
        width: 100%;
    }

    .form-signin a {
        text-align: center;
        display: block;
        margin-top: 10px;
        margin-bottom:40px;'
    }

    .form-signin img {
        height: 38px;
    }
</style>

<div class="container">
    <form class="form-signin" action="/auth/loginProc" method="post">
        <h1 class="h3 mb-3 font-weight-normal" style="text-align: center;">Please sign in</h1>
        <label for="username">Username</label>
        <input type="text"  id="username" class="form-control" placeholder="Enter username" required="" autofocus="" name="username" data-listener-added_615eccf4="true">
        <label for="password">Password</label>
        <input type="password" name="password" class="form-control" placeholder="Enter password" id="password">
        <div class="checkbox mb-3">
            <label> <input type="checkbox" value="remember-me"> Remember me </label>
        </div>
        <button id="btn-login" class="btn btn-primary">로그인</button>
        <a href="https://kauth.kakao.com/oauth/authorize?client_id=b344701c3ff69917f13cd47bb45df871&redirect_uri=http://localhost:8000/auth/kakao/callback&response_type=code">
            <img height="38px" src="/image/kakao_login_button.png" /></a>
    </form>
</div>

<%@ include file="../layout/footer.jsp"%>
