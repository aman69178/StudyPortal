<html><head>
<script language="Javascript">
function submitOne() { 
	
	document.f2.action="./acccou";
                        document.f2.submit();
						return true;
						}
 
 function submitTwo() { document.f2.action="./rejcou";
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
</style>

</head>
<body >

<table width="100%" >
<tr>

<td align="center" >
<h3><i>accept or reject the following files from faculty</i></h3>
<form name=f2 method="get">
<table id="faculty" width=100%>
<thead>
<tr><th>facultyid</th><th>courseid</th><th>topic</th><th>accept/reject</th></tr>
</thead>
<tbody>
<%@ page import="java.sql.*" %>
<%
String s1=" ",s2=" ",s3=" ",s4=" ",s5=" ";
try
{
	
 Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","TheAman","king8115747103");		
		
    Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from upload where status='uploaded'");
	ResultSetMetaData rd=rs.getMetaData();%>
	
<%	
	while(rs.next())
	{
		s1=rs.getString(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s4=rs.getString(4);
%>
	<tr>
	<td><%=s1%></td>
	<td><%=s2%></td>
	<td><a href="<%=s4%>" ><%=s3%></a></td>
	<td align="center"><input type=checkbox name="sta" value="<%=s3%>"></a></td></tr>
	</tr>
	<% }%>

</tbody>
</table>
<input type="submit" value="accept" onClick="submitOne()">
<input type="submit" value="reject" onClick="submitTwo()">
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
