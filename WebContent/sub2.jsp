<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Cocktailer - flavors range</title>
    <link rel="stylesheet" href="css/reset.css" />
    <link rel="stylesheet" href="css/common.css" />
    <link rel="stylesheet" href="css/sub2.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
    <link rel="stylesheet" href="flexSlider/flexslider.css" />
    <link rel="shortcut icon" href="imgs/favicon.ico" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="flexSlider/jquery.flexslider-min.js"></script>
    <script src="js/sub2.js"></script>
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
        <li><a href="#">flavors range</a></li>
        <li><a href="sub3.jsp">experiences</a></li>
        <li>
          <a href="#"><i class="fab fa-facebook"></i></a>
          <a href="#"><i class="fab fa-twitter"></i></a>
          <a href="#"><i class="fab fa-instagram"></i></a>
        </li>
      </ul>
    </nav>

    <div class="fv-bn">
      <div class="rotate">
        <h2>Flavors Range</h2>
      </div>
      <div class="bn-txt">
        <h3>easy to mix, easy to drink</h3>
        <p class="fv-tb">쉽게 믹스해서 마실 수 있는 과일향의 럼을 즐겨보세요.</p>
      </div>
    </div>

    <div class="flexslider fv-container">
      <ul class="slides">
        <li>
          <div class="fv-info1">
            <div class="fv-info-txt">
              <h5>explore the rum range</h5>
              <h4>lemon</h4>
              <p>
                우리는 레몬을 뜻하는 스페인어에서 Cocktailer lemon rum이라는 이름을 지었습니다. lemon은 세 가지 감귤류의 혼합에서 신선한 맛을 얻습니다. 과연
                레몬, 라임, 자몽. 맛은 어떨가요?
              </p>
            </div>
          </div>

          <div class="fv-wrap">
            <div class="rum bg1"></div>
            <div class="right">
              <p>레몬 칵테일은 레몬 같은 달콤하고 신 맛이 나는 칵테일로, 달콤하고 신 재료가 서로 대조되고 균형을 이루는 역할을 한다.</p>
              <p>레몬즙, 트리플섹, 심플시럽을 넣어 만든 보드카 베이스의 칵테일이다.</p>
              <p>
                유자 보드카와 같이 일반 또는 감귤 향이 나는 보드카를 사용할 수 있고, 레몬맛 보드카도 가끔 사용된다. 갓 짜낸 레몬즙을 사용해도 좋고, 시판되는
                레몬즙을 사용하는 것보다 우수한 음료를 생산할 수 있다. 일부 버전은 마이어 레몬 주스를 사용하여 준비된다.
              </p>

              <ul class="fv-element">
                <li><img src="imgs/article1.png" /></li>
                <li><img src="imgs/article2-lemon.png" /></li>
                <li><img src="imgs/article3-lemon.png" /></li>
                <li><img src="imgs/article4-lemon.png" /></li>
              </ul>

              <p class="ingred">nutritional information (1.5 oz serving)</p>
            </div>
          </div>
          <div class="clear"></div>
        </li>

        <li>
          <div class="fv-info2">
            <div class="fv-info-txt">
              <h5>explore the rum range</h5>
              <h4>lime</h4>
              <p>
                즉흥적인 비치 파티가 있으면 Cocktailer Lime이 그것이 될 것입니다. 전문적으로 블랜딩된 Cocktailer Lime rum은 최상의 맛을 선사합니다. 좋아하는
                음료에 타서 춤을 시작하세요!
              </p>
            </div>
          </div>

          <div class="fv-wrap">
            <div class="rum bg2"></div>
            <div class="right">
              <p>라임 럼은 칵테일의 가장 일반적인 성분 중 하나로 선한 감귤 향이 가미된 증류주를 만들어 보세요.</p>
              <p>
                레몬이나 라임 또는 약간의 오렌지 주스,오렌지 조각과도 아주 좋습니다. 더 달게 먹고 싶다면 칵테일당 1티스푼 정도의 간단한 시럽을 추가하세요. 이
                칵테일은 1800 코코넛 데킬라와도 정말 잘 어울립니다. 보드카보다 더 좋아할 수도 있습니다.
              </p>

              <ul class="fv-element">
                <li><img src="imgs/article1.png" /></li>
                <li><img src="imgs/article2-lime.png" /></li>
                <li><img src="imgs/article3-lime.png" /></li>
                <li><img src="imgs/article4-lime.png" /></li>
              </ul>

              <p class="ingred">nutritional information (1.5 oz serving)</p>
            </div>
          </div>
        </li>

        <li>
          <div class="fv-info3">
            <div class="fv-info-txt">
              <h5>explore the rum range</h5>
              <h4>coconut</h4>
              <p>
                Cocktailer rum이랑 코코넛 여름의 태양과 모래사장의 맛은 뭘 더 좋아하나요? 하얀 럼주와 진짜 코코넛 에센스가 완벽하게 어우러져 밖에 비가 와도
                열대천국으로 데려간다.
              </p>
            </div>
          </div>

          <div class="fv-wrap">
            <div class="rum bg3"></div>
            <div class="right">
              <p>
                코코넛만큼 신선함과 열대성을 순식간에 가져다주는 것은 없다. 바람이 강하고 적도에 가까운 따뜻한 제트 기류에서 정교하게 만들어진 칵테일을 확인할
                수 있고,
              </p>
              <p>코코넛 럼은 다양한 색상, 스타일 및 맛의 스펙트럼이 넓다.</p>
              <p>가벼운 맛과 깊은 맛 모두 존재하며,달콤하고 풍미도 다양합니다. 우리가 가장 좋아하는 코코넛 럼과 그것을 가장 잘 즐기는 방법을 확인하세요.</p>

              <ul class="fv-element">
                <!--lemon article과 같음-->
                <li><img src="imgs/article1.png" /></li>
                <li><img src="imgs/article2-lemon.png" /></li>
                <li><img src="imgs/article3-lemon.png" /></li>
                <li><img src="imgs/article4-lemon.png" /></li>
              </ul>

              <p class="ingred">nutritional information (1.5 oz serving)</p>
            </div>
          </div>
        </li>
      </ul>
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
