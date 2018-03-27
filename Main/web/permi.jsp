<html>
<body >
<table border="0" height=25%  width=100% bgcolor="#eeffee" align="center">
<tr height=25% >
<td  colspan="2"  align="right" valign="bottom"><a href="./flogout.jsp"><h3>logout</h3></a></td>
</tr>
</table>
<table width=100%>
<tr>

<td align="center" bgcolor=eeffee>
<h3><i>Check Permissions</i></h3>
<table border=0>
<thead>
<tr><th>reason</th><th>Status</th></tr>
</thead>
<tbody>
<%@ page import="java.sql.*,java.text.*" %>
<%
String s1=" ",s2=" ",s3=" ",s4=" ",s5=" ",s6=" ",apdat=" ";
try
{
	
Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","TheAman","king8115747103");		
			
    Statement st=con.createStatement();
	String uid=(String)session.getAttribute("fuserid");
	ResultSet rs=st.executeQuery("select reason,status from leave where fuserid='"+uid+"' and status!='requested'");
	ResultSetMetaData rd=rs.getMetaData();%>
	
<%	
	while(rs.next())
	{
		s1=rs.getString(1);
		s2=rs.getString(2);
		%>
	<tr>
	<td><%=s1%></td>
	<td><%=s2%></td>
	</tr>
	<% }%>
<%
}
	 catch(Exception e)
	 {
	 }
%>
</tbody>
</table>
</td>
</tr>
</table>
</body>

</html>
