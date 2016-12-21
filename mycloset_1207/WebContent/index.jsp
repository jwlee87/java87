<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 실제 맨처음 index화면 로그인 안했을 경우. -->
<!DOCTYPE html>
<html class=''>
<head>

<!-- CSS -->
<link rel="stylesheet"
	href="node_modules/bootstrap/dist/css/bootstrap.css">

<link rel="stylesheet" href="front/css/jquery.fullpage.css">
<link rel="stylesheet" href="front/css/front.css">

</head>

<body>
	<header>
		<div class="frontHeader">
			<h1 id="frontLogo">
                <img src="front/css/images/logo_wh.svg" alt="logo"/>
            </h1>
			<!--<a class="l-right toggle-menu" href="#"> <i></i> <i></i> <i></i></a>-->
			
		</div>
	</header>

	<!-- Modal -->
	<div class="modal fade" id="myModal" role="dialog">
		<div class="modal-dialog">
			<!-- Modal Content-->
			<div class="container1">
				<div class="row">
					<div class="colmiddle">
						<div class="panel panel-login">
							<div class="panel-heading">
								<div class="row">
									<div class="col-xs-6">
										<a href="#" class="active" id="login-form-link">Login</a>
									</div>
									<div class="col-xs-6">
										<a href="#" id="register-form-link">Register</a>
									</div>
								</div>
								<hr>
							</div>
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-12">
										<form id="login-form" onsubmit="return fncLogin();"
											action="/user/login" name="loginForm" method="post"
											role="form" style="display: block;">
											<div class="form-group">
												<input type="email" name="email" id="emailBtn" tabindex="1"
													class="form-control" placeholder="Email">
											</div>
											<div class="form-group">
												<input type="password" name="pwd" id="pwdBtn" tabindex="2"
													class="form-control" placeholder="password">
											</div>
											<div class="form-group text-center">
												<input type="checkbox" tabindex="3" class="" name="remember"
													id="remember"> <label for="remember">
													Remember Me</label>
											</div>
											<div class="form-group">
												<div class="row">
													<div class="col-sm-6 col-sm-offset-3">
														<input type="submit" name="login-submit" id="login-submit"
															tabindex="4" class="form-control btn btn-login"
															value="Log In">
													</div>
												</div>
											</div>
											<!-- 	<div class="form-group">
												<div class="row">
													<div class="col-lg-12">
														<div class="text-center">
															<a href="http://phpoll.com/recover" tabindex="5"
																class="forgot-password">Forgot Password?</a>
														</div>
													</div>
												</div>
											</div> -->
										</form>
										<div class="faceBookBtn" style="display: block">
											<button class="loginBtn loginBtn--facebook"
												onclick="FB.login();">Login with Facebook</button>
											<!-- <fb:login-button scope="public_profile,email" onlogin="checkLoginState();"> </fb:login-button> -->


										</div>
										<form id="register-form" action="user/addUser" method="post"
											role="form" style="display: none;">
											<div class="form-group">
												<input type="email" name="email" id="emailBtn" tabindex="1"
													class="form-control" placeholder="Email" value="">
											</div>
											<div class="form-group">
												<input type="password" name="pwd" id="pwdBtn" tabindex="1"
													class="form-control" placeholder="Password" value="">
											</div>
											<div class="form-group">
												<input type="password" name="confirm-password" id="pwdBtn"
													tabindex="2" class="form-control"
													placeholder="Confirm-Password">
											</div>
											<div class="form-group">
												<input type="text" name="nick" id="confirm-password"
													tabindex="2" class="form-control" placeholder="nickName">
											</div>
											<div class="form-group">
												<div class="row">
													<div class="col-sm-6 col-sm-offset-3">
														<input type="submit" name="register-submit"
															id="register-submit" tabindex="4"
															class="form-control btn btn-register"
															value="Register Now">
													</div>
												</div>
											</div>
										</form>
										<button class="btn btn-danger btn-default pull-right"
											data-dismiss="modal" style="margin-top: 30px;">
											<span class=glyphicon-remove"></span> Cancel
										</button>

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
	<!-- modal content 끝 -->

	<!-- 각 화면 섹션 나눈곳 -->
	<div id="fullpage">
		<section class="vertical-scrolling">
			<article>
				<h2 class="y">myCloset.</h2>
				<h3>잠깐 구경하러 왔다가</h3>
				<h4>눌러앉게 될걸요.</h4>

				<!-- Trigger the modal with a button -->
				<button type="button" class="btnfirst" id="myBtn">시작하기</button>
				<!-- <div scope="public_profile,email"  onlogin="checkLoginState();"   class="fb-login-button" data-max-rows="1" data-size="xlarge" data-show-faces="false" data-auto-logout-link="true"></div> -->



				<div class="scroll-icon">
					<!-- <a href="#fifthSection/1" class="icon-up-open-big"></a> -->
				</div>
			</article>
		</section>
		<section class="vertical-scrolling">
			<article>
				<h2>MyCloset은 너무 쉬워 설명이 필요없어요.</h2>
				<h3>
					손쉽게 뚝딱 블로그를 만들어 무엇이든 올릴 수 있습니다. 이야기, 사진, GIF, TV 쇼,</br> 링크, 풍자, 개그,
					Spotify 트랙, MP3, 동영상, 패션, 아트, 진지한 얘기까지 뭐든지요. 323671146가지 </br> 다양한 개성이
					모인 Tumblr, 없는 거 없이 다 있답니다.</br>
				</h3>
			</article>
		</section>


		<section class="vertical-scrolling">
			<h2 class="a">Mycloset은 다른사람의 패션을 가져옵니다.</h2>
			<h3 class="a">알고 보니 모두 이렇게 간단하게 재미난 포스팅을 하고 있었다고요? 친구들이 공유하던 수많은
				기발한 블로그, 그게 모두 Mycloset 블로 그였다는 사실. 이제, 멋진 블로그를 쉽게 찾아 팔로우하세요. 전 세계
				블로거 들을 찾아 서로 팔로우하는 재미를 맛보세요.</h3>
			<img class="a" src="front/images/background_3.png" />
		</section>
		<section class="vertical-scrolling">
			<img class="b" src="front/images/wordrobe_profile.png" /> <img
				class="b" src="front/images/wordrobe_status.png" />
			<h2>어떻게 하시는지 아시죠?</h2>
			<h3>팔로우하는 블로그의 모든 포스트가 대시보드에 나타납니다. 멋진 포스트가 있다면 리블로그하세요. 리블로그해서
				내 블로그로 가져올 수도 있고, 댓글도 달 수 있답니다. 요게 바로 패셔니스타 친구를 만드는 방법!</h3>
		</section>
		<section class="vertical-scrolling">
			<div class="horizontal-scrolling">
				<h2>fullPage.js</h2>
				<h3>This is the fifth section and it contains the first slide
					(actually section == first slide)</h3>
			</div>
			<!-- <div class="horizontal-scrolling">
      <h2>fullPage.js</h2>
      <h3>This is the second slide</h3> 
      <p class="end">Thank you!</p>
    </div> -->
		</section>
	</div>

	<!-- JS -->
	<script src="node_modules/jquery/dist/jquery.js"></script>
	<script src="node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- JS CDN -->
	<script
		src='//production-assets.codepen.io/assets/common/stopExecutionOnTimeout-58d22c749295bca52f487966e382a94a495ac103faca9206cbd160bdf8aedf2a.js'></script>
	<script
		src='https://cdnjs.cloudflare.com/ajax/libs/fullPage.js/2.6.6/jquery.fullPage.min.js'></script>

	<script src="front/js/front.js"></script>

	<script type="text/javascript">
		$(".form-control btn btn-login").click(function() {
			fncLogin();
		});
	</script>
</body>
</html>