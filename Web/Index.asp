<!--#include file="Inc/CommonFun.asp" -->
<!--#include file="Inc/Conn.asp" -->
<!--#include file="Inc/Tool.asp" -->
<!--#include file="Inc/md5.asp" -->

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <meta name="Description" content="<%=CxGame.WebTitle %>" />
    <meta name="Keywords" content="<%=CxGame.WebTitle %>" />
    <meta name="rating" content="general" />
    <meta name="robots" content="all" />
    <title><%=CxGame.WebTitle %></title>
    <link rel="stylesheet" type="text/css" href="css/layout.css" />
    <link rel="stylesheet" type="text/css" href="css/global.css" />
    <script src="JS/MSClass.js" type="text/javascript"></script>
    <script src="JS/jquery_last.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            //验证码
            $("#ImageCheck").bind("click",function(){$("#ImageCheck").attr("src","Inc/Code_Img.asp?"+ Math.random())})  
        })
    </script>
</head>
<body>
<%
CxGame.Channel = "Index" 
CxGame.PlazaAutoLogin
%>
<!--#include file="Themes/Common_Header.asp" -->
<!--页面主体开始-->
<div class="main mtop8">
	<!--左边部分开始-->
	<div class="mainLeft">
		<!--#include file="Themes/Common_Sidebar.asp" -->
		<div class="RightSide">
			<!--banner开始-->			
			<div align="center">
                <script type="text/javascript" src="Js/flash.js"></script>
            </div>
			<!--banner结束-->
			
			<!--新闻公告开始-->
			<div class="news mtop10">
				<div class="news1"><div class="bold hui3 left">新闻公告</div><span><a href="NewsList.asp" class="lh6">更多</a></span></div>
				<div class="newsBg">
					<%=CxGame.NewsTop(5,20) %>
				</div>
			    <div class="clear"></div>
			</div>
			<!--新闻公告结束-->
			
			<!--游戏商城开始-->
			<div class="clear"></div>
			<div class="news mtop10">
			 <div class="shopBg">
				 	<div id="marqueedivcontrol1">
					<div class="shopBg1">
					 
					 
					</div><div class="clear"></div>
					</div>
			 
			  </div>
			</div>
			<!--游戏商城结束-->
			
			<!--热门游戏开始-->
 
			<!--热门游戏结束-->
			
 
			
		<div class="clear"></div>
		</div>
	<div class="clear"></div>
	</div>
	<!--左边部分结束-->
	
	<div class="mainRight">
            <!--#include file="Themes/Common_Logon.asp" -->   
                    
			<!--玩家排行榜开始-->
			<!--#include file="Themes/Common_ScoreTop.asp" -->           
			<!--玩家排行榜结束-->
	
			<!--客服中心开始-->
			<!--#include file="Themes/Common_Service.asp" -->
			<!--客服中心结束-->
	</div>
<div class="clear"></div>
</div>
<!--页面主体结束-->

<!--#include file="Themes/Common_Links.asp" -->
<!--#include file="Themes/Common_Footer.asp" -->
</body>
</html>
<script type="text/javascript">
    var marquee3 = new Marquee("marqueedivcontrol1");
    var left2 = document.getElementById("left2");
    var right2 = document.getElementById("right2");
    marquee3.Direction = "left";
    marquee3.Step = 1;
    marquee3.Width = 420;
    marquee3.Height =134;
    marquee3.Timer = 20;
    marquee3.ScrollStep = 1; //此句禁止鼠标控制
    marquee3.Start();
    left2.onmouseover = function() { marquee3.Direction = 2 }
    left2.onmouseout = left2.onmouseup = function() { marquee3.Step = marquee3.BakStep }
    left2.onmousedown = right2.onmousedown = function() { marquee3.Step = marquee3.BakStep + 2 }
    right2.onmouseover = function() { marquee3.Direction = 3 }
    right2.onmouseout = right2.onmouseup = function() { marquee3.Step = marquee3.BakStep }    
</script>
