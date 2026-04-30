<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="StudentRegistration.aspx.vb" Inherits="SampleWebApplication.StudentRegistration" %>

<!DOCTYPE html>
<html>
<style>
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
<body>

<h3>Student registray</h3>

<div>
  <form action="/action_page.php" runat="server">
    <label for="fname" runat="server">First Name</label>
    <input type="text" id="fname" name="firstname" runat="server" placeholder="Your name..">

    <label for="lname" runat="server">Last Name</label>
    <input type="text" id="lname" name="lastname" runat="server" placeholder="Your last name..">

    <label for="country">Class</label>
    <select id="country" name="country" runat="server">
      
    </select>
  
    <input type="submit" value="Submit">
  </form>
</div>

</body>
</html>

