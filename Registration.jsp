<!DOCTYPE html>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<html>
<head>
	<meta charset="UTF-8">
	<title>PASSPORT AUTOMATION SYSTEM</title>
	<link rel="stylesheet" href="css/style.css" type="text/css">
</head>
<body>
	<div class="header">
		<div>
		  <a href="Home.jsp" id="logo"><img src="LOGO.jpg" alt="logo" width="164" height="174"></a>
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
                  <p>Name:</p>
                  <form method="post" action="Registration.jsp">
                  <table align='center'>
                    <tr><td>Title:</td>
                    <td><select name="select2"><option>mr</option>
                    <option>ms</option> </select></td>
                   </tr>
                   <p></p>
                   <tr>
                    <td>Firstname:</td>
                      <td><input type="text" name="t1"> </td>
                    </tr>
                    <p>  </p>
                    <tr>
                    <td>Middlename:</td>
                      <td><input type="text" name="t2"></td>
                    </tr>
                    
                    <tr>
                    <td>Surname:</td>
                      <td><input type="text" name="t3"></td>
                    </tr>
                  <tr><td><p>Date of Birth:</p></td>
                  <td><input type="date" name="t4"></td>
                  </tr>
                  <tr>
                  <td><p>Gender:</p></td>
                  
     <td><input name="t5" type="radio" value="male">
                      Male
                    
                    <input name="t5" type="radio" value="female">
                      female</td>
                      </tr>
                      <tr>
                      <td>
                    Email id:</td>
                       <td> <input type="text" name="t6"></td>
                    </tr>
                    <tr>
                   <td> <p>Mobile no:</p></td>
                      <td><input type="text" name="t7"></td>
                    </tr>
                    <tr>
                    <td>Blood group:</td>
                      <td><select name="select"><option>A+</option><option>B+</option><option>AB+</option><option>O+</option>
                     <option>A-</option><option>B-</option><option>AB-</option><option>O-</option>
                      </select></td></tr>
               <tr>
                      <td>Enter password:</td>
                      <td><input type="text" name="t8"></td>
                      </tr>             
                      <tr>
                        <td>Retype password:
                    <td><input type="text" name="t9"></td>
                    </tr>
                    <tr>
                    <td><input type="submit" name="Submit" value="Submit"></td></tr>
                    </table>
                    <%
try
{
String title=request.getParameter("select");
String fname=request.getParameter("t1");
String mname=request.getParameter("t2");
String lname=request.getParameter("t3");
String dob=request.getParameter("t4");
String gender=request.getParameter("t5");
String emailid=request.getParameter("t6");
String  phoneno=request.getParameter("t7");
String bloodgroup=request.getParameter("select");
String password=request.getParameter("t8");
String repassword=request.getParameter("t9");
if(title!=null && fname!=null&&mname!=null && lname!=null&&dob!=null && gender!=null&&emailid!=null && phoneno!=null&&bloodgroup!=null && password!=null&&repassword!=null)
{
	
	Class.forName("org.postgresql.Driver");
	System.out.println("driver load");
Connection con=DriverManager.getConnection("jdbc:postgresql://localhost/passport","postgres","root");
Statement st=con.createStatement();
	
int k =st.executeUpdate("insert into registration values('"+title+"','"+fname+"','"+mname+"','"+lname+"',"+dob+",'"+gender+"','"+emailid+"',"+phoneno+",'"+bloodgroup+"','"+password+"','"+repassword+"')");
		if(k>=1)
		{
			JOptionPane.showMessageDialog(null,"Registration successfully");
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
                  </form>
                  <p> </p>
                  <p>&nbsp;</p>
                </div>
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
</html>	``````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````