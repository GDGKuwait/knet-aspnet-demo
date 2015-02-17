<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Error.aspx.cs" Inherits="KNET_PG_Test.Error" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <title>Knet Merchant Demo</title>
    <meta http-equiv="pragma" content="no-cache">
    <link href="st.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <center>
        <font color="red" size="6"></font>
        <table width="100%" border="0" cellpadding="1" cellspacing="1" class="text">
            <tr>
                <td align="center" class="heading">
                    <strong>Knet Merchant Demo Shopping Center</strong>
                </td>
            </tr>
            <tr>
                <td class="error" valign="center">
                    <%
                        // Use paymentid to fetch data from DB and display the appropriate information,
                        // if result="CAPTURED" caused by double post, redirect to receipt page, otherwise,
                        // display error text
                          

                        string paymentID = Request["paymentID"];
                        string result = Request["result"];

                        // Assuming transaction data is in Recordset Object named as rs
                        if (result == "CAPTURED")
                            //Response.Redirect(Response.encodeRedirectURL("https://www.YourURL.com/ASP/result.asp?PaymentID=" & rs.PaymentID & "&Result=" & rs.result & "&PostDate=" & rs.postdate & "&TranID=" & rs.tranid & "&Auth=" & rs.auth))
                            Response.Redirect("https://www.YourURL.com/ASP/result.aspx?PaymentID=" + Request["PaymentID"] + "&Result=" + Request[result] + "&PostDate=" + Request["postdate"] + "&TranID=" + Request["tranid"] + "&Auth=" + Request["auth"]);
                        else {
                    %>
                    <center>
                        <font color="red" size="6">
                        An error was encountered while processing your order! Transaction could not be completed
                        </font>
                    </center>
                    <% 
                        }  
                    %>
                </td>
            </tr>
        </table>
</body>
</html>
