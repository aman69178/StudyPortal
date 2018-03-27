<html>
<head>
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
    
    
</style>
</head>
<body  >
<table border="0"  height=25%  width=100%  align="center">
<tr>
<td  colspan="2"  align="right" valign="bottom"><a href="./slogout.jsp"><h3>logout</h3></a></td>
</tr>
</table>
<table width=100%>
<tr>

<td>
<table id="faculty"  >

    <thead><tr><th align="center" background="steelblue"><h2>ANNOUNCEMENTS</h2></th></tr></thead>
<tbody>


<% Integer x=(Integer)request.getAttribute("cnt");
for( int i=0;i<x;i++)
{ %>
<tr>
<td align="center"><%=   request.getAttribute("sannouncements["+i+"]")%><br></td>
</tr>
<% } %></tbody>
</table>
</td>
</tr>
</table>
</form>
</td></tr></table>
</body></html>



