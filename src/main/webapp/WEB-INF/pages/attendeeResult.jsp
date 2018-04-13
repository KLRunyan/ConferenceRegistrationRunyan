<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri= "http://www.springframework.org/tags/form" prefix="mvc" %>
   <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body> <h2>Attendee Registration Result</h2>
    <table>
        <tr>
            <td>Name</td>
            <td>${a.name}</td>
        </tr>
        <tr>
            <td>Last name</td>
            <td>${a.lastname}</td>
        </tr>
        <tr>
            <td>Company Name</td>
            <td>${a.companyName}</td>
        </tr>
        <tr>
            <td>Job Title</td>
            <td>${a.jobTitle}</td>
        </tr>
            <td>Country</td>
            <td>${a.country}</td>
        </tr>
        </table>
<a href = "viewAll.mvc">View all Users</a>
</body>
</html>
