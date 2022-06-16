<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
}

input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=email], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=number], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=password], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: navy;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #111;
}

div.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
<body>
<%@include file="naviBar.jsp" %>
<h2>Update Student Details</h2>

<div class="container">
 <form:form action="updateStudent" modelAttribute="student" method="post">

    Id<form:input path="id" value="${student.getId()}" readonly="true"/>
    Name<form:input path="name" value="${student.getName()}"/>
    Email<form:input path="email" value="${student.getEmail()}"/>
    Phone<form:input path="phone" value="${student.getPhone() }"/>
    Age<form:input path="age" value="${student.getAge()}"/>
    Gender<form:radiobutton path="gender" value="Male" />Male
          <form:radiobutton path="gender" value="Female"/>Female<br>
    Country<form:input path="country" value="${student.getCountry()}"/>
    Address<form:textarea path="address" value="${student.getAddress()}" />
    <form:button>Update</form:button>
    
    </form:form>
  
</div>

</body>
</html>
