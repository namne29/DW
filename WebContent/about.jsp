<%@page import="java.util.Map"%>
<%@page import="project.LanguageImpDao"%>
<%@page errorPage="error.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>About</title>
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="shortcut icon" type="image/png" href="img/logo-removebg-preview.png"/>
<style type="text/css">
@media (min-width: 480px) {
    #header {
        display: flex;
	    align-items: center;
	    justify-content: space-between;
    }
    .mapimage{
    	display: block;
    }
}
@media (min-width: 1024px) {
    #header {
        display: flex;
	    align-items: center;
	    justify-content: space-between;
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
                <li><a href="home.jsp"><%=showLanguage.get("Header.Home") %></a></li>
                <li><a style="color: #f4511e !important;" href="about.jsp"><%=showLanguage.get("Header.About") %></a></li>
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
           <br>
<section id="contact-details" class="section-p1">
    <div class="details">
    <span>LIÊN LẠC</span>
    <h2>Ghé thăm một trong các địa điểm hút chích của chúng tôi hoặc liên hệ với chúng tôi ngay hôm nay</h2>
    <h3>Trụ sở chính</h3>
    <div>
    	<ul>
    	<li>
    		<i class="fal fa-map"></i>
    		<p> Đường DT743, Tân Hiệp, Tân Bình, Dĩ An, Bình Dương</p>
    	</li>
    	<li>
    		<i class="fal fa-envelope"></i>
    		<p>19130251@st.hcmuaf.edu.vn</p>
    	</li>
    	<li>
    		<i class="fal fa-phone-alt"></i>
    		<p>0772065017 / 0937919023</p>
    	</li>
    	<li>
    		<i class="fal fa-clock"></i>
    		<p>Thứ hai to Thứ bảy: 9.00am to 16.pm</p>
    	</li>
    	</ul>
    </div>
    </div>
    <div class="map">
    <iframe class="mapimage" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3916.9576145078713!2d106.75412981468502!3d10.966571958654162!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3174da25cdcf9e73%3A0x3a30a7b15c3d9c78!2zVMOibiBIaeG7h3AsIFTDom4gQsOsbmgsIETEqSBBbiwgQsOsbmggRMawxqFuZywgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1654688916268!5m2!1svi!2s" width="600" height="450" style="border:0;" ></iframe>
    </div>
    </section>
<%@include file="footer.jsp"%>
</body>
</html>