<%@page import="project.LanguageImpDao"%>
<%@page import="java.util.Map"%>
<%@page import="java.sql.*"%>
<%@page import="project.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<title>Home</title>
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 <link rel="shortcut icon" type="image/png" href="img/logo-removebg-preview.png"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
h3
{
	color: yellow;
	text-align: center;
}
@media (min-width: 480px) {
    #header, #myCarousel {
        display: flex;
	    align-items: center;
	    justify-content: space-between;
    }
    .inputdate {
    	margin-bottom: 5px;
    }
    #sel1 {
    	margin-bottom: 10px;
    }
    .btn btn-info {
    	margin-bottom: 10px;
    }
}
@media (min-width: 1024px) {
    #header {
        display: flex;
	    align-items: center;
	    justify-content: space-between;
    }
    .inputdate {
    	margin-bottom: 5px;
    }
    #sel1 {
    	margin-bottom: 10px;
    }
    .btn btn-info {
    	margin-bottom: 10px;
    }
}
</style>
</head>
<body style="background-color: white">

<%
	Map<String,String> showLanguage = new LanguageImpDao().vietNameseLanguage(); 
String lang = (String) session.getAttribute("lang");
if(lang!=null) {
	if(lang.equals("VietNamese")) {
		showLanguage = new LanguageImpDao().vietNameseLanguage();
	}else if(lang.equals("English")) {
		showLanguage = new LanguageImpDao().englishLanguage();
	}
}
%>
<section id="header">
        <a href="home.jsp"><img src="img/logo-removebg-preview.png" class="logo" alt="" width="90px"></a>
        <div>
            <ul id="navbar" style="margin-right: 530px">
                <li><a style="color: #f4511e !important;" href="home.jsp"><%=showLanguage.get("Header.Home") %></a></li>
                <li><a href="about.jsp"><%=showLanguage.get("Header.About") %></a></li>
                <li>
                <div class="dropdown">
    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown"><i class="fas fa-globe-asia"></i>
    <span class="caret"></span></button>
    <ul class="dropdown-menu">
      <li><a href="international?lang=VietNamese">VietNamese</a></li>
      <li><a href="international?lang=English">English</a></li>
    </ul>
  </div>
                </li>
            </ul>
        </div>
    </section>
   
     <div id="myCarousel" class="carousel slide text-center" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
      <div class="item active">
         <img src="img/win-lottery.webp" class="heromain" alt="" style="width: 260px; margin-left: 620px">
      </div>
      <div class="item">
                <img src="img/smartphone-coins.webp" class="heromain" alt="" style="width: 212px; margin-left: 630px">
      </div>
      <div class="item">
<img src="img/with-happy.webp" class="heromain" alt="" style="width: 300px; margin-left: 610px">
      </div>
    </div>
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
<br>

<div class="btn-group btn-group-lg" style="margin-left: 36%; display: flex;">
<form class="form-inline" action="...">
  <input class="inputdate" style="width: 150px; height: 34px; margin-right: 10px" type="date" name="date">
 <select class="form-control" id="sel1" style="margin-top: 10px">
        <option><%=showLanguage.get("Header.selectProvince") %></option>
        <option>Đắk Lắk</option>
        <option>Đà Lạt</option>
        <option>TPHCM</option>
        <option>Đồng Nai</option>
        <option>Bình Dương</option>
        <option>Long An</option>
        <option>Tiền Giang</option>
        <option>Vĩnh Long</option>
        <option>Cần thơ</option>
        <option>Đồng Tháp</option>
        <option>An Giang</option>
        <option>Kiên Giang</option>
        <option>Cà Mau</option>
        <option>Tây Ninh</option>
        <option>Bến Tre</option>
        <option>Vũng Tàu</option>
        <option>Huế</option>
        <option>Phú Yên</option>
        <option>Sóc Trăng</option>
        <option>Trà Vinh</option>
        <option>Bình Thuận</option>
        <option>Quảng Nam</option>
        <option>Bình Phước</option>
        <option>Bạc Liêu</option>
        <option>Hậu Giang</option>
      </select>
      
      <a href="lotteryresult.jsp"><button style="margin-left: 10px" class="btn btn-info"  type="submit"><i class="glyphicon glyphicon-search"></i><%=showLanguage.get("Header.search") %></button></a>
</form>
</div>
<br>
    
    <section id="feature" class="section-p1">
        <div class="fe-box">
            <img src="img/elegant.webp" alt="" style="width: 150px">
            <h6 style="background-color: #cdebbc;"><%=showLanguage.get("Header.slogan1") %></h6>
        </div>
        <div class="fe-box">
            <img src="img/flat-lucky.webp" alt="" style="width: 150px; height: 120px">
            <h6><%=showLanguage.get("Header.slogan2") %></h6>
        </div>
        <div class="fe-box">
            <img src="img/gambling.webp" alt="" style="width: 150px; height: 120px">
            <h6><%=showLanguage.get("Header.slogan3") %></h6>
        </div>
        <div class="fe-box">
            <img src="img/hand.webp" alt="" style="width: 150px; height: 110px">
            <h6><%=showLanguage.get("Header.slogan4") %></h6>
        </div>
        <div class="fe-box">
            <img src="img/lottery-win-isometric.webp" alt="" style="width: 150px; height: 100px">
            <h6><%=showLanguage.get("Header.slogan5") %></h6>
        </div>
        <div class="fe-box">
            <img src="img/isometric.webp" alt="" style="width: 150px; height: 115px">
            <h6><%=showLanguage.get("Header.slogan6") %></h6>
        </div>
    </section>
      <br>
      <br>
<%@include file="footer.jsp" %>  
</body>
</html>