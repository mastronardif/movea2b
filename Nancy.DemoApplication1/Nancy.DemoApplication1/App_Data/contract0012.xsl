<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:output method="html" encoding="utf-8" indent="yes" />
  
<xsl:template match="/">
<xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html></xsl:text>
<html>
<head>
<meta name="viewport" content="width=device-width, user-scalable=false;"/>
  <link rel="stylesheet" type="text/css" href="../../Content/css/myletter.css" />
</head>
<BODY>                  
  <form id="contract0012" action="../contract001/contract0012" method="POST">
  <span style="color:green;"> 
  <b>   Step II</b>  </span> <br/>

    Hi <xsl:value-of select="Contract001/name"/>, <br/>
    Your request to move stuff from A to B is almost complete.
    <br/>
    
    Please review the below and submit to continue your order.
    <br/>


    <p>
      <div class="form">
        <div class="row">
          <span class="label">Name:</span>
          <span class="value">
            <xsl:value-of select="/Contract001/name"/>
          </span>
        </div>
        <div class="row">
          <span class="label">E-Mail:</span>
          <span class="value">
            <xsl:value-of select="/Contract001/email"/>
          </span>
        </div>
        <hr></hr>

        <div class="row">
          <span class="label">To Address:</span>
          <span class="value">
            <xsl:value-of select="/Contract001/toaddress"/>
          </span>
        </div>

        <hr></hr>

        <div class="row">
          <span class="label">From Address:</span>
          <span class="value">
            <xsl:value-of select="/Contract001/fromaddress"/>
          </span>
        </div>

        <div class="row">
          <span class="label">Description:</span>
          <span class="value">
            <xsl:value-of select="/Contract001/whatdetails"/>
          </span>
        </div>
      </div>
      </p>
    
    
  An email will be sent to <b> <xsl:value-of select="Contract001/email"/> </b>.  <br/>
  Please reply from that email to complete your order. <br/>
  
  <br/>
    You can  Update your job status anytime via email or on-line. Status can be the following:<br/>
  <b>Waiting</b> - waiting for a shipper.<br/>
  <b>Pending</b> - working w/ a shipper(s).<br/>
  <b>Complete</b> - stuff was delivered. Job will be removed.<br/>
  <b>Remove</b> - remove the job.<br/>
  
  <br/>
  Sincerely
  <br/>
  <i>move atob</i> <br/>
  _____________ <br/>
  move A to B. <br/>
  <br/>
  <button id="yessubmit"    name="yessubmit"      type="submit=">Yes Submit my request</button>
  <button id="cancelsubmit" name="cancelsubmit"   type="submit">Cancel my request</button>
    
  <br/> <i>transaction: <xsl:value-of select="/Contract001/transaction"/> </i>
  <!--the hidden shits-->  
    <input type="hidden" id="IDtransaction" name= "transaction" value="{/Contract001/transaction}" />
    <input type="hidden" id="IDname"        name= "name"        value="{/Contract001/name}" />
    <input type="hidden" id="IDemail"       name= "email"       value="{/Contract001/email}" />
    <input type="hidden" id="IDtoaddress"   name= "toaddress"   value="{/Contract001/toaddress}" />
    <input type="hidden" id="IDfromaddress" name= "fromaddress" value="{/Contract001/fromaddress}" />
    <input type="hidden" id="IDwhatdetails" name= "whatdetails" value="{/Contract001/whatdetails}" />
  
  </form>
</BODY>

    </html>
 
</xsl:template>
</xsl:stylesheet>
