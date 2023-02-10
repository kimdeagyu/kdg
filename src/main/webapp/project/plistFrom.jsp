<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FAQ</title>

<style>
*{
a:text-decoration: none; color: black; 
}

h1{
font-size:25px;
margin:30px 300px 30px 300px;
text-align:center;
border:1px solid;
border-radius:50px 50px 50px 50px;
background-color: skyblue;
}
h2{

margin-left:200px;
text-align: left;
border: 1px solid blue;
border-radius:10px 10px 10px 10px;
padding-left:30px;
width:150px; 
}
a{
text-decoration:none;
background-size:10px 10px no-repeat;
}

li{
margin:0px auto;
margin-left:200px;
list-style:none;
}

.faq{
border-bottom:0px solid #ddd; margin:1em 0;
text-decoration:none;}
.a{
border: 1px solid red;
width:300px;
}
.q{
border: 1px solid gray;
width:300px;  
}
.faq.faqHeader{position:relative;zoom:1;}

.faq.faqHeader.showAll{
position:absolute;bottom:0;right:0;border:0;padding:0;overflow:visible;background:none;
cursor:pointer;

}
.faq.faqBody{
margin:;
}
.faq.q a{
text-decoration:none;
display:block;
padding:0 0 0 35px;
font-size: 18px;
color: #5e5e5e;
font-weight: bold;
line-height: 27px;
cursor: pointer;
margin: 10px 0; !important


}
.faq.q a:hover, .faq.q a:active, .faq.q a:focus {}
.faq.a {
background: #f8f8f8  40px 10px;
padding:10px 75px 10px 75px;
font-size: 16px;
color: #444444;
line-height:22px;
}
h3{
margin-left:12.5px;
position:relative;

}
.Left {
border:1px solid;
border-radius:20px 20px 20px 20px;
position:fixed;
padding: 10px;
cursor: pointer;
a:hover color:red;
}


</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-latest.js"></script>

</head>

<body>

<h1>자주하는 질문</h1>


<div class=Left>
<h3>고객센터</h3>
	<div>
	<div class="report"><input type="button" value="신고" onclick="showPopup();">신고하기</div>
	<div class="question"><a href="plistFrom.jsp">자주하는 질문</a></div>
	</div>
</div>

	<div class="faq">
		<div class="faqHader"></div>
		<ul class="faqBody">
		<h2>회원가입↘</h2>
			<li class="article" id="a1">
				<p class="q">
				<a href="#a1">회원가입을 해야만 사용가능 하나요</a>				
				</p>
				<p class="a">당연한거 아니야 뭘물어 짜증나게</p>
			</li>
			<li class="article" id=a2>
				<p class="q">
				<a href="#a2">중고 도서 사는것도 그런가요</a>				
				</p>
				<p class="a">그건 몰라요 전화해봐요</p>
			</li>
			<li class="article" id=a3>
				<p class="q">
				<a href="#a3">질문3</a>
				</p>
				<p class="a">답변3</p>
			</li>
</ul>
</div>
	<div class="faq">
		<div class="faqHader"></div>
		<ul class="faqBody">
		<h2>판매자↘</h2>
			<li class="article" id="a1">
				<p class="q">
				<a href="#a1">질문1</a>				
				</p>
				<p class="a">답변1</p>
			</li>
			<li class="article" id=a2>
				<p class="q">
				<a href="#a2">질문2</a>				
				</p>
				<p class="a">답변2</p>
			</li>
			<li class="article" id=a3>
				<p class="q">
				<a href="#a3">질문3</a>
				</p>
				<p class="a">답변3</p>
			</li>
</ul>
</div>
	<div class="faq">
		<div class="faqHader"></div>
		<ul class="faqBody">
		<h2>구매자↘</h2>
			<li class="article" id="a1">
				<p class="q">
				<a href="#a1">질문1</a>				
				</p>
				<p class="a">답변1</p>
			</li>
			<li class="article" id=a2>
				<p class="q">
				<a href="#a2">질문2</a>				
				</p>
				<p class="a">답변2</p>
			</li>
			<li class="article" id=a3>
				<p class="q">
				<a href="#a3">질문3</a>
				</p>
				<p class="a">답변3</p>
			</li>
</ul>
</div>
<script>
jQuery(function($) {
	var article =$('.faq>.faqBody>.article');
	article.addClass('hide');
	article.find('.a').hide();
	article.eq(0).removeClass('hide');
	article.eq(0).find('.a').show();
	$('.faq>.faqBody>.article>.q>a').click(function(){
	var myArticle =$(this).parents('.article:first');
	if(myArticle.hasClass('hide')){
		article.addClass('hide').removeClass('show');
		article.find('.a').slideUp(100);
		myArticle.removeClass('hide').addClass('show');
		myArticle.find('.a').slideDown(100);
	}else{
		myArticle.removeClass('show').addClass('hide');
		myArticle.find('.a').slideUp(100);
	}
		return false;
	});
	$('.faq>.faqHeader>.showAll').click(function () {
		var hidden = $('.faq>.faqBody>.article.hide').length;
		if(hidden>0){
			article.removeClass('hide').addClass('show');
			article.find('.a').slideDown(100);
		}else{
			article.removeClass('show').addClass('hide');
			article.find('.a').slideUp(100);
		}
	
	}
	})
})

</script>
</body>
</html>