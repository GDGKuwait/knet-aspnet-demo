<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Buy.aspx.cs" Inherits="KNET_PG_Test.Buy" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

    <!--
    This merchant demo is published by Knet as a demonstration of the process
    of Online Knet Payment Gateway Transactions. Note however that this is not
    a fully running demo and there are parts that the merchant has to build him self.
    Also, this demo is not tested for security or stability, and Knet does not intend to recommend
    this for production purposes. Merchants should build their own web pages based on their needs. 
    This demo is just a guide as to what the whole process will look like.
    -->

    <%
        
    string product,price,qty,total,name,address,postal; // Declaration of variables

    product = Request.Form["product"];
    price   = Request.Form["price"];
    qty     = Request.Form["qty"];
    total   = Request.Form["total"];
    name    = Request.Form["name"];
    address = Request.Form["address"];
    postal  = Request.Form["postal"];

    e24PaymentPipeLib.e24PaymentPipeCtlClass MyObj;
    MyObj          = new e24PaymentPipeLib.e24PaymentPipeCtlClass(); // Create an instance of the dll object
    MyObj.Action       = "1";            // Purchase Transaction
    MyObj.Amt          = total;          // The amount of purchase
    MyObj.Currency     = "414";          // KD Currency
    MyObj.Language     = "USA";         // Payment Page Language
    MyObj.ResponseUrl  = "https://www.YourURL.com/ASP/Response.aspx"; // Your response URL where you will be notified with of transaction response
    MyObj.ErrorUrl = "https://www.YourURL.com/ASP/Error.aspx"; //
    MyObj.TrackId      = (new Random().Next(10000000)+1).ToString(); // You should create a new unique track ID for each transaction
    MyObj.ResourcePath = @"D:\Resource\"; // Directory to your resource.cgn ending with \
    MyObj.Alias	   = "YourAlias"; // Alias of the plug-in
    MyObj.Udf1         = "User Defined Field 1";
    MyObj.Udf2         = "User Defined Field 2";
    MyObj.Udf3         = "User Defined Field 3";
    MyObj.Udf4         = "User Defined Field 4";
    MyObj.Udf5         = "User Defined Field 5";

    //Perform the payment initilization

    short TransVal;
    string varPaymentID, varPaymentPage, varErrorMsg, varRawResponse;

    TransVal = MyObj.PerformInitTransaction();  //return 0 for success otherwise -1 for failure
    varRawResponse = MyObj.RawResponse;
    varPaymentID   = MyObj.PaymentId;
    varPaymentPage = MyObj.PaymentPage;
    varErrorMsg    = MyObj.ErrorMsg;

    /*
    'response.write "Transaction Value " & TransVal & "<br>"
    'response.write "Raw Response " & varRawResponse & "<br>"
    'response.write "Payment ID " & varPaymentID & "<br>"
    'response.write "Payment Page " & varPaymentPage & "<br>"
    'response.write "Error Msg " & varErrorMsg & "<br>"
     */ 
        
    if (TransVal != 0){
       Response.Redirect("Error.aspx");
    }else{
        Response.Redirect(varPaymentPage + "?PaymentID=" + varPaymentID); // Redirects user to KNET Payment Page with parameter PaymentID
    }
    %>



</html>
