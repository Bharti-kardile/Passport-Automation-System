<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>PASSPORT AUTOMATION SYSTEM</title>
	<link rel="stylesheet" href="css/style.css" type="text/css">
</head>
<body>
	<div class="header">
		<div>
		  <a href="Home.jsp" id="logo"><img src="images/LOGO.jpg" alt="logo" width="164" height="174"></a>
<ul>
				<li>
					<a href="Home.jsp"><span></span>HOME</a>				</li>
				<li>
					<a href="about.jsp"><span></span>ABOUT</a>				</li>
				<li>
					<a href="Login.jSP"><span></span>LOGIN</a>				</li>
				<li><a href="blog.jsp">BLOG</a></li>
				<li>
				<li class="selected">
					<a href="contact.jsp"><span></span>CONTACT</a>				</li>
		  </ul>
			<div>
				<p>WELCOME</p>
			</div>
	  </div>
	</div>
	<div class="body">
		<div class="contact">
			<div>
				<div>
					<div class="contact">
					<h2>PASSPORT HEAD OFFICE </h2>
					 <div class="address">
							<span><span>A</span>ddress:</span>
							<p>MSFC BUILDING,270 BHAMBURDA,S.B.MARGOPP,SYMBIOSIS COLLEGE,GOKALENAGAR,PUNE,MAHARASHTRA 411016 </p>
							<span><span>P</span>hone <span>N</span>umber:</span>
							<p>020-2567-5421</p>
							<span><span>F</span>ax <span>N</span>umber:</span>
							<p>
								1-800-222-2222
							</p>
						</div>
						<h3><span>F</span>or <span>A</span>ny <span>I</span>nquiries, <span>P</span>lease <span>F</span>ill <span>o</span>ut <span>T</span>he <span>F</span>orm <span>B</span>elow.</h3>
					  
						<form action="Home.jsp">
							<table>
								<tr>
									<td><label for="name"><span>N</span>ame:</label></td>
									<td><input type="text" id="name"></td>
								</tr>
								<tr>
									<td><label for="email"><span>E</span>mail <span>A</span>ddress:</label></td>
									<td><input type="text" id="email"></td>
								</tr>
								<tr>
									<td><label for="subject"><span>S</span>ubject:</label></td>
									<td><input type="text" id="subject"></td>
								</tr>
								<tr>
									<td><label for="message"><span>M</span>essage:</label></td>
									<td><textarea name="message" id="message" cols="30" rows="10"></textarea></td>
								</tr>
							</table>
							<input type="submit" value="Send" id="submit">
						</form>
				  </div>
				</div>
			</div>
		</div>
	</div>
	<div class="footer">
		<div>
			<div>
				<h3>NEWSLETTER</h3>
				<p>NEED A HELP PLEASE CONTACT US.....................................................................! </p>
				<form action="Home.jsp">
					<input type="text" value="Email Address" onBlur="this.value=!this.value?'Email Address':this.value;" onFocus="this.select()" onClick="this.value='';">
					<input type="submit" value="Get">
				</form>
			</div>
			<div>
				<h4>LATEST BLOG</h4>
				<ul>
					<li>
						<p>
							<a href="blog.jsp">New -passport-rules in india</a><a href="blog.jsp">.</a>						</p>
						31/01/2019</li>
					<li>
						<p>
							<a href="blog.jsp">Document need to apply passport </a> </p>
						<p><a href="blog.jsp"></a></p>
						<p><a href="blog.jsp"></a>						</p>
						31/01/2019</li>
					<li>
						<p>
							<a href="blog.jsp">Ministry of external affairs seeks fresh bids for passport seva</a>						</p>
						24/8/2018</li>
				</ul>
			</div>
			<div class="connect">
				<h4>FOLLOW US:</h4>
				<a href="http://passportautomationsystem@2019.com/go/facebook/" class="facebook">Facebook</a> <a href="http://freewebsitetemplates.com/go/twitter/" class="twitter">Twitter</a> <a href="http://freewebsitetemplates.com/go/googleplus/" class="google">Google+</a>
			</div>
		</div>
		<div>
			<p>PASSPORT SYSTEM &#169; 2019 | All Rights Reserved			</p>
		</div>
	</div>
</body>
</html>