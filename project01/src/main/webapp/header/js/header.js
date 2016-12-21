$(function() {
	headerInit();
	headerLogo();
	headerSearchIcon();
	headerGnb();
});

function headerInit() {
	$(".hd-gnb-sub").css("opacity", 0).hide();
}

function headerLogo() {

	$("#hd-logo-svg").hover(function() {
		$(this).attr("src", "../header/css/images/logo_gr.svg");
	}, function() {
		$(this).attr("src", "../header/css/images/logo_pk.svg");
	});

}

function headerSearchIcon() {
	$(".hd-searchBox").focus(function() {
		$(this).prev("#hd-icon-search").css("color", "#333");
	});

	$(".hd-searchBox").blur(function() {
		$(this).prev("#hd-icon-search").css("color", "#ccc");
	});
}

// navigation show & hide
function headerGnb() {

	var $list = $(".hd-gnb-sub")
	var th = $list.height()
	var isPlay = false

	$("#hd-gnb>li>a").click(function() {
		$(document).on("click", "#hd-gnb>li>a", function() {

			if (!isPlay) {
				$(this).next().slideDown().show().animate({
					opacity : 1,
					top : 85
				}, 300);
			} else {
				$list.hide("slow").animate({
					opacity : 0,
					top : 120
				}, 300);
			}

			isPlay = !isPlay
		});

		$("#hd-gnb>li>a").click(function() {
			$(this).next().animate({
				opacity : 1,
				top : 85,
				height : $(this).next().height()
			}, 500);
		});

	});
}

/// 추가 by JW
//메인에서 파일 업로드 모달 띄우는 펑션
$("#fileUpload").on("click", function(e, seq) {

	$('#uploadModal').modal('show').css("margin-top", "200px");

	e.stopPropagation();
	e.preventDefault();

});

$(".modal-title").css("margin-bottom", "20px");

$("#rightButton").hover().css("backgroundColor", "#FFF").css("border",
		"1px solid #C0C0C0");

//파일 업로드 버튼 js 시작

var fileTarget = $('.upload-hidden');
var filename = "";

fileTarget.on('change', function() {

	if (window.FileReader) {
		// 파일명 추출
		filename = $(this)[0].files[0].name;
		console.log(filename);
	} else {
		// Old IE 파일명 추출
		filename = $(this).val().split('/').pop().split('\\').pop();
	}
	;
	$(this).siblings('.upload-name').val(filename);
});

var openFile = function(event) {

	console.log("1");

	var input = event.target;
	var reader = new FileReader();

	console.log("2");

	reader.onload = function() {
		var dataURL = reader.result;
		var output = document.getElementById("output");
		output.src = dataURL;
	};

	console.log("3");

	reader.readAsDataURL(input.files[0]);

	console.log("4");

	$("#openUploadModal").modal('show').css("margin-top", "50px").css(
			"margin-left", "-80px");

	
	
	event.stopPropagation();
	event.preventDefault();

};

//파일 업로드 버튼 js 끝
