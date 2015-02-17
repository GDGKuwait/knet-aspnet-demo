<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="KNET_PG_Test.Details" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!--
This merchant demo is published by Knet as a demonstration of the process
of Online Knet Payment Gateway Transactions. Note however that this is not
a fully running demo and there are parts that the merchant has to build him self.
Also, this demo is not tested for security or stability, and Knet does not intend to recommend
this for production purposes. Merchants should build their own web pages based on their needs. 
This demo is just a guide as to what the whole process will look like.
-->

<html>
<head>
<title>Knet Merchant Demo</title>
<meta http-equiv="pragma" content="no-cache">
<link href="st.css" rel="stylesheet" type="text/css" />
</head>
<% 
    string product;
    double price, qty, total;
    product = Request.Form["product"];
    price = double.Parse(Request.Form["price"]);
    qty =   double.Parse(Request.Form["qty"]);
    total = price * qty;
%>
 
<body>

<table width="100%" border="0" cellpadding="1" cellspacing="1" class="text">
   <tr>
    <td align="center" >
	<table width="70%" border="0" > 
		<tr><td align=center class="heading">
			<img src=knet.gif>
		</td>
		<td align="left" width="70%" class="heading"><strong>Knet Merchant Demo Shopping Center</strong></td>
		</tr>
	</table>
	</td>
  </tr>
  <tr>
    <td class="tdwhite">
    <table width="70%" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
      <tr>
        <th class="tdfixed">Product</th>
        <th class="tdfixed">Price/Day</th>
        <th class="tdfixed">Number of days</th>
        <th class="tdfixed">Total</th>
      </tr>
      <tr>
        <td class="tdwhite"><%=product%></td>
        <td class="tdwhite"><%=price%> KD</td>
        <td class="tdwhite"><%=qty%> day(s)</td>
        <td class="tdwhite"><%=total%> KD</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td class="tdwhite"><form action="buy.aspx" method="post">
      <input type="hidden" name="product" value="<%=product%>">
      <input type="hidden" name="price" value="<%=price%>">
      <input type="hidden" name="qty" value="<%=qty%>">
      <input type="hidden" name="total" value="<%=total%>">
      <table width="70%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
        <tr>
          <td width="20%" class="tdfixed"><strong>Name:</strong></td>
          <td width="80%" class="tdwhite"><input type="text" name="name" length="30"></td>
        </tr>
        <tr>
          <td class="tdfixed"><strong>Address:</strong></td>
          <td class="tdwhite"><input type="text" name="address" length="30"></td>
        </tr>
        <tr>
          <td class="tdfixed"><strong>Postal Code:</strong></td>
          <td class="tdwhite"><input type="text" name="postal" length="30"></td>
        </tr>
        <tr>
          <td class="tdwhite"></td>
          <td class="tdwhite"><input type="submit" value="Buy"></td>
        </tr>
      </table>
    </form></td>
  </tr>
</table>
</body>
</html>
