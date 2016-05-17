<%@ page import = "java.lang.*" %>
<%@ page import = "edu.part1.Mathematics" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>WebCalculator</title>
</head>
<body bgcolor="#F0F8FF">
<center><h1>CALCULATOR</h1></center>
<form name="myform" action="" method="post">
Enter first number<input type="text" name="input1" value="">&nbsp;&nbsp;
Select Operator <select name="operator">
  <option value="">Select</option>
  <option value="sum">Add</option>
  <option value="difference">Subtract</option>
  <option value="product">Multiply</option>
  <option value="divide">Divide</option>
  <option value="max">Maximum</option>
  <option value="min">Minimum</option>
  <option value="pow">Power</option>
  <option value="sin">Sin</option>
  <option value="cos">Cos</option>
  <option value="log">Log</option>
  <option value="sqrt">Square root</option>
  <option value="ln">ln</option>
</select>&nbsp;&nbsp;
Enter second number<input type="text" name="input2" value="">
<input type="submit" value="submit"><br></br>
</form>
<% 
double a , b, result;
String op;
a = new Double(0.0d);
b = new Double(0.0d);
result = new Double(0.0d);
if(request.getParameter("input1")!=null && request.getParameter("input2")!=null){
try{
a = Double.valueOf(request.getParameter("input1"));
b = Double.valueOf(request.getParameter("input2"));}
catch(NumberFormatException e){

}
}

op = request.getParameter("operator");
if(op!=null){
if((op.equals("sum")))
   result = Mathematics.sum(a,b);
   
if((op.equals("difference")))
  result = Mathematics.difference(a,b);

if((op.equals("product")))
   result = Mathematics.product(a,b);
      
if((op.equals("divide")))
   result = Mathematics.divide(a,b);
         
if((op.equals("max")))
  result = Mathematics.max(a,b);

if((op.equals("min")))
 result = Mathematics.min(a,b);
   
if((op.equals("pow")))
  result = Mathematics.pow(a,b);
  
	
if((op.equals("sin")))
   result = Mathematics.sin(a);

if((op.equals("cos")))
  result = Mathematics.cos(a);

if((op.equals("log")))
 result = Mathematics.log(a);
  
if((op.equals("sqrt")))
 result = Mathematics.sqrt(a);
  
if((op.equals("ln")))
 result = Mathematics.ln(a); 

out.println("Result is "+result);
} 
%>

</body>
</html>
    
   