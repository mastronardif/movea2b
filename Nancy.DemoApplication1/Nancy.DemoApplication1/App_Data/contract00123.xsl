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
  <span style="color:green;">
    <b>   Step III</b>
  </span> <br/>
  <p>
    Please review your request to ship A to B. <br/>
    If the information is correct please reply back without changing a thing.<br/>

  </p>

  <br/>
  What you requested: <br/>

  <p>
    <div class="form">
      <div class="row">
        <span class="label">Name:</span>
        <span class="value">
          <xsl:value-of select="/Contract0012/name"/>
        </span>
      </div>
      <div class="row">
        <span class="label">E-Mail:</span>
        <span class="value">
          <xsl:value-of select="/Contract0012/email"/>
        </span>
      </div>
      <hr></hr>

      <div class="row">
        <span class="label">To Address:</span>
        <span class="value">
          <xsl:value-of select="/Contract0012/toaddress"/>
        </span>
      </div>

      <hr></hr>

      <div class="row">
        <span class="label">From Address:</span>
        <span class="value">
          <xsl:value-of select="/Contract0012/fromaddress"/>
        </span>
      </div>

      <div class="row">
        <span class="label">Description:</span>
        <span class="value">
          <xsl:value-of select="/Contract0012/whatdetails"/>
        </span>
      </div>
    </div>
  </p>

  <br/>
  Sincerely,<br/>
  <br/>
  <i>MoveAtoB</i><br/>
  ____________<br/>
  MoveAtoB<br/>

  <br/> 
  <i>transaction: <xsl:value-of select="/Contract0012/transaction"/> </i>

  <hr></hr>
  <br/>
  You can change your request anytime to one of the below via an eForm or on-line. <br/>
  <b>Waiting</b> - waiting for a shipper.<br/>
  <b>Pending</b> - working w/ a shipper.<br/>
  <b>Complete</b> - stuff was delivered.<br/>
  <b>Remove</b> - remove the job.<br/>
</BODY>
</html>
 
</xsl:template>
</xsl:stylesheet>
