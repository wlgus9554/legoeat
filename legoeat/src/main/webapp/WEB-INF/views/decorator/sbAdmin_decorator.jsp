<!-- sitemesh 사용을 위한 설정 파일 -->
<!-- 작성자 : 이영환 -->
<!-- 작성일 : 2017-01-12 -->
<!-- 최종수정일 : 2024-09-10 -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><decorator:title /></title>

    <!-- Fonts and Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap" rel="stylesheet">
    <link href="/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">

    <!-- Custom Styles -->
    <link href="/css/custom-styles.css" rel="stylesheet">
</head>

<body>
    <div class="wrapper">
        <!-- Header -->
        <header class="header">
            <div class="logo">LegoEat</div>
            <nav class="nav">
                <ul class="nav-list">
                    <li><a href="/" class="nav-link">홈</a></li>
                    <li><a href="/about" class="nav-link">소개</a></li>
                    <li><a href="/contact" class="nav-link">문의</a></li>
                </ul>
            </nav>
        </header>

        <!-- Sidebar -->
        <c:if test="${ empty login }">
	        <div class="sidebar">
	        <!-- 회원 프로필 -->
	            <ul class="menu-list">
	                <li class="nav-item"><a href="/member/loginForm.do" class="menu-link">로그인</a></li>
	            </ul>
	        </div>
        </c:if>
        <c:if test="${ !empty login }">
	        <div class="sidebar">
    <!-- 프로필 섹션 -->
			    <div class="profile">
			        <img src="/img/박지현.jpg" alt="프로필 사진">
			    </div>
				
				    <!-- 메뉴 리스트 -->
			    <ul class="menu-list">
			        <li class="menu-item"><a href="/dashboard" class="menu-link">대시보드</a></li>
			        <li class="menu-item"><a href="/profile" class="menu-link">프로필</a></li>
			        <li class="menu-item"><a href="/settings" class="menu-link">설정</a></li>
			        <li class="menu-item"><a href="/member/logout.do" class="menu-link">로그아웃</a></li>
			    </ul>
			</div>
        </c:if>

        <!-- Sidebar Toggle -->
        <div class="sidebar-toggle">&gt;</div>

        <!-- Main Content -->
        <main class="content">
            <!-- 이 부분에 JSP가 렌더링됩니다 -->
            <decorator:body />
        </main>

        <!-- Footer -->
        <footer class="footer">
            <p>&copy; 2024 LegoEat. 모든 권리 보유.</p>
        </footer>
    </div>

    <!-- Scripts -->
    <script src="/vendor/jquery/jquery.min.js"></script>
    <script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            const sidebar = document.querySelector(".sidebar");
            const toggleButton = document.querySelector(".sidebar-toggle");
            const content = document.querySelector(".content");

            toggleButton.addEventListener("click", function () {
                sidebar.classList.toggle("closed");
                content.classList.toggle("sidebar-closed");

                toggleButton.innerHTML = sidebar.classList.contains("closed") ? "&lt;" : "&gt;";
            });
        });
    </script>
</body>

</html>

