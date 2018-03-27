<html>
    <head>
<script language="Javascript">
function submitOne() { 
	
	document.f2.action="./delfac";
                        document.f2.submit();
						return true;
						}
 
 function submitTwo() { document.f2.action="./selfac";
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
<table width=100%>
<tr>

<td align="center" >
<h3><i>Add or Remove the faculty:</i></h3>
<form name=f2 method="get">
<table  id="faculty" style="padding:30px;">
<thead>
<tr><th>Fuserid</th><th>Ffname</th><th>Flname</th><th>Courseid</th><th>Select</th></tr>
</thead>
<tbody>
<%@ page import="java.sql.*" %>
<%
String s1=" ",s2=" ",s3=" ",s4=" ",s5=" ",s6=" ",s7=" ",s8=" ",s9=" ",s10=" ";
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
        	
                    
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","TheAman","king8115747103");		
	
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select fuserid,ffname,flname,courseid from faculty where status='not selected'");
	ResultSetMetaData rd=rs.getMetaData();%>
	
<%	
	while(rs.next())
	{
		s1=rs.getString(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s4=rs.getString(4);%>
	<tr>
	<td><%=s1%></td>
	<td><%=s2%></td>
	<td><%=s3%></td>
	<td><%=s4%></td>
	<td><input type=checkbox name="sta" value="<%=s1%>"></a></td></tr>
	</tr>
	<% }%>

</tbody>
</table>
<input  type="submit" value="select" onClick="submitTwo()" style="position: relaive;top:20px;">
<input type="submit" value="reject" onClick="submitOne()" style="position: relaive;top:20px;">
</form>
<%
}
	 catch(Exception e)
	 {
	 }
%>

<pre>       <a href="adminhome.html">HOME..</a></pre>
</td>
</tr>
</table>
</body>

</html>

