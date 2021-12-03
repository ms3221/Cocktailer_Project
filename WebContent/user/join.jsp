<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Cocktailer - experiences</title>
    <link rel="stylesheet" href="../css/reset.css" />
    <link rel="stylesheet" href="../css/common.css" />
    <link rel="stylesheet" href="../css/join.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
    <link rel="stylesheet" href="jqueryUIplugin/jquery-ui.css" />
    <!--<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">-->
    <link rel="shortcut icon" href="../imgs/favicon.ico" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="jqueryUIplugin/jquery-ui.js"></script>
    <script src="../js/sub3.js"></script>
  </head>
  <body>
    <header>
      <a href="index.jsp">
        <h1 class="logo">cock<span>tailer</span></h1>
      </a>
      <div class="topmenu">
        <a href="#">login</a>
        <a href="#">join</a>
      </div>
      <div class="topmenulogo">
        <i class="fas fa-user"></i>
        <i class="fas fa-sign-in-alt"></i>
      </div>
    </header>
    <div id="trigger">
      <span></span>
      <span></span>
      <span></span>
    </div>

    <nav id="mainmenu">
      <ul class="mainmenu__menu">
        <li><a href="sub1.jsp">our rums</a></li>
        <li><a href="sub2.jsp">flavors range</a></li>
        <li><a href="#">experiences</a></li>
        <li>
          <a href="#"><i class="fab fa-facebook"></i></a>
          <a href="#"><i class="fab fa-twitter"></i></a>
          <a href="#"><i class="fab fa-instagram"></i></a>
        </li>
      </ul>
    </nav>
    
	<div class="container">
	<h3>회원가입</h3>
	<form>
	  <div>
	    <label for="exampleInputEmail1" class="form-label">Email address</label>
	    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
	    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
	  </div>
	  <div>
	    <label for="exampleInputPassword1" class="form-label">Password</label>
	    <input type="password" class="form-control" id="exampleInputPassword1">
	  </div>
	  <div>
	    <input type="checkbox" class="form-check-input" id="exampleCheck1">
	    <label class="form-check-label" for="exampleCheck1">Check me out</label>
	  </div>
	  <button type="submit" class="btn btn-primary">Submit</button>
	</form>
	</div>
    <footer>
      <div class="footerleft pc">
        <h6>칵테일러</h6>
        <p>김대표 | 광주 북구 경양로 170 | tel. 062-123-4567 fax.062-123-4568 | cocktailer@naver.com</p>
      </div>
      <div class="footerleft tb">
        <h6>칵테일러</h6>
        <h6>김대표</h6>
        <p><span>|</span> 광주 북구 경양로 170</p>
        <p><span>|</span> tel. 062-123-4567 fax.062-123-4568</p>
        <p><span>|</span> cocktailer@naver.com</p>
      </div>
      <div class="footerright">
        <div class="footersnsbox">
          <i class="fab fa-facebook"></i>
          <i class="fab fa-twitter"></i>
          <i class="fab fa-instagram"></i>
        </div>
        <div class="sitemap">
          <span>사이트맵</span>
          <a href="#">↗</a>
        </div>
      </div>
    </footer>
  </body>
</html>
