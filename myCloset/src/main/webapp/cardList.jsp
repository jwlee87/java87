<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html><html class=''>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<title>cardUI by marsony</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootflat/2.0.4/css/bootflat.min.css">

 <style>body {background-color: #f1f2f6;}
.item,
.grid-item, .grid-sizer {
  width:50%;
  min-height: 1px;
    padding-right: 10px;
    padding-left: 10px;
}
@media (min-width: 768px) {
  .item,
  .grid-item, .grid-sizer  {
    width : 33.33333333%;
  }
}
@media (min-width: 992px) {
  .item ,
  .grid-item, .grid-sizer {
    width : 25%;
  }
}
@media (min-width: 1200px) {
  .item,
  .grid-item, .grid-sizer  {
    width : 20%;
  }
}
</style>

</head><body>
<div class="container">
    <!-- infinite grid -->
    <div id="grid" class="row grid" style="visibility:hidden">
        <div class="grid-sizer"></div>
    </div>
</div>
<script id="items-template" type="text/x-handlebars-template">
    {{~#each items~}}
    <div class="item grid-item">
        <div class="thumbnail">
            <img class="img-rounded" src="{{imgSrc}}" />
            <div class="caption">
                <p><a href="{{href}}">{{desc}}</a></p>
            </div>
        </div>
    </div>
    {{~/each~}}
</script>

<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.1/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.0.5/handlebars.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/masonry/4.0.0/masonry.pkgd.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery.imagesloaded/4.1.0/imagesloaded.pkgd.min.js'></script>

<script>var template = Handlebars.compile($("#items-template").html());
var data = {
    getItems: function(groupNo) {
        groupNo *= 30;
        var items = [];
        for(var i=0; i<30; i++) {
            items.push(groupNo + i);
        }
        items = $.map(items, function(v) {
            return {
                offset: v,
                imgSrc: "http://naver.github.io/egjs-experiment/infiniteGridService/demo/img/" + ( ( (v + 1) % 60) + 1 ) + ".jpg",
                href: "http://naver.com/",
                desc: "임시"
              };
        });
        return {items: items};
    }
};  
    
var groupIdx = 0;
function getItemElement() {
    return $(template(data.getItems(groupIdx++)));
};


var msnry = new Masonry( '.grid', {
    columnWidth: '.grid-sizer',
    percentPosition: true,
    transitionDuration: 0
});

function appendItem() {
    var el = getItemElement();
    $(msnry.element).append( el );
    imagesLoaded(  document.querySelector('.grid'), function() {
        msnry.appended( el );
        $('.grid').css("visibility", "visible");
    }); 
}

var loadCnt = 0;
window.addEventListener('scroll', function() {
    if(window.scrollY + window.innerHeight >= parseInt(window.getComputedStyle(document.documentElement).height)) {
        appendItem();

        // bench 
        $('.loadCnt').html(++loadCnt + "번 추가 로드");
    }
});
appendItem();

</script>
</body></html>
