<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <link rel="stylesheet" type="text/css" href="style1.css">
  <title>Purchase Form</title>
</head>

<body>
<br>
<br>
  <div id="container">
    <form action="third.jsp">
      <fieldset>
        <legend style="text-align:center">Purchase Form</legend>
        <label for="fname">First Name</label>
        <input type="text" name="fname" placeholder="Aravinth"><br>
        Last Name<br>
        <input type="text" name="lname" placeholder="R"><br>
        
        <fieldset>
          <legend> Brand</legend>
         
          <label >Choose Brand :</label>

<select name="app">
  <option value="Apple">Apple</option>
  <option value="Samsung">Samsung</option>
  <option value="POCO">POCO</option>
  <option value="REDMI">Redmi</option>
</select>

        </fieldset>

        <fieldset>
          <legend>Storage</legend>
          <label >Choose Storage :</label>

<select name="s1">
  <option value="32 GB">32 GB</option>
  <option value="64 GB">64 GB</option>
  <option value="128 GB">128 GB</option>
  <option value="256 GB">256 GB</option>
</select>
        
        </fieldset>

        <fieldset>
          <legend> Colour</legend>
         <label >Choose Colour :</label>

<select name="b">
  <option value="Black">Black</option>
  <option value="Space Grey">Space Grey</option>
  <option value="Blue">Blue</option>
  <option value="Red">Red</option>
</select>
          
          
        </fieldset>

      </fieldset>
      <br>
      <input type="submit" value="Submit">
     
    </form>
  </div>
</body>



</html>

