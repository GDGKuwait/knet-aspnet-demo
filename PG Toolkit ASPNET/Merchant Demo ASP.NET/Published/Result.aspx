<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Result.aspx.cs" Inherits="KNET_PG_Test.Result" %>

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

<body>
<table width="100%" cellspacing="1" cellpadding="1">
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
    <td align="center" class="msg">
  <% 
      
    string PaymentID, result, postdate, tranid, auth, trackid, refr, udf1, udf2, udf3, udf4, udf5;


    PaymentID = Request["PaymentID"]; // Reads the value of the Payment ID passed by GET request by the user.
    result = Request["Result"]; // Reads the value of the Result passed by GET request by the user.
    postdate = Request["PostDate"]; // Reads the value of the PostDate passed by GET request by the user.
    tranid = Request["TranID"]; // Reads the value of the TranID passed by GET request by the user.
    auth = Request["Auth"]; // Reads the value of the Auth passed by GET request by the user.
    refr = Request["Ref"]; // Reads the value of the Ref passed by GET request by the user.
    trackid = Request["TrackID"];  // Reads the value of the TrackID passed by GET request by the user.
    udf1 = Request["UDF1"];  // Reads the value of the UDF1 passed by GET request by the user.


    //If PaymentID is empty, redirect to error page
        if(PaymentID == ""){
	        Response.Redirect("Error.aspx");
        }
        else{
    %>
         
          Transaction Completed Successfully <br/>
          Thank You For Your Order 
    <%
        }
    %>
  </td>
  </tr>
  <tr>
    <td align="center">
<table width=70% border="0" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC" col="2">
  <tr>
    <td colspan="2" align="center" class="msg"><strong class="text">Transaction Details 
(from Merchant Notification Message)</strong></td>
    </tr>
  <tr>
    <td width=26% class="tdfixed">Payment ID :</td>
    <td width=74% class="tdwhite"><%=PaymentID%></td>
  </tr>
  <tr>
    <td class="tdfixed">Post Date :</td>
    <td class="tdwhite"><%=postdate%></td>
  </tr>
  <tr>
    <td class="tdfixed">Result Code :</td>
    <td class="tdwhite"><%=result%></td>
  </tr>
  <tr>
    <td class="tdfixed">Transaction ID :</td>
    <td class="tdwhite"><%=tranid%></td>
  </tr>
  <tr>
    <td class="tdfixed">Auth :</td>
    <td class="tdwhite"><%=auth%></td>
  </tr>
  <tr>
    <td class="tdfixed">Track ID :</td>
    <td class="tdwhite"><%=trackid%></td>
  </tr>
  <tr>
    <td class="tdfixed">Ref No :</td>
    <td class="tdwhite"><%=refr%></td>
  </tr>
  <tr>
    <td class="tdfixed">UDF1 :</td>
    <td class="tdwhite"><%=udf1%></td>
  </tr>
  <tr>
    <td class="tdfixed">UDF2 :</td>
    <td class="tdwhite"><%=udf2%></td>
  </tr>
  <tr>
    <td class="tdfixed">UDF3 :</td>
    <td class="tdwhite"><%=udf3%></td>
  </tr>
  <tr>
    <td class="tdfixed">UDF4 :</td>
    <td class="tdwhite"><%=udf4%></td>
  </tr>
  <tr>
    <td class="tdfixed">UDF5 :</td>
    <td class="tdwhite"><%=udf5%></td>
  </tr>
</table></td>
  </tr>
</table>

<center>
</center>
		</body>
</html>

