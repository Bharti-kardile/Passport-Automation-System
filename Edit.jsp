<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="javax.swing.JOptionPane"%>
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
                    <li> <a href="Edit.jsp">EDIT</a> </li>
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
                 <h3></h3><form  method="post" action="Edit.jsp">
                  
                  <table align='center'>
                <tr><td>Application Id:</td>
 <td> <input type="text" name="t1"></td>
</tr>
<tr>

  <td>Name:</td>
  <td><input type="text" name="t2"></td>
</tr>
<tr>
<td>Middle Name:</td>
 <td> <input type="text" name="t3"></td>
</p>
</tr>
<tr>
<td>SurName:</td>
  <td><input type="text" name="t4"></td>
</tr>
<tr>
<td>Gender:</td>
                  
     <td><input name="t5" type="radio" value="male">
                      Male<td>
                    
                    <input name="t5" type="radio" value="female">
                      female</td>
                      </tr>
                      
<tr>
 <td> Date of birth</td> 
 <td><input type="text" name="t6"></td>
 </tr>
 <tr>
<td>Upload photo:</td><td><input name="file" type="file"></td></tr>
<tr>
<td>Place of birth</td>
<td><input type="text" name="t7"><td></tr>

<tr>
<td>Father name</td>
<td><input type="text" name="t8"></td>
</tr>
<tr>
<td>Mother name</td>
<td><input type="text" name="t9"></td>
</tr>
<tr>
  <td>Wife/Husband name<td>
    <td><input name="t10" type="radio" value="yes">
                      yes
                    
                    <input name="t10" type="radio" value="no">
                      no</td>
                      
  <td>If Married </td></tr>
  <tr>
  <td>Address</td>
   <td><input type="text" name="t11"></td>
</tr>    
<tr>
<td>Telephone</td>
 <td><input type="text" name="t12"></td>
</tr>
<tr>
<td>Mobile</td>
<td><input type="text" name="t13"></td>
   </tr>
   <tr>
   <td>Qualifiation</td>
    <td><input type="text" name="t14"></td>
   </tr>
   <tr>
   <td>Visible Marks</td>
   <td><input type="text" name="t5"></td>
 </tr>
 <tr>
 <td>Height</td>
<td><input type="text" name="t16"></td>
 </tr>
 <tr>
 <td>Profession</td>
    <td><input type="text" name="t17"></td>
    </tr>
    <tr>
    <td>Citizeship of India</td>
 <td><select name="select"><option>Yes</option><option>No</option><option></select></td>td>
 </tr>
 <tr>
 <td>Pending Crime Cases</td>
 <td><select name="select"><option>Yes</option><option>No</option><option></select></td>
 </tr>
 <tr>
 <td>Aadhaar no</td>
 <td><input type="text" name="t18"></td>
 </tr>
  <tr>
<td>Pancardno</td>
<td><input type="text" name="t19"></td>
</tr>
<tr>
<td>Voterid</td>
<td><input type="text" name="t20"></td>
</tr>
<tr>
<td>Date</td>
<td><input type="text" name="t21"></td>
</tr>
<tr>
   <td><input type="submit"  value="Modify"></tr>
   <table>
  <% 
  try
{
String aid=request.getParameter("t1");
//int a=Integer.parseInt("t1");
String name=request.getParameter("t2");
String mname=request.getParameter("t3");
String lname=request.getParameter("t4");
String gender=request.getParameter("t5");
String dob=request.getParameter("t6");
String photo=request.getParameter("file");
String  pdob=request.getParameter("t7");
String fname=request.getParameter("t8");
String mothername=request.getParameter("t9");
String wife_husband=request.getParameter("t10");
String address=request.getParameter("t11");
String telephone=request.getParameter("t12");
String mobile=request.getParameter("t13");
String qualification=request.getParameter("t14");
String vimark=request.getParameter("t15");
String height=request.getParameter("t16");
String profession=request.getParameter("t17");
String cindia=request.getParameter("select");
String crimecase=request.getParameter("select");
String aadhaarno=request.getParameter("t18");
String pancard=request.getParameter("t19");
String voterid=request.getParameter("t20");
String date=request.getParameter("t21");

if(aid!=null && name!=null&&mname!=null && lname!=null&&gender!=null && dob!=null&&photo!=null && pdob!=null&&fname!=null && mothername!=null&&wife_husband!=null &&address!=null &&telephone !=""&&mobile!="" && qualification!=null&&vimark!=null && height!=null&&profession!=null && cindia!=null&&crimecase!=null && pancard!=null&&voterid!=null && date!=null);
{
	
	Class.forName("org.postgresql.Driver");
Connection con=DriverManager.getConnection("jdbc:postgresql://localhost/passport","postgres","root");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from apply2 where aid='"+aid+"'");
if(rs.next())


//("insert into apply values("+applicationid+",'"+name+"','"+mname+"','"+lname+"','"+gender+"','"+dob+"','"+photo+"',"+pdob+",'"+fname+"','"+mothername+"','"+wife_husband+"','"+address+"','"+telephone+"','"+mobile+"','"+qualification+"','"+vimark+"','"+height+"','"+profession+"','"+cindia+"','"+crimecase+"','"+aadhaarno+"','"+pancard+"','"+voterid+"','"+date+"')");
{
	int k =st.executeUpdate("update apply2 values set aid='"+aid+"' and  name='"+name+"' and mname='"+mname+"' and   sname='"+lname+"' and  gender='"+gender+"' and dob='"+dob+"' and dob='"+dob+"' and photo='"+photo+"' and pob='"+pdob+"' and fname='"+fname+"'and mothername='"+mothername+"' and wf='"+wife_husband+"' and address='"+address+"' and telephone="+telephone+" and mobile="+mobile+" and qualification='"+qualification+"' and visiblemark='"+vimark+"' and height='"+height+"'and profession='"+profession+"'and citizenship='"+cindia+"' and crimecase='"+crimecase+"' and aadhaarno="+ aadhaarno+"and pancardno='"+pancard+"' and voterid='"+voterid+"' and date='"+date+"'");
	if(k>=1)
	{
		JOptionPane.showMessageDialog(null,"Edit successfully");
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
<form>
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