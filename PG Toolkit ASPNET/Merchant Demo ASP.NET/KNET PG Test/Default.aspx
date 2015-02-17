<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="KNET_PG_Test._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!--
This merchant demo is published by Knet as a demonstration of the process
of Online Knet Payment Gateway Transactions. Note however that this is not
a fully running demo and there are parts that the merchant has to build him self.
Also, this demo is not tested for security or stability, and Knet does not intend to recommend
this for production purposes. Merchants should build their own web pages based on their needs. 
This demo is just a guide as to what the whole process will look like.
-->
<html xmlns="http://www.w3.org/1999/xhtml" >


<head>
<title>Knet Merchant Demo</title>
<meta http-equiv="pragma" content="no-cache">
<link href="st.css" rel="stylesheet" type="text/css" />
</head>

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
    <td><form action="details.aspx" method="post">
      <input type="hidden" name="product" value="Internet Card">
      <input type="hidden" name="price" value="1.5">
      <table width="70%" border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#CCCCCC" >
        <tr>
          <td colspan="2" class="tdwhite"><p>Use our Internet Cards and enjoy the fastest, most cost-effective, easiest way to serve the web with our special offer. Now you can register for the exact number of days you want. Our prices and performance are the execuse to buy from us.<br>
            <br>
          </p>            </td>
          </tr>
        <tr>
          <td width="241" class="tdfixed"><strong>Prices/Day</strong></td>
          <td width="533" class="tdwhite">1.5 KD</td>
        </tr>
        <tr>
          <td class="tdfixed"><strong>Number of days you wish to subscribe</strong></td>
          <td class="tdwhite"><input type="text" name="qty" value="7">
            day(s)</td>
        </tr>
        <tr>
          <td class="tdwhite"></td>
          <td class="tdwhite"><input type="submit" name="submit" value="Purchase"></td>
        </tr>
      </table>
    </form></td>
  </tr>
</table>
<p/>
</font>
</body>
</html>
	

