<html>
    <head>
        
    
<style type="text/css">
    
    
    a:link {color: gray}
a:visited {color:gray}
a:hover {color:royalblue}
a:active {color:white}

  

    .full-width-background {
   margin-left: -100px;
   margin-right: -100px;
 }
 
 .full-width {
   margin-left: -100px;
   margin-right: -100px;
 }
 .fwb-red {
   background-color: royalblue;
 }
 
  #faculty{
        font-family: "Trebuchet MS","Arial","Helvetica","san-serif";
        border-collapse: collapse;
        width:100%;
    }
    #faculty td,#faculty th{
        border:1px solid activecaption;
        padding: 8px;
    }
    #faculty tr:nth-child(even){background-color: #f2f2f2;}  
    
    #faculty th{
        background-color: steelblue;
        color:white;
        text-align: left;
    }
    
    
 
 
 
 
 
 
 
</style>
</head>
<body  >
    
    <div style="position:relative;top:63px;" class="full-width-background fwb-red">something</div>
   
    <div style="position:relative;top:74px;" class="full-width-background fwb-red">something</div>
   
    <table >
        <tr bgcolor="#eeffee" height="30" width="1300">
            
        </tr>
        <tr >
        <a href="./contactus.html"><img src="contac.png" height="27" width="30" style="position:relative;left:1050px;top:-130px;"/></a>
        <a href="adminlog.html" style="position: relative;left:1070px;top:-137px;">Administrator</a>
        
        <img style="position:relative;left:100px;top:-30px;" src="Learning.jpeg"/>
        </tr>
    </table>
     <div style="position:relative;top:-25px;left:70px;"><font style="color:steelblue; " size="4" >
       
         <a href="home.html">Home</a></font></div>
<div style="position:relative;top:-45px;left:180px;">
    
        <font style="color:gray; " size="4">
<a href="./aboutus.html">About us</a></font>


    
</div>
<div style="position:relative;top:-65px;left:280px;"><font style="color:gray;" size="4">
    <a href="./faqs.html">FAQs</a></font></div></br>
    
    <div style="position:relative;top:-105px;left:350px;"><font style="color:gray;" size="4">
    Courses</font></div></br>
    
    <table width="100%">
        <tr>
            <td align="center">
                
                <h2><i>Courses available are:</i></h3>
<form name=f2 method="get">
<table  id="faculty" style="padding:30px;">
<thead>
<tr><th>Courseid</th><th>Coursename</th><th>Sdate</th><th>Edate</th><th>Fees</th></tr>
</thead>
<tbody>
    <%@page import= "java.sql.*" %>
    <%
        String s1=" ",s2=" ",s3=" ",s4=" ",s5=" ";
        try{
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","TheAman","king8115747103");		
	
	Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select courseid,coursename,sdate,edate,fee from course");
	ResultSetMetaData rd=rs.getMetaData();%>
       
        <%while(rs.next())
	{
		s1=rs.getString(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s4=rs.getString(4);
                s5=rs.getString(5);%>
             <tr>
	<td><%=s1%></td>
	<td><%=s2%></td>
	<td><%=s3%></td>
	<td><%=s4%></td>
        <td><%=s5%></td>
	</tr>
	<% }%>
   </tbody>
</table>
</form>
<%
}
	 catch(Exception e)
	 {
	 }
%>   
</td>
        </tr>
    </table>
        
    </body>
    
</html>