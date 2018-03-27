<html><head>
<script language="Javascript">
function submitOne() { 
	
	document.f2.action="./delreq";
                        document.f2.submit();
						return true;
						}
 
 function submitTwo() { document.f2.action="./accreq";
                        document.f2.submit(); }
 
</script>
<style>
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
    
    #faculty tr:hover{
        background-color: #ddd;
    }
    
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
 
  

    
</style>
    </head>
<body >
    <div style="position:relative;top:63px;" class="full-width-background fwb-red">something</div>
   
    <div style="position:relative;top:74px;" class="full-width-background fwb-red">something</div>
   
    <table >
        <tr  height="30" width="1300">
            
        </tr>
        <tr >
        <a href="./contactus.html"><img src="contac.png" height="27" width="30" style="position:relative;left:1050px;top:-130px;"/></a>
        <a href="./alogout.jsp" style="position: relative;left:1070px;top:-137px;">Logout</a>
        
        <img style="position:relative;left:100px;top:-30px;" src="Learning.jpeg"/>
        </tr>
    </table>

<table width=100%>
<tr>

<td align="center" >
<h3><i>Grant or Reject the Leave Requests</i></h3>
<form name=f2 method="get">
<table id="faculty">
<thead>
<tr><th>FacultyId</th><th>name</th><th>mail</th><th>reason</th><th>AppliedDate</th><th>Grant/reject</th></tr>
</thead>
<tbody>
<%@ page import="java.sql.*,java.text.*" %>
<%
String s1=" ",s2=" ",s3=" ",s4=" ",s5=" ",s6=" ",apdat=" ",s7=" ";
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","TheAman","king8115747103");		

	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select fuserid,name,mail,reason,appdate,status,lid from leave where status='requested'");
	ResultSetMetaData rd=rs.getMetaData();%>
	
<%	
	while(rs.next())
	{
		s1=rs.getString(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s4=rs.getString(4);
		apdat=rs.getString(5);
		s6=rs.getString(6);
		s7=rs.getString(7);
		Format form=new SimpleDateFormat("dd-MMM-yyyy");
		DateFormat ff=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		s5=form.format(ff.parse(apdat));%>
	<tr>
	<td><%=s1%></td>
	<td><%=s2%></td>
	<td><%=s3%></td>
	<td><%=s4%></td>
	<td><%=s5%></td>
	<td><input type=checkbox name="sta" value="<%=s7%>"></a></td></tr>
	</tr>
	<% }%>

</tbody>
</table>
<input type="submit" value="grant" onClick="submitTwo()">
<input type="submit" value="reject" onClick="submitOne()">
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
