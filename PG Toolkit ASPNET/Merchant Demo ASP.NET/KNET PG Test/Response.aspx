<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Response.aspx.cs" Inherits="KNET_PG_Test.Response" %>


    <%
        /*
            'This merchant demo is published by Knet as a demonstration of the process
            'of Online Knet Payment Gateway Transactions. Note however that this is not
            'a fully running demo and there are parts that the merchant has to build him self.
            'Also, this demo is not tested for security or stability, and Knet does not intend to recommend
            'this for production purposes. Merchants should build their own web pages based on their needs. 
            'This demo is just a guide as to what the whole process will look like.


             ' Declaration of variables
          */   
            string paymentID, result, postdate, tranid, auth, trackid, refr, udf1, udf2, udf3, udf4, udf5;

            // Reads the parameters passed via POST request by the PG
            paymentID   = Request.Form["paymentID"];
            result      = Request.Form["result"];
            postdate    = Request.Form["postdate"];
            tranid      = Request.Form["tranid"];
            auth        = Request.Form["auth"];
            refr		= Request.Form["ref"];
            trackid		= Request.Form["trackid"];



             // Optional. Only sent back if it was set at beging by merchant
            udf1        = Request.Form["udf1"];
            udf2        = Request.Form["udf2"]; 
            udf3        = Request.Form["udf3"]; 
            udf4        = Request.Form["udf4"];
            udf5        = Request.Form["udf5"];


            /*
            ' Use the payment ID or Merchant Tracking ID to fetch the transaction
            ' data from Merchant database. Here we simulate using the preassumed
            ' Order Object
            
            'Order.fetch(paymentID)

            ' If Payment ID not found in database, redirect customer to error URL
              
            '  response.write "REDIRECT=https://www.yourdomain.com/error.asp"

            ' We will use Payment ID here to match the transaction response with request

            ' If payment ID Not Equal to stored payment ID, output REDIRECT=<Error URL>
            ' and log error payment ID not found if desired. Payment Gateway shall
            ' process the output and redirect the customer accordingly
            ' This step is not really necessary if you have used Payment ID to fetch
            ' the transaction data from database.

            'If Order.PaymentID <> PaymentID Then
               
            '  response.write "REDIRECT=https://www.yourdomain.com/error.asp"

            ' You need to check that the track ID is the same also for more authentication
            ' If it was mismatch, send customer to error page
            ' In production, you must also ensure you have not received two responses
            ' for the same Payment ID Or Tracking ID

            'ElseIf Order.TrackID <> TrackID Then
            '   response.write "REDIRECT=https://www.yourdomain.com/error.asp"
            'Else

               ' Update the merchant database with the result of the transaction

            '   Order.result    = result
            '   Order.postdate  = postdate
            '   Order.TranID    = tranid
            '   Order.auth      = auth

               ' Log transaction completion if required and send back response to
               ' payment gateway
            */
	            if( result=="CAPTURED"){
	            // Read by PG and redirects the user to this URL 	
                    Response.Write("REDIRECT=https://www.knetpaytest.com.kw/ASP/Result.aspx?PaymentID=" + paymentID + "&Result=" + result + "&PostDate=" + postdate + "&TranID=" + tranid + "&Auth=" + auth + "&Ref=" + refr + "&TrackID=" + trackid + "&UDF1=" + udf1 + "&UDF2=" + udf2  + "&UDF3=" + udf3  + "&UDF4=" + udf4 + "&UDF5=" + udf5);  
                }else if(result=="CANCELED"){
                    Response.Write("http://www.google.com");
                } else{
                    Response.Write("REDIRECT=https://www.knetpaytest.com.kw/ASP/Error.aspx");
                }
            %>

