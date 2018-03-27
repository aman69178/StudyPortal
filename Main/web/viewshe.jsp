<html><head>
<script language="Javascript">
function submitOne()
{ 
	document.f2.action="./delfed";
        document.f2.submit();
	return true;
}
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
<h3><i>Feedbacks From The Students</i></h3>
<form name=f2 method="get">
<table id="faculty">
<thead>
<tr><th>Student Id</th><th>Name</th><th>CourseId</th><th>Feedback</th><th>Date</th><th>select</th></tr>
</thead>
<tbody>
<%@ page import="java.sql.*,java.text.*"%>
<%
String s1=" ",s2=" ",s3=" ",s4=" ",s5=" ",s6=" ",sentdate=" ";
try
{
	
	Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
        	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","TheAman","king8115747103");		
		Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from feedback where status='sent'");
	ResultSetMetaData rd=rs.getMetaData();%>
<%	
	while(rs.next())
	{
		s1=rs.getString(1);
		s2=rs.getString(2);
		s3=rs.getString(3);

		s4=rs.getString(4);
		sentdate=rs.getString(5);
			s5=rs.getString(7);
		Format form=new SimpleDateFormat("dd-MMM-yyyy");
		DateFormat ff=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		s6=form.format(ff.parse(sentdate));%>
	<tr>
	<td><%=s1%></td>
	<td><%=s2%></td>
	<td><%=s3%></td>
	<td><%=s4%></td>
	<td><%=s6%></td>
	<td align="center"><input type=checkbox name="sta" value="<%=s5%>"></td></tr>
	</tr>
	<% }%>

</tbody>
</table>
<input type="submit" value="delete" onClick="submitOne()">
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
<pre>       <a href="adminhome.html">HOME..</a></pre>
</body>

</html>
