<!DOCTYPE html>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
				<a href="Home.jsp">Home</a>
				</li>
				<li>
					<a href="about.jsp">About</a>
				</li>
				<li><li class="selected">
					<a href="Login.jsp">LOGIN</a>				</li>
				<li>
					<a href="blog.jsp">Blog</a>
				</li>
				<li>
					<a href="contact.jsp">Contact</a>
				</li>
	  </ul>
		  <div>
		  <p>WELCOME</p>
		  </div>
</div>
	  </div>
	</div>

	<div class="body">
		<div>
		  <div>
		    <div>
              <div class="activities">
                <h2>PASSPORT AUTOMATION SYSTEM </h2>
                <div class="first">
                  <ul>
                    <li> <a href="Login.jsp">NEW LOGIN</a> </li>
                    <li> <a href="Registration.jsp">NEW REGISTRATION</a> </li>
                    <li> <a href="Apply.jsp">APPLY</a> </li>
                   
                    <li> <a href="CheckStatus.jsp">CHECK STATUS</a> </li>
                    <li> <a href="cpassword.jsp">CHANGE PASSWORD</a> </li>
                    <li> <a href="Renew.jsp">RENEW PASSPORT</a> </li>
                    <li> <a href="Complaint.jsp">COMPLAINT</a> </li>
                    <li> <a href="RENEWAL.jsp">ACCEPT/REJECTRENEWAL </a> </li>
                    <li> <a href="payment.jsp">PAYMENT </a> </li>
                    <li class="selected"> <a href="Replycomplaint.jsp">REPLAY COMPLAINT</a> </li>
                  
                    <li class="selected"> <a href="Logout.jsp">LOGOUT</a> </li>
                  </ul>
                </div>
                <div>
                  <h3></h3>
                  <form method="post" action="cpassword.jsp">
                  
                  <table><p align="center" class="style5"><strong>Change Password </strong></p>
  <p align="center"><span class="style7">
  <td>Old Password</span></td>
 <td><input type="text" name="t1"></td>
 </tr>
  </p>
  <tr>
  <p align="center" class="style2"><em><td>New Password</td></em> 
    <td><input type="text" name="t2"></td>
  </p></tr>
  <tr>
  <p align="center" class="style2"><em><td>Confirm Password</td></em>
    <td><input type="text" name="t3"></td>
  </p>
  <tr>
  <tr>
    
      <td><input type="submit" value="Change Password"></td>
      </tr></table></form>
        <%
try
{
String password=request.getParameter("t1");
String newpassword=request.getParameter("t2");
String confirmpassword=request.getParameter("t3");
if(password!=null && newpassword!=null&&confirmpassword!=null)
{
	
	Class.forName("org.postgresql.Driver");
	//System.out.println("driver load");
Connection con=DriverManager.getConnection("jdbc:postgresql://localhost/passport","postgres","root");
Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from CustLogin where password='"+password+"'");
	if(rs.next())
	{
		int k =st.executeUpdate("update CustLogin values set password='"+confirmpassword+"'");
		if(k>=1)
		{
			JOptionPane.showMessageDialog(null,"passwordchange successfully");
		}
	}

		
		else
		{
			JOptionPane.showMessageDialog(null,"Invalid ");
		}
}
		 
	}catch(Exception e)
{
		out.println("error="+e);
}
%>
</form>
       
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