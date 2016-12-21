<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>

<head>

<!-- CSS -->

<link rel="stylesheet"
	href="../node_modules/bootstrap/dist/css/bootstrap.css">
<link rel="stylesheet"
	href="../node_modules/jquery-ui-1.12.1/jquery-ui.css">
<link rel="stylesheet" href="../header/css/fonts.css">
<link rel="stylesheet" href="../header/css/header.css">

</head>

<body>
	<div id="headerWrap">
		<header id="header">
			<!-- logo -->
			<h1 class="hd-logo">
				<a id="hd-logo-link" href="../index.jsp"> <img id="hd-logo-svg"
					src="../header/css/images/logo_pk.svg" alt="logo">
				</a>
			</h1>

			<!-- Search -->
			<div id="hd-search">
				<span id="hd-icon-search" class="glyphicon glyphicon-search"
					aria-hidden="true"></span> <input type="text" class="hd-searchBox"
					placeholder="Search" required />
			</div>

			<!--  menu -->
			<div id="menubar">
				<div class="menubarItem" id="fileUpload">UPLOAD</div>
				<div class="menubarItem" id="message">
					<p>MESSAGE</p>
				</div>
				<div class="menubarItem" id="account">
					<p>ACCOUNT</p>
				</div>
			</div>

		</header>
		<!--//header-->

	</div>
	<!--//headerWrap-->

	<form method="POST" id="frm" enctype="multipart/form-data"
		action="/style/addStyle">

		<!-- fileUploadModal -->
		<div id="uploadModal" class="modal fade" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h3 class="modal-title">스타일 업로드</h3>
						<p>당신의 스타일을 올려 전세계 사람들과 공유하세요!</p>
					</div>
					<div class="modal-body">

						<div class="filebox bs3-primary preview-image">
							<input class="upload-name" value="파일선택" disabled="disabled"
								style="width: 200px; margin-bottom: 6px;"> <label
								for="input_file">사진찾기</label> <input type="file"
								onchange="openFile(event)" id="input_file" class="upload-hidden"
								name="fileUpload">
						</div>

					</div>
				</div>

			</div>
		</div>

		<!-- 2번째 모달 사진 태그openUploadModal 창 -->
		<div id="openUploadModal" class="modal fade" role="dialog">
			<div class="modal-dialog2">

				<!-- Modal content-->
				<div class="modal-content2">
					<div class="modal-header2">
						<button type="button" class="close" id="modal2Close"
							data-dismiss="modal" style="width: 20px;">&times;</button>
						<h4 class="modal-title">스타일 업로드</h4>
						<hr>

						<div class="modal-body2">

							<input type="text" class="form-control" placeholder="제목을 입력하세요."
								id="styleTitle" name="styleTitle">

							<div class="preview-image2" id="previewImage2">
								<img class="imgBox" id="output" src="" width="400px">

								<div class="styleTagBox" style="margin-bottom: -30px;">
									<img class="styleTagNumber" id="styleTagNumber1"
										name="styleTagNumber1" src="../header/img/number1.png">
									<img class="styleTagNumber" id="styleTagNumber2"
										name="styleTagNumber2" src="../header/img/number2.png">
									<img class="styleTagNumber" id="styleTagNumber3"
										name="styleTagNumber3" src="../header/img/number3.png">
									<img class="styleTagNumber" id="styleTagNumber4"
										name="styleTagNumber4" src="../header/img/number4.png">
									<img class="styleTagNumber" id="styleTagNumber5"
										name="styleTagNumber5" src="../header/img/number5.png">
								</div>



								<hr style="margin-top: 50px;">

								<div class="addStyleToolBox">
									<p class="addStylePTag">스타일 정보 추가하기 (최대 5개)</p>
									<img id="stylePlusButton" class="styleButton" type="button"
										src="../header/img/plus-button.svg" style="margin-left: 30px;" />
									<!-- <img id="styleDeleteButton" class="styleButton" type="button" src="../header/img/delete-button.svg" /> -->

									<div id="formGroup1" class="form-group">
										<!-- <pre class="descInfo">옷정보                                  가격정보</pre> -->
										<input type="text" class="form-control" id="styleInfo" name="styleInfo1" placeholder="1.옷 정보"> 
										<input type="text" class="form-control" id="priceInfo" name="priceInfo1" placeholder="1.가격 정보">
										<button type="button" class="close small" id="close1" style="width: 20px;">&times;</button>
										<input type="hidden" id="input_styleTagNumber1" name="styleTagPosition1">
									</div>

									<div id="formGroup2" class="form-group">
										<input type="text" class="form-control" id="styleInfo" name="styleInfo2" placeholder="2.옷 정보"> 
										<input type="text" class="form-control" id="priceInfo" name="priceInfo2" placeholder="2.가격 정보">
										<button type="button" class="close small" id="close2" style="width: 20px;">&times;</button>
										<input type="hidden" id="input_styleTagNumber2" name="styleTagPosition2">
									</div>

									<div id="formGroup3" class="form-group">
										<input type="text" class="form-control" id="styleInfo" name="styleInfo3" placeholder="3.옷 정보"> 
										<input type="text" class="form-control" id="priceInfo" name="priceInfo3" placeholder="3.가격 정보">
										<button type="button" class="close small" id="close3" style="width: 20px;">&times;</button>
										<input type="hidden" id="input_styleTagNumber3" name="styleTagPosition3">
									</div>

									<div id="formGroup4" class="form-group">
										<input type="text" class="form-control" id="styleInfo" name="styleInfo4" placeholder="4.옷 정보"> 
										<input type="text" class="form-control" id="priceInfo" name="priceInfo4" placeholder="4.가격 정보">
										<button type="button" class="close small" id="close4" style="width: 20px;">&times;</button>
										<input type="hidden" id="input_styleTagNumber4" name="styleTagPosition4">
									</div>

									<div id="formGroup5" class="form-group">
										<input type="text" class="form-control" id="styleInfo" name="styleInfo5" placeholder="5.옷 정보"> 
										<input type="text" class="form-control" id="priceInfo" name="priceInfo5" placeholder="5.가격 정보">
										<button type="button" class="close small" id="close5" style="width: 20px;">&times;</button>
										<input type="hidden" id="input_styleTagNumber5" name="styleTagPosition5">
									</div>

								</div>

								<hr>

								<p>내용</p>
								<textarea name="styleDesc" id="memo" class="form-control"
									rows="5"
									placeholder="#을 이용하여 해시태그를 등록 해보세요!                                 예)  #청바지 랑 #셔츠 새로 샀어요!                                                         (해시태그는 5개까지 가능합니다.)"></textarea>

								<hr>

								<button class="btn btn-default submitbuttom"
									id="uploadSubmitBtn" style="margin-left: 84%;">업로드</button>

							</div>

						</div>

					</div>
				</div>

			</div>
		</div>

	</form>

	<!-- JS -->
	<script src="../node_modules/jquery/dist/jquery.js"></script>
	<script src="../node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
	<script src="../node_modules/bootstrap/js/modal.js"></script>
	<script src="../node_modules/jquery-ui-1.12.1/jquery-ui.js"></script>
	<script src="../header/js/header.js"></script>

	<script>
	var elemArray = new Object();   //Array가 아닌 Object임에 주의
	/* $.each($(".styleTagNumber"), function( index, value ) {
		var obj = { left : -1 , top : -1 }
		elemArray[$(this).attr('id')] = obj;
	}); */
	
		$(".form-group").hide();
		$(".styleTagNumber").hide();

		$("#stylePlusButton").mousedown(function(e) {

			$(this).attr("src", "../header/img/plus-button-active.svg");

			if ($("#formGroup1").is(":visible")) {
				if ($("#formGroup2").is(":visible")) {
					if ($("#formGroup3").is(":visible")) {
						if ($("#formGroup4").is(":visible")) {
							if ($("#formGroup5").is(":visible")) {
							} else {
								$("#formGroup5").slideDown();
								$("#styleTagNumber5").slideDown();
							}
						} else {
							$("#formGroup4").slideDown();
							$("#styleTagNumber4").slideDown();
						}
					} else {
						$("#formGroup3").slideDown();
						$("#styleTagNumber3").slideDown();
					}
				} else {
					$("#formGroup2").slideDown();
					$("#styleTagNumber2").slideDown();
				}
			} else {
				$("#formGroup1").show();
				$("#styleTagNumber1").show();
			}

			e.preventDefault();

		});

		$("#stylePlusButton").mouseup(function(e) {
			$(this).attr("src", "../header/img/plus-button.svg");
			e.preventDefault();
		});
		$("#stylePlusButton").mouseout(function(e) {
			$(this).attr("src", "../header/img/plus-button.svg");
		});
		
	    
	        $("button[class='close small']").each(function(index){
	        	$(this).click(function(e){
	        		
	        		if((Number(index)==0)){
	        			changeCloseBtn((Number(index)+1));
	        		}else if((Number(index)==1)){
	        		    changeCloseBtnSlideUp((Number(index)+1));
	        		}else if((Number(index)==2)){
	        		    changeCloseBtnSlideUp((Number(index)+1));
	        		}else if((Number(index)==3)){
	        		    changeCloseBtnSlideUp((Number(index)+1));
	        		}else if((Number(index)==4)){
	        			changeCloseBtnSlideUp((Number(index)+1));
	        		}
	        		
	        		e.preventDefault();
	        	});
			});
	        
	        var changeCloseBtn = function(index){
	        	$("#formGroup"+index).find("input").eq(0).val("");
                $("#formGroup"+index).find("input").eq(1).val("");
                $("#formGroup"+index).hide();
                $("#styleTagNumber"+index).hide();
	        }
	        
	        var changeCloseBtnSlideUp = function(index){
                $("#formGroup"+index).find("input").eq(0).val("");
                $("#formGroup"+index).find("input").eq(1).val("");
                $("#formGroup"+index).slideUp();
                $("#styleTagNumber"+index).slideUp();
            }

		$(".styleTagNumber").draggable({
			cursor : "pointer",
			containment : "#output",
			stop : function( event, ui ){ 
				alert( (Number(ui.offset.left)-$("#output").offset().left) + "," + (Number(ui.offset.top)-$("#output").offset().top) );
		       // var obj = { left : ui.offset.left , top : ui.offset.top }
		        //elemArray[$(this).attr('id')] = obj;
		        //$("#input_" + $(this).attr('id')).val( ui.offset.left + "," + ui.offset.top)
		        $("#input_" + $(this).attr('id')).val( (Number(ui.offset.left)-$("#output").offset().left) + "," + (Number(ui.offset.top)-$("#output").offset().top) )
			}
		});

		//좌표 가져오는 변수
		var x = "";
		var y = "";
		var position = "";

		$("#output").droppable({
			drop : function(e, ui) {
				/*
				x = ui.offset.left;
				y = ui.offset.top;
				
				alert("1 > " + ui.draggle);

				position = x + "," + y;
				alert("x좌표: " + x + " , y좌표: " + y);
				alert(position);
				*/
			}

		});

		//폼태그 전송 펑션
		$("#uploadSubmitBtn").click(function() {
			$("#frm").submit(function() {
 
			    /* $.each(elemArray, function( tagId, obj ) {
			    	alert( tagId + "이름 = top=" + obj.top  + "left=" + obj.left)
			        //obj.left top이 -1이면 입력안된거(이전버전)
			    }); */
			    

				if ($("#styleTitle").val() == "") {
					alert("제목을 입력해주세요.")
					return false;
				} else {

					/* $.ajax({
						url:"",
					 success:function(result){
					 }
					}); */
					alert("업로드 완료!")
				}
			});
		});

		$(".styleTagNumber").hover().css("cursor", "pointer");
		
	</script>

</body>

</html>