<!DOCTYPE html>
<html>
<head>
<style>
body{ 
   font-family: Arial, Helvetica, sans-serif;
}

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: white;
}

li {
  float: left;
  border-right:1px solid #bbb;
}

li:last-child {
  border-right: none;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #111;
  opacity: 0.7;
}

li a:hover:not(.factive) {
  background-color: #111;
  opacity: 0.7;
}

li a:hover:not(.lactive) {
  background-color: #111;
  opacity: 0.7;
}

li a:hover:not(.bctive) {
  background-color: #111;
  opacity: 0.7;
}

.active {
  background-color: #111;
}
.factive {
  background-color: #111;
}

.lactive {
  background-color: #111;
}
.bactive {
  background-color: #111;
}

</style>
</head>
<body>

<ul>
  <li><a class="factive" href="viewEmployee">Profile</a></li>
  <li><a class="active" href="createFlight.jsp">Add Flight</a></li>
  <li><a class="factive" href="getAllStudents">View All Student</a></li>
  <li><a class="factive" href="viewFlight">View All Flights</a></li>
  <li class="lactive" style="float:right"><a href="logout">Logout</a></li>
</ul>

</body>
</html>


