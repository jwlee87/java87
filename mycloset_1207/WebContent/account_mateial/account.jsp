<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">

<!-- CSS -->
<link rel="stylesheet" href="../node_modules/materialize-css/css/ghpages-materialize.css">

<link rel="stylesheet" href="../account_material/css/account.css">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>account</title>
</head>

<body>


<!-- 
    <a class="waves-effect waves-light btn" href="#accountWrap">Modal</a>
 -->
  
    <div id="accountWrap">
        <div class="row" id="accountModal">
             <div class="col s12 acnt-title center-align">
                  <h5> ACCOUNT</h5>
             </div>
            <form class="col s12 m12 l4">
                <div class="row" id="acnt-user-img">
                    <img id="uploadImg" src="css/images/user01.png">
                </div>
                <div class="file-field input-field" id="acnt-file-field">
                    <div class="btn" id="acnt-file-btn">
                        <span>사진 변경</span> <input type="file" id="acnt-input-file" onchange="readURL(this);">
                    </div>
                    <div class="file-path-wrapper" id="acnt-file-path">
                        <input class="file-path validate" type="text">
                    </div>
                </div>
            </form>
            <form class="col s12 m12 l8">
                <div class="row">
                    <div class="input-field inline col s12">
                        <input value="${user.email}" id="email" type="email"
                            class="validate"> <label class="active" for="email"
                            data-error="잘못된 이메일 형식입니다." data-success="사용 가능한 이메일입니다.">Email</label>
                    </div>
                    <div class="input-field col s12">
                        <input value="${user.nick}" id="nick" type="text" class="validate">
                        <label class="active" for="nick">Nickname</label>
                    </div>
                    <div class="input-field col s12">
                        <input id="pwd" type="password" class="validate"> <label
                            class="active" for="password">Password</label>
                    </div>
                    <div class="input-field col s12">
                        <input id="conf-pwd" type="password" class="validate"> <label
                            class="active" for="password">Confirm-Password</label>
                    </div>
                </div>
            </form>
            <form class="col s12">
                <div class="row submitBtn">
                    <div class="col s12">
                        <button class="btn waves-effect waves-light" type="submit"
                            name="action">설정</button>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <!-- JS -->
    <script src="../node_modules/jquery/dist/jquery.js"></script>
    <script src="../node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
    <script
		src="../node_modules/materialize-css/js/materialize.min.js"></script>
	<script src="../account_material/js/account.js"></script>


</body>
</html>