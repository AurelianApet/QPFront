<!--#include file="Inc/CommonFun.asp" -->
<!--#include file="Inc/Conn.asp" -->

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
    <link rel="stylesheet" type="text/css" href="css/game_layout.css" />
    <link rel="stylesheet" type="text/css" href="css/cz_layout.css" />
</head>
<body>
<%CxGame.Channel = "Index"  %>
<!--#include file="Themes/Common_Header.asp" -->
<!--页面主体开始-->
<div class="main" style="margin-top:8px;">
	<!--左边部分开始-->
	<div class="mainLeft1">
	<!--#include file="Themes/Game_Sidebar.asp" -->
	</div>
	<!--左边部分结束-->
	
	<!--右边部分开始-->
	<div class="mainRight1">
		<!--Banner下载条开始-->
	    <div class="gameBanner"><img src="images/gameBanner.jpg" border="0" usemap="#Map" />
        <map name="Map" id="Map">
          <area shape="rect" coords="515,150,692,193" href="/Download/GamePlaza.exe" />
        </map>
      </div>
		<!--Banner下载条结束-->
		

		 
	<div class="clear"></div>
	</div>
	<!--右边部分结束-->
<div class="clear"></div>
</div>
<!--页面主体结束-->
<!--#include file="Themes/Common_Footer.asp" -->
</body>
</html>
