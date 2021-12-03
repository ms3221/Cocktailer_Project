<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>OUR RUMS</title>
    <link rel="stylesheet" href="./css/common.css" />
    <link rel="stylesheet" href="./css/reset.css" />
    <link rel="stylesheet" href="./css/sub1.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link rel="shortcut icon" href="imgs/favicon.ico" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="./js/sub1.js"></script>
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
        <li><a href="#">our rums</a></li>
        <li><a href="sub2.jsp">flavors range</a></li>
        <li><a href="sub3.jsp">experiences</a></li>
        <li>
          <a href="#"><i class="fab fa-facebook"></i></a>
          <a href="#"><i class="fab fa-twitter"></i></a>
          <a href="#"><i class="fab fa-instagram"></i></a>
        </li>
      </ul>
    </nav>

    <div class="banner subTitleBox">
      <div class="rotate">
        <h2 class="subTitle">our rums</h2>
      </div>
      <div class="first">
        <h3 class="h3_tbup">태양이 스며든 듯한 <span>럼</span>을 원하는 스타일로 즐기기</h3>
        <h3 class="h3_sm">태양이 스며든 듯한 <span>럼</span>을</h3>
        <h3 class="h3_sm">원하는 스타일로 즐기기</h3>
        <p>기억에 남는 칵테일이 있으신가요? 무슨 럼인지 향기와 맛을 더듬어 가면서 찾아보세요.</p>
      </div>
    </div>

    <section class="itemFilter">
      <h4><span>pick</span> your taste</h4>
      <p class="h4_p">원하는 색과 향으로 나만의 칵테일을 완성하세요.</p>

      <div class="filterBox">
        <div class="filterBoxInner">
          <ul class="pickingBox">
            <li>
              <input type="checkbox" name="taste" id="noseBtn" />
              <label for="noseBtn">nose</label>
              <div class="blindNose"></div>
              <div class="blind2"></div>
              <div class="blind3"></div>
              <p class="pickingBoxDesc">럼 가까이에서 코로 숨을 들이마셨을 때 나는 향의 느낌</p>
              <ul class="submenu submenuNose">
                <input type="checkbox" id="n_fruit" name="pick_info" value="n_fruit" />
                <label for="n_fruit">fruit</label>

                <input type="checkbox" id="n_almonds" name="pick_info" value="n_almonds" />
                <label for="n_almonds">almonds</label>

                <input type="checkbox" id="n_banana-leaf" name="pick_info" value="n_banana-leaf" />
                <label for="n_banana-leaf">banana-leaf</label>

                <input type="checkbox" id="n_butter" name="pick_info" value="n_butter" />
                <label for="n_butter">butter</label>

                <input type="checkbox" id="n_cinnamon" name="pick_info" value="n_cinnamon" />
                <label for="n_cinnamon">cinnamon</label>

                <input type="checkbox" id="n_dried-apricot" name="pick_info" value="n_dried-apricot" />
                <label for="n_dried-apricot">dried-apricot</label>

                <input type="checkbox" id="n_nutty" name="pick_info" value="n_nutty" />
                <label for="n_nutty">nutty</label>

                <input type="checkbox" id="n_peach" name="pick_info" value="n_peach" />
                <label for="n_peach">peach</label>

                <input type="checkbox" id="n_toasted" name="pick_info" value="n_toasted" />
                <label for="n_toasted">toasted</label>

                <input type="checkbox" id="n_vanilla" name="pick_info" value="n_vanilla" />
                <label for="n_vanilla">vanilla</label>
              </ul>
            </li>
            <li>
              <input type="checkbox" name="taste" id="palateBtn" />
              <label for="palateBtn">palate</label>
              <div class="blindPalate"></div>
              <div class="blind2"></div>
              <div class="blind3"></div>
              <p class="pickingBoxDesc">럼을 입 안에 머금었을 때 혀로 느껴지는 맛의 느낌</p>
              <ul class="submenuPalate submenu">
                <input type="checkbox" id="p_banana" name="pick_info" value="p_banana" />
                <label for="p_banana">banana</label>

                <input type="checkbox" id="p_chocolate" name="pick_info" value="p_chocolatea" />
                <label for="p_chocolate">chocolate</label>

                <input type="checkbox" id="p_clove" name="pick_info" value="p_clove" />
                <label for="p_clove">clove</label>

                <input type="checkbox" id="p_creamy" name="pick_info" value="p_creamy" />
                <label for="p_creamy">creamy</label>

                <input type="checkbox" id="p_dark-honey" name="pick_info" value="p_dark-honey" />
                <label for="p_dark-honey">dark-honey</label>

                <input type="checkbox" id="p_medium-bodied" name="pick_info" value="p_medium-bodied" />
                <label for="p_medium-bodied">medium-bodied</label>

                <input type="checkbox" id="p_oak" name="pick_info" value="p_oak" />
                <label for="p_oak">oak</label>

                <input type="checkbox" id="p_pear" name="pick_info" value="p_pear" />
                <label for="p_pear">pear</label>

                <input type="checkbox" id="p_raisin" name="pick_info" value="p_raisin" />
                <label for="p_raisin">raisin</label>

                <input type="checkbox" id="p_rich" name="pick_info" value="p_rich" />
                <label for="p_rich">rich</label>

                <input type="checkbox" id="p_smooth" name="pick_info" value="p_smooth" />
                <label for="p_smooth">smooth</label>

                <input type="checkbox" id="p_spiced" name="pick_info" value="p_spiced" />
                <label for="p_spiced">spiced</label>

                <input type="checkbox" id="p_sweet" name="pick_info" value="p_sweet" />
                <label for="p_sweet">sweet</label>

                <input type="checkbox" id="p_toasted" name="pick_info" value="p_toasted" />
                <label for="p_toasted">toasted</label>

                <input type="checkbox" id="p_tropical" name="pick_info" value="p_tropical" />
                <label for="p_tropical">tropical</label>
              </ul>
            </li>
            <li>
              <input type="checkbox" name="taste" id="finishBtn" />
              <label for="finishBtn">finish</label>
              <div class="blindFinish"></div>
              <div class="blind2"></div>
              <div class="blind3"></div>
              <p class="pickingBoxDesc">럼을 삼킨 후 숨을 내쉴 때 코와 입 안에서 나는 향의 느낌</p>
              <ul class="submenuFinish submenu">
                <input type="checkbox" id="f_black-pepper" name="pick_info" value="f_black-pepper" />
                <label for="f_black-pepper">black-pepper</label>

                <input type="checkbox" id="f_cinnamon" name="pick_info" value="f_cinnamon" />
                <label for="f_cinnamon">cinnamon</label>

                <input type="checkbox" id="f_clean" name="pick_info" value="f_clean" />
                <label for="f_clean">clean</label>

                <input type="checkbox" id="f_dry" name="pick_info" value="f_dry" />
                <label for="f_dry">dry</label>

                <input type="checkbox" id="f_expansive" name="pick_info" value="f_expansive" />
                <label for="f_expansive">expansive</label>

                <input type="checkbox" id="f_fudge" name="pick_info" value="f_fudge" />
                <label for="f_fudge">fudge</label>

                <input type="checkbox" id="f_molasses" name="pick_info" value="f_molasses" />
                <label for="f_molasses">molasses</label>

                <input type="checkbox" id="f_oak" name="pick_info" value="f_oak" />
                <label for="f_oak">oak</label>

                <input type="checkbox" id="f_pineapple" name="pick_info" value="f_pineapple" />
                <label for="f_pineapple">pineapple</label>

                <input type="checkbox" id="f_raisin" name="pick_info" value="f_raisin" />
                <label for="f_raisin">raisin</label>

                <input type="checkbox" id="f_smoky" name="pick_info" value="f_smoky" />
                <label for="f_smoky">smoky</label>

                <input type="checkbox" id="f_sweet" name="pick_info" value="f_sweet" />
                <label for="f_sweet">sweet</label>

                <input type="checkbox" id="f_toffee" name="pick_info" value="f_toffee" />
                <label for="f_toffee">toffee</label>

                <input type="checkbox" id="f_well-rounded" name="pick_info" value="f_well-rounded" />
                <label for="f_well-rounded">well-rounded</label>
              </ul>
            </li>
            <li>
              <input type="checkbox" name="taste" id="typeBtn" />
              <label for="typeBtn">type</label>
              <div class="blindType"></div>
              <div class="blind3"></div>
              <p class="pickingBoxDesc">럼의 종류에 따른 구분</p>
              <ul class="submenuType submenu">
                <input type="checkbox" id="t_white" name="pick_info" value="t_white" />
                <label for="t_white">white</label>

                <input type="checkbox" id="t_dark" name="pick_info" value="t_dark" />
                <label for="t_dark">dark</label>

                <input type="checkbox" id="t_gold" name="pick_info" value="t_gold" />
                <label for="t_gold">gold</label>

                <input type="checkbox" id="t_dark-gold" name="pick_info" value="t_dark-gold" />
                <label for="t_dark-gold">dark-gold</label>

                <input type="checkbox" id="t_spiced" name="pick_info" value="t_spiced" />
                <label for="t_spiced">spiced</label>

                <input type="checkbox" id="t_blended" name="pick_info" value="t_blended" />
                <label for="t_blended">blended</label>
              </ul>
            </li>
          </ul>
          <!-- 좌측 서브메뉴 끝 -->

          <!-- pickedBox 시작, 제2서브메뉴 -->
          <ul class="pickingBox r-pickingBox">
            <li>
              <input type="checkbox" id="nose2Btn" />
              <label for="nose2Btn">nose</label>
              <ul class="pickedBox">
                <li>
                  <label for="n_fruit" class="n_fruit">fruit</label>

                  <label for="n_almonds" class="n_almonds">almonds</label>

                  <label for="n_banana-leaf" class="n_banana-leaf">banana-leaf</label>

                  <label for="n_butter" class="n_butter">butter</label>

                  <label for="n_cinnamon" class="n_cinnamon">cinnamon</label>

                  <label for="n_dried-apricot" class="n_dried-apricot">dried-apricot</label>

                  <label for="n_nutty" class="n_nutty">nutty</label>

                  <label for="n_peach" class="n_peach">peach</label>

                  <label for="n_toasted" class="n_toasted">toasted</label>

                  <label for="n_vanilla" class="n_vanilla">vanilla</label>
                </li>
                <!-- 좌우화살표,쉐이딩박스 -->
                <div class="shading s-left-floor1"></div>
                <div class="shading s-right-floor1"></div>
                <div class="chevron Lchevron toLeft1"></div>
                <div class="chevron Rchevron toRight1"></div>
              </ul>
            </li>
            <li>
              <input type="checkbox" id="palate2Btn" />
              <label for="palate2Btn">palate</label>
              <ul class="pickedBox">
                <li>
                  <label for="p_banana" class="p_banana">banana</label>

                  <label for="p_chocolate" class="p_chocolatea">chocolate</label>

                  <label for="p_clove" class="p_clove">clove</label>

                  <label for="p_creamy" class="p_creamy">creamy</label>

                  <label for="p_dark-honey" class="p_dark-honey">dark-honey</label>

                  <label for="p_medium-bodied" class="p_medium-bodied">medium-bodied</label>

                  <label for="p_oak" class="p_oak">oak</label>

                  <label for="p_pear" class="p_pear">pear</label>

                  <label for="p_raisin" class="p_raisin">raisin</label>

                  <label for="p_rich" class="p_rich">rich</label>

                  <label for="p_smooth" class="p_smooth">smooth</label>

                  <label for="p_spiced" class="p_spiced">spiced</label>

                  <label for="p_sweet" class="p_sweet">sweet</label>

                  <label for="p_toasted" class="p_toasted">toasted</label>

                  <label for="p_tropical" class="p_tropical">tropical</label>
                </li>
                <!-- 좌우화살표,쉐이딩박스스 -->
                <div class="shading s-left-floor2"></div>
                <div class="shading s-right-floor2"></div>
                <div class="chevron Lchevron toLeft2"></div>
                <div class="chevron Rchevron toRight2"></div>
              </ul>
            </li>
            <li>
              <input type="checkbox" id="finish2Btn" />
              <label for="finish2Btn">finish</label>
              <ul class="pickedBox">
                <li>
                  <label for="f_black-pepper" class="f_black-pepper">black-pepper</label>

                  <label for="f_cinnamon" class="f_cinnamon">cinnamon</label>

                  <label for="f_clean" class="f_clean">clean</label>

                  <label for="f_dry" class="f_dry">dry</label>

                  <label for="f_expansive" class="f_expansive">expansive</label>

                  <label for="f_fudge" class="f_fudge">fudge</label>

                  <label for="f_molasses" class="f_molasses">molasses</label>

                  <label for="f_oak" class="f_oak">oak</label>

                  <label for="f_pineapple" class="f_pineapple">pineapple</label>

                  <label for="f_raisin" class="f_raisin">raisin</label>

                  <label for="f_smoky" class="f_smoky">smoky</label>

                  <label for="f_sweet" class="f_sweet">sweet</label>

                  <label for="f_toffee" class="f_toffee">toffee</label>

                  <label for="f_well-rounded" class="f_well-rounded">well-rounded</label>
                </li>
                <!-- 좌우화살표,쉐이딩박스 -->
                <div class="shading s-left-floor3"></div>
                <div class="shading s-right-floor3"></div>
                <div class="chevron Lchevron toLeft3"></div>
                <div class="chevron Rchevron toRight3"></div>
              </ul>
            </li>
            <li>
              <input type="checkbox" id="type2Btn" />
              <label for="type2Btn">type</label>
              <ul class="pickedBox">
                <li>
                  <label for="t_white" class="t_white">white</label>

                  <label for="t_dark" class="t_dark">dark</label>

                  <label for="t_gold" class="t_gold">gold</label>

                  <label for="t_dark-gold" class="t_dark-gold">dark-gold</label>

                  <label for="t_spiced" class="t_spiced">spiced</label>

                  <label for="t_blended" class="t_blended">blended</label>
                </li>
                <!-- 좌우화살표,쉐이딩박스 -->
                <div class="shading s-left-floor4"></div>
                <div class="shading s-right-floor4"></div>
                <div class="chevron Lchevron toLeft4"></div>
                <div class="chevron Rchevron toRight4"></div>
              </ul>
            </li>
          </ul>
          <!-- <div class="clear"></div> -->
          <button type="button" id="searchBtn">search</button>
        </div>
      </div>
    </section>

    <section class="itemShow">
      <div class="carouselBox">
        <div class="itemBox n_almonds n_fruit p_smooth p_creamy f_dry f_clean t_white">
          <img class="itemImg" src="./imgs/filterItem/1CARTA_BLANCA.jpg" alt="blanca" />
          <h5>carta blanca</h5>
          <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dicta</p>
          <a>자세히 보기</a>
        </div>
        <div class="itemBox n_vanilla n_cinnamon p_sweet p_spiced f_black-pepper f_fudge t_spiced">
          <img class="itemImg" src="./imgs/filterItem/2SPICED.jpg" alt="spiced" />
          <h5>spiced</h5>
          <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dicta</p>
          <a>자세히 보기</a>
        </div>
        <div class="itemBox n_nutty n_butter p_rich p_toasted f_dry f_sweet t_gold">
          <img class="itemImg" src="./imgs/filterItem/3CARTA ORO.jpg" alt="oro" />
          <h5>carta oro</h5>
          <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dicta</p>
          <a>자세히 보기</a>
        </div>
        <div class="itemBox n_toasted n_nutty p_tropical p_medium-bodied f_smoky f_molasses t_dark">
          <img class="itemImg" src="./imgs/filterItem/4CARTA NEGRA.jpg" alt="negra" />
          <h5>carta negra</h5>
          <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dicta</p>
          <a>자세히 보기</a>
        </div>
        <div class="itemBox n_vanilla n_cinnamon p_dark-honey p_clove f_toffee f_oak t_gold">
          <img class="itemImg" src="./imgs/filterItem/5ANEJO CUATRO.jpg" alt="cuatro" />
          <h5>AÑEJO CUATRO</h5>
          <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dicta</p>
          <a>자세히 보기</a>
        </div>
        <div class="itemBox n_dried-apricot n_banana-leaf p_oak p_spiced f_expansive f_well-rounded t_dark">
          <img class="itemImg" src="./imgs/filterItem/6RESERVA OCHO.jpg" alt="ocho" />
          <h5>RESERVA OCHO</h5>
          <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dicta</p>
          <a>자세히 보기</a>
        </div>
        <div class="itemBox n_almonds n_peach p_banana p_pear p_vanilla f_pineapple f_cinnamon t_dark-gold">
          <img class="itemImg" src="./imgs/filterItem/7RESERVA DIEZ.jpg" alt="diez" />
          <h5>GRAN RESERVA DIEZ</h5>
          <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dicta</p>
          <a>자세히 보기</a>
        </div>
        <div class="itemBox n_almonds n_vanilla p_raisin p_chocolate f_oak f_raisin t_blended">
          <img class="itemImg" src="./imgs/filterItem/8GRAN RESERVA LIMITADA.jpg" alt="limitada" />
          <h5>GRAN RESERVA LIMITADA</h5>
          <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dicta</p>
          <a>자세히 보기</a>
        </div>
      </div>
      <img class="Bchevron toLeft" src="./imgs/toLeft.png" alt="left" />
      <img class="Bchevron toRight" src="./imgs/toRight.png" alt="right" />
      <div class="clear"></div>
    </section>

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
