<%@page import="project.LanguageImpDao"%>
<%@page import="java.util.Map"%>
<%@page import="java.sql.*"%>
<%@page import="project.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/index.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" pageEncoding="UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1" />

<title>Home</title>
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="shortcut icon" type="image/png"
	href="img/logo-removebg-preview.png" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
	<br>
	<div class="btn-group btn-group-lg"
		style="margin-left: 38%; display: flex;">
		<a onclick="window.print();"><button type="button"
				class="btn btn-danger" style="margin-left: 10px">
				<i class="glyphicon glyphicon-print"></i>PDF				
			</button></a> <a><button type="button"
				class="btn btn-warning" onclick="tableToCSV()"  style="margin-left: 10px">
				<i class="glyphicon glyphicon-edit"></i>Excel
			</button></a> <a><button type="button" class="btn btn-success"
				onclick="tableToCSV()" style="margin-left: 10px">
				<i class="glyphicon glyphicon-check"></i>CSV
			</button></a> <a href="home.jsp"><button type="button" class="btn btn-info"
				style="margin-left: 10px">
				<i class="glyphicon glyphicon-log-out"></i>Quay lại
			</button></a>
	</div>

	<br>

	<div class="container">
		<br>
		<h2 style="margin-left: 38%"><%=showLanguage.get("Header.result") %></h2>
		<br>
		<table class="table">
			<thead>
				<tr class="danger">
					<th><%=showLanguage.get("Header.date") %></th>
					<th><%=showLanguage.get("Header.province") %></th>
					<th><%=showLanguage.get("Header.special") %></th>
					<th><%=showLanguage.get("Header.prize1") %></th>
					<th><%=showLanguage.get("Header.prize2") %></th>
					<th><%=showLanguage.get("Header.prize3") %></th>
					<th><%=showLanguage.get("Header.prize4") %></th>
					<th><%=showLanguage.get("Header.prize5") %></th>
					<th><%=showLanguage.get("Header.prize6") %></th>
					<th><%=showLanguage.get("Header.prize7") %></th>
					<th><%=showLanguage.get("Header.prize8") %></th>
				</tr>
			</thead>
			<tbody>
				<tr class="success">
					<td>18/10/2022</td>
					<td>Bạc Liêu</td>
					<td>233454</td>
					<td>52986</td>
					<td>93135</td>
					<td>23211</td>
					<td>38923</td>
					<td>3432</td>
					<td>2322</td>
					<td>216</td>
					<td>61</td>
				</tr>
				<tr class="warning">
					<td>18/10/2022</td>
					<td>Vũng Tàu</td>
					<td>233454</td>
					<td>52986</td>
					<td>93135</td>
					<td>23211</td>
					<td>38923</td>
					<td>3432</td>
					<td>2322</td>
					<td>216</td>
					<td>61</td>
				</tr>
				<tr class="info">
					<td>18/10/2022</td>
					<td>Bến Tre</td>
					<td>233454</td>
					<td>52986</td>
					<td>93135</td>
					<td>23211</td>
					<td>38923</td>
					<td>3432</td>
					<td>2322</td>
					<td>216</td>
					<td>61</td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>