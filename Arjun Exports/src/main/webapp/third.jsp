<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="style3.css">
<title>Purchase Information</title>
</head>
<body>



 <%
 String n=request.getParameter("fname");
 session.setAttribute("user",n);
String name=(String)session.getAttribute("user");

String n1=request.getParameter("lname");
session.setAttribute("user1",n1);
String name1=(String)session.getAttribute("user1");




String app=request.getParameter("app");
session.setAttribute("name1",app);
String mob=(String)session.getAttribute("name1");


String s1=request.getParameter("s1");
session.setAttribute("sto",s1);
String str=(String)session.getAttribute("sto");



String b=request.getParameter("b");
session.setAttribute("c",b);
String col=(String)session.getAttribute("c");
int a=0; 
int ta=100;
int tax=0;

if(app.equals("Samsung"))
{
	a=15000;
	tax=a+ta;
}
if(app.equals("Apple"))
		{
	a=50000;
	tax=a+ta;
		}

if(app.equals("POCO"))
{
a=16000;
tax=a+ta;
}
if(app.equals("Redmi"))
{
a=20000;
tax=a+ta;
}



%>

<br>
<div class="container">   
  <div class="invoice-container" ref="document" id="html">
     <table style="width:100%; height:auto;  text-align:center; " BORDER=0 CELLSPACING=0>
       <thead style="background:#fafafa; padding:8px;">
         <tr style="font-size: 20px;">
           <td colspan="4" style="padding:20px 20px;text-align: center; color:#c61932">ARJUN EXPORTS</td>
           
         </tr>
         
       </thead>
       <tbody style="background:#ffff;padding:20px;">
         <tr>
           <td colspan="4" style="padding:20px 0px 0px 20px;text-align:left;font-size: 16px; font-weight: bold;color:#000;">Hello, <%=name %> <%=name1 %></td>
         </tr>
         <tr>
           <td colspan="4" style="text-align:left;padding:10px 10px 10px 20px;font-size:14px;">Your order details</td>
         </tr>
       </tbody>
     </table>
     <table style="width:100%; height:auto; background-color:#fff;text-align:center; padding:10px; background:#fafafa">
       <tbody>
         <tr style="color:#6c757d; font-size: 20px;">
           <td style="border-right:1.5px dashed  #DCDCDC; width:25%;font-size:12px;font-weight:700;padding: 0px 0px 10px 0px;">Order Date</td>
           <td style="border-right: 1.5px dashed  #DCDCDC ;width:25%;font-size:12px;font-weight:700;padding: 0px 0px 10px 0px;">Order No.</td>
           <td style="border-right:1.5px dashed  #DCDCDC ;width:25%;font-size:12px;font-weight:700;padding: 0px 0px 10px 0px;">Payment</td>
           <td style="width:25%;font-size:12px;font-weight:700;padding: 0px 0px 10px 0px;">Shipping Address</td>
         </tr>
         <tr style="background-color:#fff; font-size:12px; color:#262626;">
           <td style="border-right:1.5px dashed  #DCDCDC ;width:25%; font-weight:bold;background: #fafafa;">06. 02. 2022</td>
           <td style="border-right:1.5px dashed  #DCDCDC ;width:25% ; font-weight:bold;background: #fafafa;">234412668</td>
           <td style="border-right:1.5px dashed  #DCDCDC ;width:25%; font-weight:bold;background: #fafafa;">UPI</td>
           <td style="width:25%; font-weight:bold;background: #fafafa;">Trichy, Tamil Nadu</td>
         </tr>
       </tbody>
     </table>
     <table style="width:100%; height:auto; background-color:#fff; margin-top:0px;  padding:20px; font-size:12px; border: 1px solid #ebebeb; border-top:0px;">
       <thead>
         <tr style=" color: #6c757d;font-weight: bold; padding: 5px;">
           <td colspan="2" style="text-align: left;">PRODUCT INFORMATION</td>
           <td style="text-align: center;">STORAGE</td>
           <td style="padding: 10px;text-align:center;">COLOUR</td>
           <td style="text-align: right;padding: 10px;">PRICE</td>
         </tr>
       </thead>
       <tbody>
         <tr>
           <td style="width:10%; ">
             <a href=""><img src="https://cdn4.iconfinder.com/data/icons/business-2-7/512/phone-512.png" style="width:100px;" /></a>
           </td>
           <td style="width:20%;margin-left:10px;text-align: center;"><%=mob %></td>
           <td style="width:20%;padding: 10px; text-align:center;"> <%=str %></td>
           <td style="width:20%;padding: 10px;text-align: center;"><%=col %></td>
           <td style="width:30%; ;font-weight: bold;font-size: 14px;">
             <table style="width:100%;">
               <tr><td style="text-align:end;font-size:13px;">&#8377 <%=a%></td></tr>
             </table>
           </td>
         </tr>
       </tbody>
     </table>
     <table style="width:100%; height:auto; background-color:#fff;padding:20px; font-size:12px; border: 1px solid #ebebeb; border-top:0">
       <tbody>
         <tr style="padding:20px;color:#000;font-size:15px">
           <td style="font-weight: bold;padding:5px 0px">SUB TOTAL</td>
           <td style="text-align:left;padding:5px 0px;font-weight: bold;font-size:16px;">&#8377 <%=a%></td>
         </tr>
         <tr style="padding:20px;color:#000;font-size:15px">
           <td style="font-weight: bold;padding:5px 0px">TAX</td>
           <td style="text-align:left;padding:5px 0px;font-weight: bold;font-size:16px;">&#8377 <%=ta%></td>
         
         </tr>
         
         <tr style="padding:20px;color:#000;font-size:15px">
           <td style="font-weight: bold;padding:5px 0px">TOTAL AMOUNT</td>
           <td style="text-align:left;padding:5px 0px;font-weight: bold;font-size:16px;">&#8377 <%=tax%></td>
         
         </tr>

         <tr>
         
           <td colspan="2" style="font-weight:bold;"><span style="color:#c61932;font-weight: bold;"><br>THANK YOU</span> for shipping with us!</td>
         </tr>
         
       </tbody>
       <tfoot style="padding-top:20px;font-weight: bold;">
         <tr>
           <td style="padding-top:20px;">Need help? Contact <span style="color:#c61932"> Aravinth R </span></td>
         </tr>
       </tfoot>
     </table>
</div>
</div>

</body>
</html>