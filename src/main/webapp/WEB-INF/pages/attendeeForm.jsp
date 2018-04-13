<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@taglib uri= "http://www.springframework.org/tags/form" prefix="mvc" %>
   <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring MVC Form Handling</title>
</head>
<body>
	<h2>Conference Attendee Registration Form</h2>
	<mvc:form modelAttribute="attendee" action="result.mvc">
		<table>
		<tr>
	        <td><mvc:label path="name">Name</mvc:label></td>
	        <td><mvc:input path="name" /></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="lastname">Last Name</mvc:label></td>
	        <td><mvc:input path="lastname" /></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="companyName">Company Name</mvc:label></td>
	        <td><mvc:input path="companyName" /></td>
	    </tr>
   	    <tr>
	        <td><mvc:label path="jobTitle">Job Title</mvc:label></td>
	        <td><mvc:textarea path="jobTitle" /></td>
	    </tr>
		<tr>
            <td><mvc:label path="country">Country</mvc:label></td>
            <td><mvc:input path="country" /></td>
        </tr>
        <tr>
	        <td colspan="2">
                <input type="submit" value="Submit" />
	        </td>
	    </tr>
		</table>
		</mvc:form>
		<a href="viewAll.mvc">View all Attendees</a>
</body>
</html>