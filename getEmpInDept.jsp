<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
import="javax.sql.rowset.CachedRowSet"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Details</title>
</head>
<body>
<form action="getEmpInDept.jsp">
Enter Dept. Number:<input type="text" name="number" value="${param.number}"/>
<input type="submit" value="Get Employees"/>
</form>
<jsp:useBean id="Emp" class="beans.EmpBean" scope="page"></jsp:useBean>
<%
	String no = request.getParameter("number");
	if(no!=null)
	{
	int num =Integer.parseInt(no);
	CachedRowSet cr =	Emp.getEmp(num);
	%>
	<table border="1">
	<tr><th>EMPLOEE ID</th><th>FIRST NAME</th><th>LAST NAME</th><th>E-MAIL</th></tr>
	<%
	while(cr.next())
	{
		%>
		<tr><td><%=cr.getString(1) %></td><td><%=cr.getString(2) %></td><td><%=cr.getString(3) %></td><td><%=cr.getString(4) %></td></tr>
		<%
		
	}
	}
%>
</table>
</body>
</html>
