<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

  <link rel="stylesheet" href="/node_modules/bootstrap/dist/css/bootstrap.css">
  <link rel="stylesheet" href="/node_modules/jquery-ui-1.12.1/jquery-ui.css">

  <script src="/node_modules/jquery/dist/jquery.js"></script>
  <script src="/node_modules/jquery-ui-1.12.1/jquery-ui.js"></script>
  
</head>
<body>

<fieldset>
  <legend>Select a Location: </legend>
  <label class="tttest" for="radio-1">New York</label>
  <input type="radio" name="radio-1" id="radio-1">
  <label for="radio-2">Paris</label>
  <input type="radio" name="radio-1" id="radio-2">
  <label for="radio-3">London</label>
  <input type="radio" name="radio-1" id="radio-3">
</fieldset>

<script>
$( "input[type='radio']" ).checkboxradio();
</script>

</body>
</html>