<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>로그인</title>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap" rel="stylesheet">
    <style>
        /* 전체 화면 배경 */
        body {
            margin: 0;
            padding: 0;
            font-family: 'Noto Sans KR', sans-serif;
            background-color: #f5f7fa;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        /* 카드 스타일 */
        .card {
            background: #ffffff;
            width: 100%;
            max-width: 320px; /* 최대 너비를 줄임 */
            padding: 20px; /* 패딩을 조정 */
            border-radius: 8px; /* 조금 더 작은 곡선으로 */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        /* 헤더 스타일 */
        .card h3 {
            font-size: 1.5rem; /* 제목 크기 조정 */
            color: #333;
            margin-bottom: 15px;
            font-weight: bold;
        }

        /* 입력 필드 스타일 */
        .form-group {
            margin-bottom: 15px;
            text-align: left;
        }

        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 6px;
            color: #555;
        }

        .form-control {
            width: 100%;
            padding: 8px; /* 입력 필드 높이 조정 */
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 0.9rem; /* 글꼴 크기 조정 */
            transition: border-color 0.3s ease, box-shadow 0.3s ease;
        }

        .form-control:focus {
            border-color: #4CAF50;
            box-shadow: 0 0 5px rgba(76, 175, 80, 0.5);
            outline: none;
        }

        /* 버튼 스타일 */
        .btn {
            width: 100%;
            padding: 10px;
            background: #4CAF50;
            color: #ffffff;
            font-size: 0.9rem;
            font-weight: bold;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background 0.3s ease, transform 0.2s ease;
        }

        .btn:hover {
            background: #388E3C;
            transform: scale(1.05);
        }

        .btn:active {
            background: #2E7D32;
        }

        /* 비밀번호 찾기 링크 스타일 */
        .forgot-password {
            margin-top: 10px;
            font-size: 0.8rem;
        }

        .forgot-password a {
            text-decoration: none;
            color: #4CAF50;
        }

        .forgot-password a:hover {
            text-decoration: underline;
            color: #388E3C;
        }
    </style>
</head>
<body>
    <div class="card">
        <h3>로그인</h3>
        <form action="login.do" method="post">
            <div class="form-group">
                <label for="email">ID</label>
                <input type="text" class="form-control" name="email" placeholder="ID 입력" required>
            </div>
            <div class="form-group">
                <label for="pw">Password</label>
                <input type="password" class="form-control" name="pw" placeholder="비밀번호 입력" required>
            </div>
            <button type="submit" class="btn">로그인</button>
            <div class="forgot-password">
                <a href="/forgot-password.do">비밀번호를 잊으셨나요?</a>
            </div>
        </form>
    </div>
</body>
</html>
