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
	function showLogIn(){
    	document.getElementById('LIModule').style.display="block";
    	document.getElementById('CAModule').style.display="none";
	}
	function hideLogIn(){
	    document.getElementById('LIModule').style.display="none";
	}
	function showCreateAccount() {
	    document.getElementById('CAModule').style.display="block";
	    document.getElementById('LIModule').style.display="none";
	}
	function hideCreateAccount() {
	    document.getElementById('CAModule').style.display="none";
	}
	function showPassword() {
        let obj = document.getElementById('CApassword');
        obj.type = "text";
    }
	function showCPassword() {
        let obj = document.getElementById('CAcpassword');
        obj.type = "text";
    }
	function hidePassword() {
        let obj = document.getElementById('CApassword');
        obj.type = "password";
    }
	function hideCPassword() {
        let obj = document.getElementById('CAcpassword');
        obj.type = "password";
    }
	function checkCPassword(){
		let obj1 = document.getElementById('CAcpassword').value;
		let obj2 = document.getElementById('CApassword').value;
		let obj3 = document.getElementById('CPasswordDiff');
		if (obj1 !== obj2){
			obj3.style.display = "block";
		} else {
			obj3.style.display = "none";
		}
	}
	function initFunction(){
        var error = "<%= request.getParameter("error") %>";
        if (error == "Incorrect username or password") {
            document.getElementById('LIModule').style.display = 'block';
        }
    }
</script>
</head>
<body onload="initFunction()">
	
	<!-- HEADER PRE-LOGIN -->
    <div class="header-flex">
        <div class="header-flex-left">
            <p class="headerFB1"><img src="../images/logo-mini.png" alt="Logo"/></p>
            <p class="headerFB2"><img src="../images/search-bar.png" alt="Search"/></p>
            <p class="headerFB3"><input class="hiddenSearch" type="text" placeholder="Search..." /></p>
        </div>
        <div class="header-flex-right" >
            <p class="headerFB4A"><button onclick="showLogIn()">Log In</button></p>
            <p class="headerFB4A"><button onclick="showCreateAccount()">Create Account</button></p>
        </div>
    </div>
    
    <!-- CA AND LOGIN MODULES WILL BE HIDDEN UNTIL NECESSARY -->
    <div class="CAModuleCN" id='CAModule'>
        <div class="closeWindowBar"><img src="../images/closeModule.png" alt="closeModule" onclick="hideCreateAccount()" /></div>
        <div class='CAModule'>
            <div class='CAHeader'>CREATE ACCOUNT</div>
            <div class='CAInputs'>
            <form action="${pageContext.request.contextPath}/createAccountServlet" method="post">
                <table>
                    <tr>
                        <td class="CACol1">Username: </td>
                        <td class="CACol2"><input type='text'></input></td>
                    </tr>
                    <tr>
                        <td class="CACol1">Password: </td>
                        <td class="CACol2"><input type='password' id='CApassword'></input></td>
                        <td class="CACol3"><img src="../images/view-password.png" alt="View Password" onmouseenter="showPassword()" onmouseleave="hidePassword()"></img></td>
                    </tr>
                    <tr>
                        <td class="CACol1">Confirm Password: </td>
                        <td class="CACol2"><input type='password' id="CAcpassword" onchange="checkCPassword()"></input></td>
                        <td class="CACol3"><img src="../images/view-password.png" alt="View Password" onmouseenter="showCPassword()" onmouseleave="hideCPassword()"></img></td>
                    </tr>
                    <tr>
                        <td><label id="CPasswordDiff">Passwords do not match!</label></td>
                        <td class="CACol2FB">
                            <td class="CACol2Left"></td>
                            <td class="CACol2Right">Create Account</td>
                        </td>
                    </tr>
                </table>
                </form>
                
                <div class="hORh">
                    <div class="hORh1"><hr/></div>
                    <p class="hORh2">
                        OR
                    </p>
                    <div class="hORh1"><hr/></div>
                </div>
                CREATE AN ACCOUNT USING
                <div class="TandC">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
                    Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit 
                    in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt 
                    mollit anim id est laborum.
                </div>
            </div>
        </div>
    </div>
    
    <div class="LIModuleCN" id='LIModule'>
        <div class="closeWindowBar"><img src="../images/closeModule.png" alt="closeModule" onclick="hideLogIn()"></img></div>
        <div class='LIModule'>
            <div class='LIHeader'>LOG IN</div>
            <div class='LIInputs'>
            <form action="${pageContext.request.contextPath}/loginServlet" method="post">
                <table>
                    <tr>
                        <td class="LICol1">Username: </td>
                        <td class="LICol2"><input type='text' name='username'></input></td>
                    </tr>
                    <tr>
                        <td class="LICol1">Password: </td>
                        <td class="LICol2"><input type='password' id='LIpassword' name='password'></input></td>
                    </tr>
                    <tr>
                        <td>${param.error}</td>
                        <td class="LICol2FB">
                            <td class="LICol2Left">Forgot Password?</td>
                            <td class="LICol2Right"><button type="submit">Login</button></td>
                        </td>
                    </tr>
                </table>
            </form>
                <div class="hORh">
                    <div class="hORh1"><hr/></div>
                    <p class="hORh2">
                        OR
                    </p>
                    <div class="hORh1"><hr/></div>
                </div>
                LOG IN TO YOUR ACCOUNT USING
                <div class="TandC">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
                    Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit 
                    in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt 
                    mollit anim id est laborum.
                </div>
            </div>
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