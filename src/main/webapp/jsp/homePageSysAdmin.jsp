<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Auction321</title>
<link rel="stylesheet" type="text/css" href="../css/header.css">
<link rel="stylesheet" type="text/css" href="../css/footer.css">
<script type="text/javascript">
 	//CODE OVER HERE
</script>
</head>
<body>
	
	<!-- HEADER POST-LOGIN -->
    <div class="header-flex">
        <div class="header-flex-left">
            <p class="headerFB1"><img src="../images/logo-mini.png" alt="Logo"/></p>
            <p class="headerFB2"><img src="../images/search-bar.png" alt="Search"/></p>
            <p class="headerFB3"><input class="hiddenSearch" type="text" placeholder="Search..." /></p>
        </div>
        <div class="header-flex-right" >
            <form action="${pageContext.request.contextPath}/logoutServlet" method="get">
    			<p class="headerFB4A"><button type="submit">Log Out</button></p>
			</form>
        </div>
    </div>
    
    
    
    <!-- FOOTER -->
    <div class="footer">
        <img src="../images/logo-mini.png" alt="logo" />
        <div class="footer-flex">
            <div class="footer-flex-1">
                <p class="footer-flex-rows">col 1 row 1</p>
                <p class="footer-flex-rows">col 1 row 2</p>
                <p class="footer-flex-rows">col 1 row 3</p>
                <p class="footer-flex-rows">col 1 row 4</p>
            </div>
            <div class="footer-flex-2">
                <p class="footer-flex-rows">col 2 row 1</p>
                <p class="footer-flex-rows">col 2 row 2</p>
                <p class="footer-flex-rows">col 2 row 3</p>
                <p class="footer-flex-rows">col 2 row 4</p>
            </div>
            <div class="footer-flex-3">
                <p class="footer-flex-rows">col 3 row 1</p>
                <p class="footer-flex-rows">col 3 row 2</p>
                <p class="footer-flex-rows">col 3 row 3</p>
                <p class="footer-flex-rows">col 3 row 4</p>
            </div>
            <div class="footer-flex-4">
                <p class="footer-flex-rows">col 4 row 1</p>
                <p class="footer-flex-rows">col 4 row 2</p>
                <p class="footer-flex-rows">col 4 row 3</p>
                <p class="footer-flex-rows">col 4 row 4</p>
            </div>
        </div>
        <p class="footerbottomline">COPYRIGHT AS OF 2024</p>
    </div>
</body>
</html>