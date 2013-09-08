<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:output method="html" encoding="utf-8" indent="yes" />
  
<xsl:template match="/">
<xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html></xsl:text>
<html>
<head>
<meta name="viewport" content="width=device-width, user-scalable=false;"/>
</head>
<BODY>                  
  <form id="contract0012" action="../contract001/contract0012" method="POST">
  <span style="color:green;"> 
  <b>   Step II</b>  </span> <br/>

    Hi <xsl:value-of select="Contract001/name"/>, <br/>
    Your request to move stuff from
    <i><xsl:value-of select="Contract001/fromzip"/></i> to 
    <span style="color:green;">
    <xsl:value-of select="Contract001/tozip"/>. </span>
    is almost complete.
    <br/>
    <br/>
    
    Please review the below and submit.
    <br/><br/>


  <b>An email will be sent to  <xsl:value-of select="Contract001/email"/> </b>.  <br/>
  Please reply back and you request will be submitted. <br/>
  Hopefully someone will bid for the job.<br/>
  <br/>
  They will contact you through the email address: ________________ you provided.<br/>
  <br/>
  Please Update your job status via email or on-line. Status can be the following:<br/>
  <b>Waiting</b> - waiting for a shipper.<br/>
  <b>Pending</b> - working w/ a shipper.<br/>
  <b>Complete</b> - stuff was delivered.<br/>
  <b>Remove</b> - remove the job.<br/>
  
  <br/>
  <br/>
  Sincerely
  <br/>
  _____________ <br/>
  move A to B. <br/>
  <br/>
  <button id="yessubmit"    name="yessubmit"      type="submit=">Yes Submit my request</button>
  <button id="cancelsubmit" name="cancelsubmit"   type="submit">Cancel my request</button>
    
  <br/> <i>transaction: 2344ffuj393 </i>
  <!--the hidden shits-->  
  <input type="hidden" id="IDtransaction" name="IDtransaction" value="2344ffuj393" />

    <input type="hidden" id="IDname"         name="name"        value="{/Contract001/name}" />
    <input type="hidden" id="IDemail"       name= "email"       value="{/Contract001/email}" />
    <input type="hidden" id="IDtoaddress"   name= "toaddress"   value="{/Contract001/toaddress}" />
    <input type="hidden" id="IDfromaddress" name= "fromaddress" value="{/Contract001/fromaddress}" />
    <input type="hidden" id="IDwhatdetails" name="whatdetails"  value="{/Contract001/whatdetails}" />
  
  </form>
</BODY>

    </html>
 
</xsl:template>
</xsl:stylesheet>
