<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"
    xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"
    xmlns:ccts="urn:un:unece:uncefact:documentation:2"
    xmlns:clm54217="urn:un:unece:uncefact:codelist:specification:54217:2001"
    xmlns:clm5639="urn:un:unece:uncefact:codelist:specification:5639:1988"
    xmlns:clm66411="urn:un:unece:uncefact:codelist:specification:66411:2001"
    xmlns:clmIANAMIMEMediaType="urn:un:unece:uncefact:codelist:specification:IANAMIMEMediaType:2003"
    xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:link="http://www.xbrl.org/2003/linkbase"
    xmlns:n1="urn:oasis:names:specification:ubl:schema:xsd:Invoice-2"
    xmlns:qdt="urn:oasis:names:specification:ubl:schema:xsd:QualifiedDatatypes-2"
    xmlns:udt="urn:un:unece:uncefact:data:specification:UnqualifiedDataTypesSchemaModule:2"
    xmlns:xbrldi="http://xbrl.org/2006/xbrldi" xmlns:xbrli="http://www.xbrl.org/2003/instance"
    xmlns:xdt="http://www.w3.org/2005/xpath-datatypes" xmlns:xlink="http://www.w3.org/1999/xlink"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsd="http://www.w3.org/2001/XMLSchema"
    xmlns:lcl="http://www.efatura.gov.tr/local"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    exclude-result-prefixes="cac cbc ccts clm54217 clm5639 clm66411 clmIANAMIMEMediaType fn link n1 qdt udt xbrldi xbrli xdt xlink xs xsd xsi lcl">
  <xsl:character-map name="a"> 
        <xsl:output-character character="&#128;" string=""/>
        <xsl:output-character character="&#129;" string=""/>
        <xsl:output-character character="&#130;" string=""/>
        <xsl:output-character character="&#131;" string=""/>
        <xsl:output-character character="&#132;" string=""/>
        <xsl:output-character character="&#133;" string=""/>
        <xsl:output-character character="&#134;" string=""/>
        <xsl:output-character character="&#135;" string=""/>
        <xsl:output-character character="&#136;" string=""/>
        <xsl:output-character character="&#137;" string=""/>
        <xsl:output-character character="&#138;" string=""/>
        <xsl:output-character character="&#139;" string=""/>
        <xsl:output-character character="&#140;" string=""/>
        <xsl:output-character character="&#141;" string=""/>
        <xsl:output-character character="&#142;" string=""/>
        <xsl:output-character character="&#143;" string=""/>
        <xsl:output-character character="&#144;" string=""/>
        <xsl:output-character character="&#145;" string=""/>
        <xsl:output-character character="&#146;" string=""/>
        <xsl:output-character character="&#147;" string=""/>
        <xsl:output-character character="&#148;" string=""/>
        <xsl:output-character character="&#149;" string=""/>
        <xsl:output-character character="&#150;" string=""/>
        <xsl:output-character character="&#151;" string=""/>
        <xsl:output-character character="&#152;" string=""/>
        <xsl:output-character character="&#153;" string=""/>
        <xsl:output-character character="&#154;" string=""/>
        <xsl:output-character character="&#155;" string=""/>
        <xsl:output-character character="&#156;" string=""/>
        <xsl:output-character character="&#157;" string=""/>
        <xsl:output-character character="&#158;" string=""/>
        <xsl:output-character character="&#159;" string=""/>
    </xsl:character-map>
  <xsl:decimal-format name="european" decimal-separator="," grouping-separator="." NaN=""/>
    <xsl:output version="4.0" method="html" indent="no" encoding="UTF-8"
        doctype-public="-//W3C//DTD HTML 4.01 Transitional//EN"
        doctype-system="http://www.w3.org/TR/html4/loose.dtd" use-character-maps="a"/>
    <xsl:param name="SV_OutputFormat" select="'HTML'"/>
    <xsl:variable name="XML" select="/"/>

    <xsl:template match="/">
    <html>
      <head>
        <title/>
        <style type="text/css">
          body {
          background-color: #FFFFFF;
          font-family: 'Tahoma', "Times New Roman", Times, serif;
          font-size: 11px;
          color: #666666;
          }
          h1, h2 {
          padding-bottom: 3px;
          padding-top: 3px;
          margin-bottom: 5px;
          text-transform: uppercase;
          font-family: Arial, Helvetica, sans-serif;
          }
          h1 {
          font-size: 1.4em;
          text-transform:none;
          }
          h2 {
          font-size: 1em;
          color: brown;
          }
          h3 {
          font-size: 1em;
          color: #333333;
          text-align: justify;
          margin: 0;
          padding: 0;
          }
          h4 {
          font-size: 1.1em;
          font-style: bold;
          font-family: Arial, Helvetica, sans-serif;
          color: #000000;
          margin: 0;
          padding: 0;
          }
          hr {
          height:2px;
          color: #000000;
          background-color: #000000;
          border-bottom: 1px solid #000000;
          }
          p, ul, ol {
          margin-top: 1.5em;
          }
          ul, ol {
          margin-left: 3em;
          }
          blockquote {
          margin-left: 3em;
          margin-right: 3em;
          font-style: italic;
          }
          a {
          text-decoration: none;
          color: #70A300;
          }
          a:hover {
          border: none;
          color: #70A300;
          }
          #despatchTable {
          border-collapse:collapse;
          font-size:11px;
          float:right;
          border-color:gray;
          }
          #ettnTable {
          border-collapse:collapse;
          font-size:11px;
          border-color:gray;
          }
          #customerPartyTable {
          border-width: 0px;
          border-spacing:;
          border-style: inset;
          border-color: gray;
          border-collapse: collapse;
          background-color:
          }
          #customerIDTable {
          border-width: 2px;
          border-spacing:;
          border-style: inset;
          border-color: gray;
          border-collapse: collapse;
          background-color:
          }
          #customerIDTableTd {
          border-width: 2px;
          border-spacing:;
          border-style: inset;
          border-color: gray;
          border-collapse: collapse;
          background-color:
          }
          #lineTable {
          border-width:2px;
          border-spacing:;
          border-style: inset;
          border-color: black;
          border-collapse: collapse;
          background-color:;
          }
          #lineTableTd {
          border-width: 1px;
          padding: 1px;
          border-style: inset;
          border-color: black;
          background-color: white;
          }
          #lineTableTr {
          border-width: 1px;
          padding: 0px;
          border-style: inset;
          border-color: black;
          background-color: white;
          -moz-border-radius:;
          }
          #lineTableDummyTd {
          border-width: 1px;
          border-color:white;
          padding: 1px;
          border-style: inset;
          border-color: black;
          background-color: white;
          }
          #lineTableBudgetTd {
          border-width: 2px;
          border-spacing:0px;
          padding: 1px;
          border-style: inset;
          border-color: black;
          background-color: white;
          -moz-border-radius:;
          }
          #notesTable {
          border-width: 2px;
          border-spacing:;
          border-style: inset;
          border-color: black;
          border-collapse: collapse;
          background-color:
          }
          #notesTableTd {
          border-width: 0px;
          border-spacing:;
          border-style: inset;
          border-color: black;
          border-collapse: collapse;
          background-color:
          }
          #Temizle{
          clear:both;
          }
          #IbanTable{
          border-width: 2px;
          border-spacing:;
          border-style: inset;
          border-color: black;
          border-collapse: collapse;
          background-color:
          }
          #IbanTableTd{
          border-width: 0px;
          border-spacing:;
          border-style: inset;
          border-color: black;
          border-collapse: collapse;
          background-color:
          }
          table {
          border-spacing:0px;
          }
          #budgetContainerTable {
          border-width: 0px;
          border-spacing: 0px;
          border-style: inset;
          border-color: black;
          border-collapse: collapse;
          background-color:;
          }
          td {
          border-color:gray;
          }
        </style>
        <style>
        .bankadiv td, th {  
        border: 1px solid #ddd;
        text-align: left;
        }
        .bankadiv {
        border-collapse: collapse; 
        border-spacing: 0;
        
        }
        
        .bankadiv table td, th { height: 30px; }

        </style>
        <title>src="data:image/jpeg;base64,/9j/4QAYRXhpZgAASUkqAAgAAAAAAAAAAAAAAP/sABFEdWNreQABAAQAAABkAAD/4QMZaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLwA8P3hwYWNrZXQgYmVnaW49Iu+7vyIgaWQ9Ilc1TTBNcENlaGlIenJlU3pOVGN6a2M5ZCI/PiA8eDp4bXBtZXRhIHhtbG5zOng9ImFkb2JlOm5zOm1ldGEvIiB4OnhtcHRrPSJBZG9iZSBYTVAgQ29yZSA1LjYtYzEzMiA3OS4xNTkyODQsIDIwMTYvMDQvMTktMTM6MTM6NDAgICAgICAgICI+IDxyZGY6UkRGIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyI+IDxyZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSIiIHhtbG5zOnhtcE1NPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvbW0vIiB4bWxuczpzdFJlZj0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL3NUeXBlL1Jlc291cmNlUmVmIyIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOjZDNDJBNEI2QjVCRDExRThCQjM0REIwQkZGMEQxODY0IiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOjZDNDJBNEI1QjVCRDExRThCQjM0REIwQkZGMEQxODY0IiB4bXA6Q3JlYXRvclRvb2w9IkFkb2JlIFBob3Rvc2hvcCBDUzQgV2luZG93cyI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSIzREVENkU1N0FDREVDNEJBNzkxNUM2M0NCN0RENzM0NyIgc3RSZWY6ZG9jdW1lbnRJRD0iM0RFRDZFNTdBQ0RFQzRCQTc5MTVDNjNDQjdERDczNDciLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz7/7gAOQWRvYmUAZMAAAAAB/9sAhAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEB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"/></title>
      </head>
      <body style="margin-left=0.6in; margin-right=0.6in; margin-top=0.79in; margin-bottom=0.79in">
        <xsl:for-each select="$XML">
          <table style="border-color:blue; " border="0" cellspacing="0px" width="800" cellpadding="0px">
            <tbody>
              <tr valign="top">
                <td width="40%">
                  <br/>
                  <table align="center" border="0" width="100%">
                    <tbody>
                      <hr/>
                      <tr align="left">
                        <xsl:for-each select="n1:Invoice/cac:AccountingSupplierParty/cac:Party">
                            <span style="font-weight:bold; ">
                          <td align="left">
                            <xsl:if test="cac:PartyName">
                              <span style="font-weight:bold; "><xsl:value-of select="cac:PartyName/cbc:Name"/></span>
                              <br/>
                            </xsl:if>
                            <xsl:for-each select="cac:Person">
                              <xsl:for-each select="cbc:Title">
                                <xsl:apply-templates/>
                                <xsl:text>&#160;</xsl:text>
                              </xsl:for-each>
                              <xsl:for-each select="cbc:FirstName">
                                <xsl:apply-templates/>
                                <xsl:text>&#160;</xsl:text>
                              </xsl:for-each>
                              <xsl:for-each select="cbc:MiddleName">
                                <xsl:apply-templates/>
                                <xsl:text>&#160;</xsl:text>
                              </xsl:for-each>
                              <xsl:for-each select="cbc:FamilyName">
                                <xsl:apply-templates/>
                                <xsl:text>&#160;</xsl:text>
                              </xsl:for-each>
                              <xsl:for-each select="cbc:NameSuffix">
                                <xsl:apply-templates/>
                              </xsl:for-each>
                            </xsl:for-each>
                          </td>
                          </span>
                        </xsl:for-each>
                      </tr>
                      <tr align="left">
                        <xsl:for-each select="n1:Invoice/cac:AccountingSupplierParty/cac:Party">
                          <td align="left">
                            <xsl:for-each select="cac:PostalAddress">
                              <xsl:for-each select="cbc:StreetName">
                                <xsl:apply-templates/>
                                <xsl:text>&#160;</xsl:text>
                              </xsl:for-each>
                              <xsl:for-each select="cbc:BuildingName">
                                <xsl:apply-templates/>
                              </xsl:for-each>
                              <xsl:if test="cbc:BuildingNumber">
                                <xsl:text> No:</xsl:text>
                                <xsl:for-each select="cbc:BuildingNumber">
                                  <xsl:apply-templates/>
                                </xsl:for-each>
                                <xsl:text>&#160;</xsl:text>
                              </xsl:if>
                              <br/>
                              <xsl:for-each select="cbc:PostalZone">
                                <xsl:apply-templates/>
                                <xsl:text>&#160;</xsl:text>
                              </xsl:for-each>
                              <xsl:for-each select="cbc:CitySubdivisionName">
                                <xsl:apply-templates/>
                              </xsl:for-each>
                              <xsl:text>/ </xsl:text>
                              <xsl:for-each select="cbc:CityName">
                                <xsl:apply-templates/>
                                <xsl:text>&#160;</xsl:text>
                              </xsl:for-each>
                            </xsl:for-each>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <xsl:if test="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:Contact/cbc:Telephone or //n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:Contact/cbc:Telefax">
                        <tr align="left">
                          <xsl:for-each select="n1:Invoice/cac:AccountingSupplierParty/cac:Party">
                            <td align="left">
                              <xsl:for-each select="cac:Contact">
                                <xsl:if test="cbc:Telephone">
                                  <span style="font-weight:bold; "><xsl:text>Tel: </xsl:text></span>
                                  <xsl:for-each select="cbc:Telephone">
                                    <xsl:apply-templates/>
                                  </xsl:for-each>
                                </xsl:if>
                                <xsl:if test="cbc:Telefax">
                                  <span style="font-weight:bold; "><xsl:text> Fax: </xsl:text></span>
                                  <xsl:for-each select="cbc:Telefax">
                                    <xsl:apply-templates/>
                                  </xsl:for-each>
                                </xsl:if>
                                <xsl:text>&#160;</xsl:text>
                              </xsl:for-each>
                            </td>
                          </xsl:for-each>
                        </tr>
                      </xsl:if>
                      <xsl:for-each select="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cbc:WebsiteURI">
                        <tr align="left">
                          <td>
                            <span style="font-weight:bold; "><xsl:text>Web Sitesi: </xsl:text></span>
                            <xsl:value-of select="."/>
                          </td>
                        </tr>
                      </xsl:for-each>
                      <xsl:for-each select="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:Contact/cbc:ElectronicMail">
                        <tr align="left">
                          <td>
                            <span style="font-weight:bold; "><xsl:text>E-Posta: </xsl:text></span>
                            <xsl:value-of select="."/>
                          </td>
                        </tr>
                      </xsl:for-each>
                      <tr align="left">
                        <xsl:for-each select="n1:Invoice/cac:AccountingSupplierParty/cac:Party">
                          <td align="left">
                            <span style="font-weight:bold; "><xsl:text>Vergi Dairesi: </xsl:text></span>
                            <xsl:for-each select="cac:PartyTaxScheme">
                              <xsl:for-each select="cac:TaxScheme">
                                <xsl:for-each select="cbc:Name">
                                  <xsl:apply-templates/>
                                </xsl:for-each>
                              </xsl:for-each>
                              <xsl:text>&#160; </xsl:text>
                            </xsl:for-each>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <xsl:for-each select="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:PartyIdentification">
                        <tr align="left">
                          <td>
                            <span style="font-weight:bold; "><xsl:value-of select="cbc:ID/@schemeID"/></span>
                            <xsl:text>: </xsl:text>
                            <xsl:value-of select="cbc:ID"/>
                          </td>
                        </tr>
                      </xsl:for-each>
                    </tbody>
                  </table>
                  <hr/>
                </td>
                <td width="20%" align="center" valign="middle">
                  <br/>
                  <br/>
                  <img style="width:91px;" align="middle" alt="E-Fatura Logo" src="data:image/jpeg;base64,/9j/4QAYRXhpZgAASUkqAAgAAAAAAAAAAAAAAP/sABFEdWNreQABAAQAAABkAAD/4QMZaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLwA8P3hwYWNrZXQgYmVnaW49Iu+7vyIgaWQ9Ilc1TTBNcENlaGlIenJlU3pOVGN6a2M5ZCI/PiA8eDp4bXBtZXRhIHhtbG5zOng9ImFkb2JlOm5zOm1ldGEvIiB4OnhtcHRrPSJBZG9iZSBYTVAgQ29yZSA1LjYtYzEzMiA3OS4xNTkyODQsIDIwMTYvMDQvMTktMTM6MTM6NDAgICAgICAgICI+IDxyZGY6UkRGIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyI+IDxyZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSIiIHhtbG5zOnhtcE1NPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvbW0vIiB4bWxuczpzdFJlZj0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL3NUeXBlL1Jlc291cmNlUmVmIyIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOjZDNDJBNEI2QjVCRDExRThCQjM0REIwQkZGMEQxODY0IiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOjZDNDJBNEI1QjVCRDExRThCQjM0REIwQkZGMEQxODY0IiB4bXA6Q3JlYXRvclRvb2w9IkFkb2JlIFBob3Rvc2hvcCBDUzQgV2luZG93cyI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSIzREVENkU1N0FDREVDNEJBNzkxNUM2M0NCN0RENzM0NyIgc3RSZWY6ZG9jdW1lbnRJRD0iM0RFRDZFNTdBQ0RFQzRCQTc5MTVDNjNDQjdERDczNDciLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz7/7gAOQWRvYmUAZMAAAAAB/9sAhAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAgICAgICAgICAgIDAwMDAwMDAwMDAQEBAQEBAQIBAQICAgECAgMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwP/wAARCABmAGkDAREAAhEBAxEB/8QAtwAAAgMAAQUBAAAAAAAAAAAACAkABwoGAQIEBQsDAQABBAIDAQAAAAAAAAAAAAAGAAQFBwgJAQIDChAAAAYBAwMCAwUHAwQDAAAAAQIDBAUGBwARCCESExQJMSIVQVEyIxbwYXGBoRcKkbHB0VIzJEI0JxEAAgECBAIHBAcGBAQHAAAAAQIDEQQAIRIFMQZBUWEiMhMHcYEUCJGhscFCIxXw0VJiMwlyU3Mk4YKiFtJDg9NUJRf/2gAMAwEAAhEDEQA/AN/GlhYmlhYmlhYprMnILDXH6BJYsvZDrlKZOD+CLZyb0hpywPTbAlGVqutgXnLFKLGMAEbsm66xhH8O3XUjtu1bhu0/kWMZdqVJqAB7SSAPpz6MNbi8t7ZdUzU9x+4HA4o8kORGWa9LT+DePCmO6yyKdRtkLl3KymIGT1gkQyzmaj8bRUJZMgpxaDb80DzKUEYwFEDFKUO/Up+k7VY0ivrlpL6tDDFHqoa+EyaqV7AD1YbC4u7gFoUCRUyYkfTpp9uB4XuHJG15XisNWf3DMc48v1hWZNoiAwjxNeSVZdyEtT5HIUbVm+XMqSF7obu5vaBEOJpCMI7byq0UT1hGfpzEOM2YNtG1ncYtnY28dSztcnXQOIy5irrCCRhHr0aNZ0atWWGzC4acQPcjWeHcyrStK8K0FaVrTOlMAhycznyH475S5B48ccs+TFun8Y4wr9uxikwDAMAXLN/ev8TtLLTE45fBsjFViNrTHM8PKKujLuVPpyL9UUCpMjrGK9i2PZd6sbO9+GjiinuCkpLFhDHSUrJ0FyxgkULQd7QNRLgCPupJ7aSSLWWZUquXiPdqOoU1Ka55VNKDBeROQOVddttBx7Ec9q/KZCvdLirdCVjkdxCVSo8uuvQ3eSJesQOZsXp4qrMpLRFSinr9fsO4XQZtV1ToGMgskmNGz2trWa9/SxJaxSFWZLo60GsRqzQhtSguVUErp1MBU1FX2q4jdUE5EjCoBTI5EkBiKEgAmnGg7McrxB7hXJFxUavdMr8RZ/ItFtGPqXlJnkPig7l7+6aUTISEm6p07N4juUPUrwU8ywiFXXpIVaedpIGIfxGTUTOdpuPKu3W7vbx3ax7kk0kRhZSQJI2AdPNqF7tfERQnu1qDjm33G7Kh5Iy0BUNqqB3TmDQD9uOGB4L5RYF5KRTqSw3kmvW5zFH8FirJF1Iu71F6XYqkdcKRLpMbVVn6Rx7RSetEDCPw3DqItuWz7ltThL2Mx1FQahgfeCRXs48MsxiTt723uFDRNU+/7wMX/qNw6xNLCxNLCxNLCxNLCx0H/YP266WFhdeU+WVtyLklbjjxHcVBe7lmVqneM73h0iOMcXT6UU9mpGp1eHFyye5nzJHV5gvIfpyMWIixaoHWkXTVMuxjOy5fgsbH9Y34P5QXUkKhiZFqFJaRCfKAZ08YFSQtQTiHnvJLiQW1kQGJzbLLp8LDPgeHtwAY3zGuPWrm54PreUs88nJeWjJcnKnLVLYZDtmUMVQl2PRM2XHjTBsnFkNCRuGbOo2aT9dY16OexUWqeRTiZYiBBWKfgbu90W27yQwbLGrBbcPp8iVo/MhjnkKJQTqC0beYUZqIXjOas0MUA1QBnuSRV6eJQaMyrU+AnvClQMwG6T6s+Icoc0OH9HcWyfmsF8h1KraWjO0hVLDXooXVgjLBjm1Gs+JJqZZTDjHeVqY6Uepwc2ZrMRZHjNydKPlmJU24rBuNhyzzHKIES72bzFqmtWailZF0TBSolicBfMjBR9LKC8TnVJNDLe2S6iY7mhzoQMwVNVr4WGek5ioOTDK4obhjhyFzND55YJ2COv7CEpsVLhBygQkBaHlCqTukViWnWrRuM24COrT0W304JEIhyVBso5auFmrdVOMk5k3KXbG2lyjWZZyuoamQSOHYKT3RVhXVp1irBWAZgXAsoVmFwKiSg4ZA0FBXp4dFacMshjzsm8LuN+Xrn/cK+Y+JMXAz6wSSk0E5YW6yj6zYlfYQklwboygM2/8A+dPzNkiIppJpOk0ngF9WkRcvFjzNvW3Wxs7SbTbFVXTpU5LMJwMxX+qAanMiq+EkYUtlbTOJJFq4JNaniVKH/pNPr44q+1+3dhGXkbnYqhK3jG9st1TyBWUp+vSzKRWr7zI2J4TDExaYn9RxsrIFsDClVxmRiY7oUGiyZjppgCyxVHtvzhukSRQ3KxT28UkbaWBAYRytMEbSVGkuzaqCpB45Cnk+3wsWZCyOwIqOiqhaitc6AUwM0zTc14bzfW8Z8dyPrFk3IGUrxkG6P31fyPCYMxlg+HwvH4OwUxus8oRlWrfCY1gGMa9SrUW99fPWtqsdII9I7t8zm4bnbNy2t73eSsdjBbpGgDRm4lnaYzzlFzZGkYuDK66Y4SAdZCI7VkmhnEVuCZXck1B0KoXSteg0FO6DVmqchUjjlKjcXc+8hT673FVywVl+jQknJYo5hY0lH9NzFLtavYGdTcy91QjaPCU+PaWyUclkWdTcy9yYLMCroyKce/arM0u94t1yrZosVwk9lMwE9vRdI1KW0JIWaRgo7rvoiGqhQSIwc+axx7g7dwpKtdD51yNKlaBRXoFWy46SCBdOL+Y17wjkNvx25oy1QmXQ2tpjuicrqAdmjji7297GsZmIoOZaswcP1MA5kkYWWZroMX6oRU0Dkh2C/cYEdRN9y/DuNou6bCrpqTW1uVbuKCU1JJIR5oZkbwVoarxAGO8F7LayC1vaNnQPUZmgNCqjKlRx48cNIAQMACA7gPUBDfYQ+z+ICH+ugsmhNeIxNY7tc4WJpYWOm/XbSp04WAa5EXG9ZVsT/jlh+0KUGOaRqcvyLzo2cN2quIaEugZ6EBVJB2PoEcm29i2UBFVYDJQ0cKj5UO4G5Dlmz29ttcUe9X6+ZMx/28IrWQhtLMStdOg5qGXvHgOnEVdNLdObWE6UHjbq6RkaVr2HLC+5q3wsvIYzwXxQM1uHGWbZ3TGuPYDjO8MllWlZ2gkcf3qIz7l/JttgUT4yewzhxKO0zOyvGc5FeoduTTakszikyqG1eKObc9+URb2nlyyNcgCKSA+ZEYIooyPOL0QMRR1koB5XlvKWpapWC1Oq3NVGjxBsm1Mx8NM6DgR/FqC4a/gjj/D4nhVX88SAsOSrHZH+RbrYYmIcxdYJlCz12JgshWjHFVk5KcLjdrf3UYeRlWkeumk9lH7x0oHe5UDQFu27ybhKFi1pZRoI41JBfylYtGsjgL5pjBCqzCqoqqMlGJa3t1hWrUMhOokcNRFCVBJ014kDiSTxJwRJjFIUxzCBSlARMY3QAAOoiI/YABqGHbhyATkMzjOh7nfuPPTOZfBeC7Q8g0IZx47zkKDknMa+I8bggv8ARq9KMFW7psdsoBiuVSH+ICQPt2qDnnnRrQ/p21OVkU95x0cMgGUgjtB/47QPlE+U223iKLnv1EtxLaTLWC2Y5FalTIzw3IYN/I6ZDt8OeWZ5f52TeLgnygzaBUznD8vKt2AoABhD8JZrp8Nvu1VLc47+h7t24PsX/wAONldp8sXo0YVL8u21SP8ANn6P/XxU07zr5IKPm0JWuQ2fpiYfrps2LZrlK9rLuXK5wTSSSbpzYnUOY5gAOn26UPNfNFy6xQ3T6iacE6faowx3b0G+Xzlyyk3HdtitUtolJbv3bUp/gkY/QDh9vtmYG5Vz9ormVORPIbkQ9FJRGUhsdI5Xui0IQiyCgpFtiDuVWI/MIKFHwB8hRD5u7VzcpbXvwVLzd7lmPEIQvt4o33Y1R/Mj6l+kUpn5c9M9igt4xVGnWW4JND/l3NuCOB4P78aMMg46ta2JcutuOi9HxDm/IUDJuYnIbinRrhBS9LNFEmNjtabJqkrNSZPIcib12m/FqqcFzt3ZCGbLXHt9/b/H2rbyJbna4nAaPWQfLBzVSfCOwFa8Ayk6hr4niYxyfC6UmYGhp09Z/Y+w8MJlwfx0xbS7dkeD5QMnWO8QytUk8ZSOLs0RFZtmcc0ucszUJb7Vk3OeTcZ3iwsbfjLGuYSS5anfJqtwbxm8lVzKS6SBUklrM3jeLu9tIW2fTcX+sSeZEWW3hEStGsUEMsSlJZIdBlhjlkUhFpHqBKwUFrGjsLmqw0pRs3YsQxZmVjVQ1dLFQcznTicfHa/5G4r5fh+EvIKxS91ptoZyL7h3n+xLCvKXOswjcF3mC8oy6opldZlo0ckZZm9EpAsEOQFdvVIOAMI7pa229WDcwbaAs8dPiYxWiFm0q4LEatfEhQafizqS9tXktJlsZjVGroPXQVIy6u0+zDPdtvhoNz92JboxOv36WOKHrxTGfssJYaxhPXBJr9Usaws65RK8Uf8A2LTkCyuk4am1tonsYyisrOu0SD2gJgT7jbDttqT2jb/1K9WBiBAAWcnhpXM9IOfDI9PVhtdz/Dwlx4zkPbUDtwoPM7fK+LpzFGI5CauOB5q62mwM8n8lsnMofIHC/PqeV6n3Wen5RpERLCZja7FlB9H1SutZd9TZFvClVWYTC+/0x3Ym1Dbr6K53MJFdhEVktoS0d7A0TZSQyFf6axB5XKJOoOlXiWgkSIlE0Hl24JiqSC7UMTBhwYA8SxCipQ8SGPhLJ+K/FtlghCzXSzOWM/mLJKqr25zLVpV146rMX1hn7qpjCiWKJx/QLNM4yrlxt8s5ijWBN7MESdgks5OmiiRMK37fW3Ux2sAKbbAKItXq5CqnnSK0kirK6Igfy9KVWoUEkmVtLQW+qRzWd+JyyFSdIIVSVBJpqqc+OC80O4eDCmvdM5knwFjlPGNJkSoZMyKycJeoRUTFeuVg3e3eyxiGIYSOHQgZFubpsfcwD8ugLnnmP9HsPhrc0vJRQdgyqc1I6eGMzvk79CT6o85DmDeIw3LG3SKWBP8AUlz0r3ZopAAQDqAZa5EHOmK3LuRVnay8OxcnOUVFDO1xP3KLrKj3HUOcdzHOcwiIiI9RHWM13cM0lK59P1dmPoE5U2CGyt0OmiKoCipNAAOnUa8OnAf2KZdeVGMjE13krILJtWrRukZdy5dLn8aaSSae51FFDjsAAHx14W1u08qQJ4mNB+1cSHNW/wBrsG3SXly2m3jQljQnICvQrHgOgHGlT2sPa+j6dHlzrnVi1/UyccacVCUKb0NJh0SerV3Kr+T9S8CfcooIfl/hAQ66yB5P5Sg2iAX17/XpU8e7w/hcg/RjRh8zXzIbx6ncxHk7lZv/AKsyGNRRD5rE0p+baxOmf89O3BjWz3ocH8ecpwNLh8RvZbF4yhoeVv6Ms3bvfGgqLUZiPizs1PUR5TmA4gKyZhT3EAEdgHtJ6l2druS2SRarQtQvqYdnh8sn68Se0fIJzXvnIEnNF5f+Tvwh1rbiGFw1aMAZhfKgyPHRl1VxozpVur96rEHbKu9RkIOwRbKWjHaBgOmuyfoEcNlSmD/uTUD/AF1a0MyTxLNHmjCo9hxrq3XbrvaNxm2y+Gm6gkKMKg0Ycc1JB9xI7cL/AOeXEaiZMjZbPB6vWrLZabXI1xc6lfLlM0rFt/q1FSt54dxlKXgKndbWWoY6hsg2V7IRcC3YubbHulYiRWcsDg0Mdcpcx3dhIu1CSSOCRzoeNFeWN5NFfKDPGmuQxRKryFhCwEsYWQasDe4WUcymegLACoJIVgK01UBNAGaoFNQOlqjLFNUnFeW+YnFS0Uzk1c/0pyztMLSOQGPm7C1UdwGBrxGM/LjiyY9pEBFRF4oMNVbxFLx8q1nDSjpy4I9aqSTryLopP76823YN/S42CPXsUUjw6yrgy0JqZJCWR20srKYwq6aflqDn4JDLe2ZS9IF0wDUqO77AKECoIzqa9JwbnCbkQ+5L8f6zebTFp1rKcBITuN82UvYCL0zL+PpVzWbvCrIB8yDVxIsfXsBH/wAsa8bqhuU4aFuY9qj2jdpLeA6rQ6WQ9YKg04k5EkZmpAB6cPNuuvirZWbKQZH3ZdQ40wWmoPD7CtOVOa6rHcs8R1m3hKvaRx4qsdnOwwtejFZ6ftWWsq3aOwFxxokLApmIaSsVjtlnkFI0m5Sg5bgc5kyl8pDnZdrnk2KURIPiL2oR2OlUjgDSTOx6ECK5b/DlU8Ia5nX45S3gh4gcSZAAoHaWIA49tMHKhlSMsGVk8RxrCMcykNTY293+LsTuTh7JXIiwrqpUCTgYVetPYG7R0jNwUm0kHDWWS+jPGSRTFVOsAEFzYvFYfqDlhG0hSMqAVYqPzAzagyEKyFQUOsMeFM5PzQ0vkilQtTXiK8KClDmDXPKmLm1HY9sehs9hjanXZqzTK5WsVAxjyVkHB9+1FoyQOuuce0pjfKmQR+A68ppY4I2nk8CAk+zEhtW23O77lBtdmNV1cSqijIVZjQZkgD2kgdZxgz5t8lZjM2UMgZUk3ah/rko6jaw3Oc4kYVdk4XRh2qJDAUUwFtsocAAA8ihh1ipzZvcu7bk92fATRR1AUHHSCfeK4+kb5cfSq09O+Q9v5atV0yrGHmNT3pGIdmI82QA50oracqgCtMKYnpYyaTp+5OInMBj9xuoiOw/fvoJHeI7cZVTOtlbgdAH2fThm/tEcNls65IVzZcoVSQgK9IGjaWzdpFO0eS4ABnUodM+4KFj0z7JdNgOO/wBmrk9O+XTLJ+pTr3QRpz+ng32jGpf55PXN7RP+wdnlo7qTOdPAVGkd+3NaiuaSZVzxqL9xtw548e31kN1XyKM3EqWErUo6bE2WTjZx+kzf7mT+YpVEFBKI/Zvqy+d7h9v5alkg40C17CR119mMHPk+2S05x+YDbLPcQHiBllUZjvJE7Ke6ycDQ5mlejGEzPmQFbi/iYyLFRycSJs2iCZDCos6dLJlApSiACJjG2ANYxRNJeXSBRVy33+7H0C75Jb8sbBM9wdKrCSeJ8K8ctfUeGPoVe2OWyxvFnFNctSi6ktB0mEZugXEfIRQjRIfCbcR6oFMBB+4Q1lxy+kkO2QxSZHR2fdj5l/WG8s9x5+3G+s/6UtwxB73RRfxAHOnUMMXEpTFEpgAxTAJTFMACBgENhAQHoICGpwZcMVbhLdLxZTeE3JpS3HpecpynSFrHHEbekIvEOMeN2K4zP1vpxWS7lL9Rt8t5xyROSqUBEy80VlKEVXjwcuytjoLuwsq43C45o2L4cS2iXKp5hQmeW5mNuj1AOkwwRIvmOiakIDFV1AquIVIksbrXpkMZOmvcVF1kcc9TMTQE0PCppmcXFj4n9gvc9y9j5EAZUPmniCJzzXGRNko9tmjDBozH+TisG5Pywd22lScLJOxApRM4ZKKmEx1h1FXbfqfJ1tIo/M293VyTxErilB2dwdJ4nLpUNbbdpEHgmAPvVa/v6sND0FYmsIDs2RsNPuTnNH+/0Ra31Gy1yOwpxnjrRTf1YSfxa54+cdJ/kTBX2GdUSOk7izmYHJ8K0PHuY8qa7CSfouxOVNBQDW3a2e6nYdvm2p41ubS2uJQr6NMqzTxQvERIQhVknbWrEhkDLTPAyskJupfiFYrKyCorVSqswbLMEFBQjgaHDHuIFbwvIK3LKeOuQGSeTllk2cFQ5fI2VJmIk5+v1yAVk7HCUWNZV+i46iIuPbObSu6WUNHHkXqqpBeOVzIpAkF8xT7ioisLuzgsYFLOI4lYKzNRWkJeSRiToAA1aFodCrU1mLNIe9LHI0rGgqxFQBUgZBR09VT0k0wb2hjD7CwPdvy6ti3iFa42Pc+nl8jv2FKZ9pxIqLR84TWlzJG3ASmJHInDcPh3aCufdyNhsEgXxy0X3VFeg9H24yz+TLklOcfWuxkuFraWKvMf8XluEGToeIJqK8OB6MLuXpoziSQjCHHxNkw7vtDuETb/AB/ntrFm6l1vkch99MfRhyxaCG2Eh8RA+wduB9Tr8nfLdWKDCpmWkrNNx0K2TTL3GFZ+5SQ7gAA3MCYKdw9PgGvXa7R729jt08TEftxHR24G/U7mmDljlm73iY0jt4S3AnOlAMkc5mg8JxsjwfyA4ve3DVKRh65Qlxf2SvUqvvpAavCNZBo2cSTBJc53Sp3iC4vnCvcqYBJ0KYvXWSS8wbJytGm13RYOi9Ac1qAa8GpXjxONEMnoX6s/MVc3HP8AsUcb2d1O1NclslCraSBWSFjpIpUxrXiK8cWFmn3XuB/JLE10xBeK5lBStW+GcxbwFq03RcNBUTN4HzU5pAQTdslRKomb7DF/lprf88cp7pYSWc7PokWnhk9vQB0jrwTcjfKB8x/pzzbZc17JBbJuVrLqU+fZN2EUeZ1zB4lTTjTCJuIeDOEWROYELSaJL5RyFZirS8pV21trMPH1uLbwzdd4s4kFmko5XcOG6JfyzeHtE4B0D46C+Utv5dk3cJZsZJeIykWgFTXM0OMmvmk5r9c7P03+L5pjWzsnYLKA1hMGJ0gKDGmsAE8QBWufDG3fDdFRo1WZx6JSlEECAPaGxR6BsABsGwB2/dq+7eNUjBHGn7v3Y03bnctdXTO3iqf24DFwa98R+FIc96rjNHM+Mckz87doG7xsMwr9RnsZ4MwRkq7VqdbTj2WauK1kHkHH2Sh4wt0uzfGK1OWPRk3SDYfTODqFSTLYHKV1ejbp7KJYntGYs6Sz3EUbrpA78dsySSopFT3iqk94UqcRG4RxGZJGLCQDIqqMwPYXBCk+yp6MftyugnGL8re1ZkBaw3C1S1W5Iu8OzNqvx4Y93moLPeLbPAPAs6tdiIKEJKL26LhjrJs2bZqUyHaRIpSlAPPZrmK62jfIgscYlSJlWPVoXy2diF1FmI4ULMT0kk48r1Cl5aMxZiC2ZpU5DjSgr7BhtG4fsA6A8TeoYVpwKga/I5k5/KzkUyf2mlc9L5Y6++et0l30Cjb8K4ziEn0YsYBO0UkoMXTYTF2MLdQ5N9jCAmfMDzx7Pt3lsRDLbsrAHxaXVsx0gEqR2jsxCbYEM82rNlK0y4VBH14aZoMxOY6Dv9n7f76WF0duM4Pv73QyCHHujlWMUqzy5WZZDu2KcGreJjUjmL/8thdG2+7rqm/Vm6IjtbToOth7tGXDtHTjaj/bQ2KK43XmHemH5kS2sYNTlr8+opqAzp/CfaMZHLm7M6n5FUR/Cqcob7CIAXcNugiHTb+Q6x/clmJHHG67bYxFZov7ccEZ7Y1D/uTzgoBXDUrplUzurQsVQonTIrHp9rUTBv07lDhtv032/dqwfTyz+I3lZWGahvrU9o4YwP8Ano5rfZPS+S0RqPdTxgmlaqk0bEU0N2Z1B9uHJ8q/bC5l5YzbdcnxeS6a3iLlLgvBQxU5UxouCIRNtGMVe5sZIDoNiABgKO2++jXfOQtx3XcHvjNpDUoNCmgAA/zB1dWMWPRz50+RPTfkiz5T/TNc0Wss3xFwKs8jOTp+BlAqWOQcgdFOGEWXz9ZUCRt9ZlZNhIuavKyEA4k2SQkQdOWK6rRdRDcpDdvlTMAbgA9NUxfQyWdy9oWqUNK0A6jwz+3G1/k7dbPm7l+y5iij8r4uLWF1M1MyBmQleFfCPZg0/Y3h39g5iWO2FKYxqzVlkU3AlEdlppwZmokU4dwAY7cTCP7g1ZvpZbh9wkmI8I/eOvtxrw/uJ8wNHylY7NXKWV6j/DoINdPSRw1DG+2DIYkWzA/4/CTu/jsAf021kMnhGNJLmrk9Zx7bXbHXCQ+cPGyNh85TOWn94lk6/myGvsfZohr7cWRuaY1JpN42wfiu2PyW/GLtZpj8V67iiKXizzMQ/dmcLSZUzuWe7RvaXKu9PPtS7ckS+faNGVY7nFY6iss8qApNnJRpnDeW6AAR1Cv3mgdwtwlwZix0SBqjyGlpVUU5r4clFNQPTxGQ57zKpMLRsccA6jXH8nJpSHuE8WbEwcTDd20knPrcjkuM4ANZNMsywatGHqBRavVFXTJomVsZQQSKAQW2yz3v6lcSBVK21DShGVQOGRJpmVyJq1M8d75Ar26irDUTnl1H9vow3/QVibwrnjssGOvcw564tcm9O1y1ROPXJaqIGH5XSKNef4ivKjYdxARZWCrs1HAbbgL5LfoIaNt6CS8n7VdA1kRrhX7PzO7/ANK9A9vbDWf5e5TxdiU+j/jhjtfu1RtjycYVizQc+7rEkaHsbaIlGkgvBy5Cd54uWSbKqHYP0yDuZFUCnKA9Q0DJIj10EGmCa626+so0lu4njjlBKE/iApWnsqPpGOUfw6fv/n+8NdtQpXDLGV7/ACDActsrcdHZu4Gq9NurUphEOwF0pWFUMX/t7jJqgP8AANUf6uEieyY/wy/bHjcF/bBKvtHNMP4/iLE/VdYy2WDcZOTEQ+Ky/wDpubbVGv3WoMbgrbK2WnVhm/sUxCUpy+uiypQE7KmNRSKbqOy8ukicd9h6CX4/Dpq3PSkK19IeJCj9vrONVf8AcXuJF5YsIwe6Z5K8P5ezG6e2Giaxjmcsr5NBNKv1eQkzLKFLsmVnHnWAw7lHt6k1fc7LDaPKclVSTjTdy/aTbrzDabfCNUs1wiKMh4iBStR9JI9ox84/PkyEg0np9UpE3dmn5SZXKUfwqSLpy9OXfoIgB1R1hzuMjXE5l6WJ+2vZj6nOSbJNs2G226LuxW8KIOnIKKcST0dJPtw3X/HdohnsvlS5rIAJX1kiItssJQMPhZMnSyxCiO+xfIcN9h1dnpXZlLOS4YcSPt9v3Y1E/wBw3mA3PNFptde7DHJX2kIf4R19ZxtJak8bZAgB0KmUP4dP+NXNjV0ak1x5OuOnCxXOSMt4zw/GRkzk+8VuhxEzMtq9GSlolGsQwdzTtBw5bRqbt4dJD1KzdmqcpRMG5UzD9mvGa4t7UB520gmnT92JfaNj3TfZng2qEzSohYgFRkOrURU9QFSegHAE8sHaOSea/ty4kjVUX7OBumVuTViKgcFE04fHOOHtVqL1QxREh2rmzZBIdI24h5m5dvs1YPL3l2/KG8XjLVpFgRDX+chuvodePu7A7cEeTdbaEZGNn1dmQ/dhne4/cP8AT/roFxNYVBz6UPx75A8Quc7dM6FUplwe8buQsikA+GMwpnh3GMYu3zB9wKlCUHJsbFvHZx6Jt1zqdRTApjrlZV3XaNw5ZC6ru4jVoc6UZCWbPIZ0XiQBn7DCbkTa3cF9/wCUrd/6qdZ6+AxxHjpjyJ4s8uJesW23YXoqOWnFzNixhEybgck5+hpmac3H6zdUAj2seErTJKQM0j3C7t66dA4dJoikkYiQ0zY267TuRs5GCliQgpm4FSSaVAp/MangMZVc7b3ceo3Iq7/YQNObUq104YKtuzlURVVtDSaxn+UjKgNWNSxw4z+nX/fcf36LBwxjfXrxnF/yIaS7cYuwRkpoj3I1i6TcHKLAUfymk/HMhbCYdhAAM8YgHUQ6jqn/AFctC+2295Sojdgf+bQB09nVjaJ/bI5jitOed55alOd3bRSKO2ETsTkp4A9LAZ8CcZDrITeQWULsX1BO8vUDfjDf/nWPRpWvHG8C1JMAXq/fhj3sd2tlVucbiEegHfcKi8YsxEwFAHEe5Rfh8TAAicpR+8eurT9LJ0h3RofxEfvxrM/uHbFNd8gW+5x+CCdieH4mjHSw7eAPDGx73C72FB4S5jmU1gRcvqf9CYnMYCiLqccNo9IC7iXc4g4HbYd/u1dfNd18Jy7PKDmUAHvI7DjVb8svL45i9b9j2+QVjFyzt7Eidv4l6R0GvVj59Gf34IsmbMDCAJoKKiUBEdvlECgI9R3ER+/WJ87apVIGYP7sfSvt6eTtrt06B9mNRv8Aj14/CI49sLAZM3ks1imJg5zAPVPv9MgIGH4lEiYgGsj/AE8t/K2SJz+KpJ9/t93140D/ADub8dz9XLuAHKAKn0qK/hH3+3GnoA2AAD7P3f8AGrIyrXGEWOgjsAjv9giH8g1xkw7Mc4RzyyyNyQtvKOpYMLjKnZawdY7lTl5Gt3DETy/4xkafLyo1yzHLldCGbRlQyLRCV5xJBHugXVEZY4CYWzYq2g7cbjc33dLSNQ9mzAU7tDUD8R7wIPUcZUchbFyBaenc2/XM7W3NixMwlAuC0dHIX8oMYZFdaCrLpFRUVrggOHnZnzljyp5eokIvQID6RxJwA8KIHau6xi96rI5jssSqQfTrsLJlFQjEFCbhtAATcDFOGrw5oij2bYdv5bHd3GJXe4GfFiGjB4qaKxHdY+EagDQDDuwd72+n3JzqSRu59Ybt6uI9mGj7D9/9NAWWJzLFbZixTTs54ryDh7IManL0rJVSnKbZGBw2MpGTrBZiss2U6Gbvmgqgs3WKJTorpkOQQMUBB3t17Pt15HewEiaNq5ZV6COB4gkHI5HhjwngS4iaKTwH9vtwjHGNcsVkRleNeZa3L5A5u8BY+NQxW3C2sqC45T4CRtEHK4jyF+rXxPGSOZOayzRsKaaoqpvmSyS3/wBzrIeoGwQXqw84bTDqtLipCaiCjLk9SzZ1cMa041AyKknnpPz3ebBLLyjfXYstsuP6kvlCbTRW0jQEZjqqEqGGnVqNQCMNJ4dZ+msy1mbibVYa9e7nSJaRh7vdsfQzuKxgnaTP1nTqiVV9KO1HtocUlg6bs3kkimVs4XIYRBFXuRKHbTePdQ6ZW1yrxalBx4AAUyGVRWvHtw/9QuWINhv1msoDbWEwGiMuXYBVUFmLMXGs1ajBaV00BBA4b7neBj8huGWYaUyag7n4+CNaqymAdx/rdbUJKNgT+Yo96hW5ybB1EB2+3bUZzjtn6tsM1sB3wNQ9oIPWOivTTFgfK56g/wD5v60bRv0jabRpjFJlXuyKy0/pyHMkCqrXPI4+eFJyiJSg2diZB6yUUauElQEpyKIHMRQhwNsJTkMUQEB+AhrEWRGjbQ/jGPp2s7+1ubeO7ib8mRQwyPAjtAP0gYsPidlxDCXLLCmTCPASjoy7xDaXMU+xRipJwRi8BQR32TKkt3D+4uiPlK//AE7fIJm/ip7a9HA9OMb/AJn+TYee/S7dNrhFZ/I1xmpyZSGJzeMHKuRNOzGxD3nMxQ7DhvjmJLIJla5ItVfeJOCKD41Y+JZFnCqfL+NNU/jH4h1H4Dq7/Uq+ROXUiU5yMOjoUqerqxqe+QLky6vvWue+ZavY2rAioGciSCvjHDT2/fjEpm+0x8xIrCxcEWRAhEExDuDcfw9Nw32MI/cG+2sdF/OnB/DUfdjePfk2G0NE+TCM1+j343e+zdj8KbxWxMzM29Ot+jop0uXsEgmVfInemOYPh3GIuXffqOssuUrX4baIUHAJ9uY6T0Y+aT5gt7be/Urc74NqRrgjhTwgD+FekHow5jfpv8P2/ftopNffiieGAb5n8i6tjKuR+Mo3NCeHcvZFcxsfRrWWlrZAjqq/cTMaziX94hkm67eMqNimHKEQd04MgXve/lnKcvcWG3XcIbdVtxL5V1J4G0lqUIrlSmYNM/aOGLT9NeT77eLmTf59s/UuXbIHzozOLepZW00bUHJQjXRQQaaSQGwDVwY3Pj/jpHj9iiBr1a5587Zd2pZ4Oh2202bHON2g+rj8k8jIyJmjphUq7GxCyj9RJEjb1Uyuk2KqooUhtHPp5y/bwLJzPu0YXbLahk7x7ztlHQK1RRmDZClaA5V0inqlzlLzDuceyWFwZ9uiqIWKBCoYL5gOpFdqU06nNSFrxNS3DBOGadx6w/j3CtCbGbVPHdaY16MFUpfVPlEAMvJzMicvRaVnpVdd67U+KrlwoceptR+7bjcbvuMu5XJ/NkIrw4ABVGQAyUAVoK0qcCFtbpbQLBH4FH2mp6+k4trUfj3xNL7MLAIc0+IcnnxtS8tYYtKOKOW+CnD2bwZlUUTqRyhnpCJz2NsiNGxfU2HGF4YlM1fs+4DIHOVwl85BIoUct78u2M9juKebsdzQTR1pWldLBlBcaSdVFIr9GI2/sWuNM8B03cZqp49XQTTo6cC/xCtWLuRGcHM5kAuQOPnMPj5CBXsg8TSWRGvUuqndyK0hZ8iUWAiW7ZrkSgZUfPkVTyx1XqRyJoFEqC+51WXMfJse03MW82rGbaJKmGXw1yGqqaiwpmKsADxFKgYMdu9Sd0uOXX5QcKok0iYEBmkKsGQltHdoQKBWGVAcq1LjHvLOvZdy1lSlRLCP/s/jtRtTHmV5CTj20DZMmvkWCr2hwqbx02dvn0Q1eHK68bdZEFg8flBQDJ6DbfcUu7p49I+FSlHr4iRUilARQ4L955BuOXNi2/cmmZ+YbkuzWwQVhVGoraw7KwZaNwFCSpqQcIh5Few1iLJF8suT8bZRuDeu3+Zf2hmwriNaka81CXeKu1koV4kgfzR/mUMKY95w2Hbfpqvb3022u5u3vA2UjV4Mew5+aPsGMyeVfnx9ROWdhteXLqEvJaxBNWq2WoGY7v6e1Mj/ABMes4HEv+PXCC5QU/ujk0gpHKYpixlf3KYpgEDFN6cAAxTBuGmy+mW3qKq2Y6aN/wC7iduP7gPOlzGY5baqkZ/mQZ/Rtww0HOvtcuOS2A8I43v2ZMmIDg2tKQEUsyZQR1bIYyLdu3lZwjhmoASLZk1KiUUhKUSfEBHroj3jk2HeLOC2uXyhBpkemnU69XWcUl6XfNPvHpTzNum/cv2lLjdTHrHmx5aNf+ZaTA18wnJUpTp6Fguv8eqAcSCapsnZKWSSdpq9ikbXwBUpFCnMU4+m3ADEDqO3TfUBF6ZbZCRKGrQ9T55/6uLlv/n8533G2eCa3prUiuu3yr7NuGNSXFXFwYixnA1dfuSQgIaNikllu1MRbRbFJmmor2lIQoiRABN9m+rSs4BawJEPCopX6us417cy7pJvW7y3x/qSuzU7WNepfsGKmyNz8xjEZmmuLNfdu4fPD1oszpg2qKUQq0vMStdZS1PcRjn1SATrGxvZAWzbsURKdVi77zpkRAx4yffrX4xtrhb/AH9KcDkSuoZ00nI9dMWBs/pBzC/K8HqFuUQ/7QJ1MweOpVZjC4KiUSr3wQSELdIHTgJ3Frs2Am1AyTysrEZm/wBwS1P7fX+MGHKUWOHJrmvWorJyepZHf06T/RkzU6jKJqPVZVwkEbENiidJUypTqiT8i8lXu+L+q7+/lWttVpJ6A+WCDp7iONZagGQOgGrdAw09U/Ubl7bp7nlT0srFyrdpEGj/ADGErIAxIa6jM0emSte8oemXd4nxxE4uWfF8jcc9Z+sLHIXK7M6LJTINoYpiNax9Wm+ziHwziwi6ZXTGg1dcxjnVU/8AZlHxjuVhAvgRRIuZeYItwEe2bYnk7FbEiNKljmalizAPRjmAxJFfcKT26yaCtzcHVdyZseHuoDT6Bg59CuJTE0sLE0sLE0qdOFgMOWPCTGXKVOuW1eTsGKs8Y3UO+xHyExw6+kZIoEgALCVqDsglbWWpPFFzethpEq7F0Uw/KRTZQpHsXMl3soe2AEu2Tf1YjQBxQimrSWXj+Hj01xHXu3RXbLL4Z08LZmnuqAffhQ/I1jlinV1jj33EMUT7mtwc5OTtb59cRsfI22nKy0/WXdMkLfyBwaELKuaVYzQDxMAkyNnzJu8SKZqsgKaYnc7nyTy9zlCrcsSiHdCtRasHYrQd6ksjqr1C6uJpXiOGDvkP1X5j9OtwM94nxO2yUEg1ImvTXRQrG7JpLdAowyYEcCLwRkbKpJJ3N8Tch4Qz9w9x/iOyR+N8d4stEFYLUs8qNMrTLHVVnIt6CVrr19krOq+PKHVdC3FumQiyCbpTvCvr3YOZuW79oLmMi0jFAn5fVQUcFq5940JHEVrliyH5m9L+deXUa+Uwc5zzFprpmuWy83UT5SqsNBF+WoABrTIDPBGOeYORsc27CmMMw8en43bJcVWHlinadKJoUauyFpsbKATg4qSs7eOJYp2tpvQdyzFFcrtBqQTN03QiUotTulxDLFBNDR3rUhuHTwpmejjxwxg9O9k3fab3e9m3Mm2tWUKrQHvlm0kljICi5agShJUioBqMdkR7hNSuCLUarj22RJmXI6k4Fn0bBGMJHyEt6ksRvYYxzB2AzFOMVSjAWK5Ms4MkkoQx2xu8ADm23uK5r5YJAdQewNWh4dnD68cbt6QblsZj+NnUrNbySIQozMWjUuUhNPzF7xAP8uPUcv8APHLDGOeMc0XA2HVb3S5itx9sm3zWl2ObCUcRl6gI6yUUtqYtlKxTpuaqD5yrGuZVZq1SWRMqqoKZOw/Xc7ndIbyNLGPWhFTmo6sswfu+nD3095b9Pt25Zu9w5rvvhdxjbShMcz0qG7wEbqp6BQhj0kUxWucWubnUtndnyzzzizCHEGx1WXhq4ynbnB1a0oSKUrX5+mT0dJVdCu2UyRTt3UfKMFZgx3gAUiaaqapgFxact8y8xXktgqs9jMUCKAmXAmrBlI7wz1sB0cMe0PPXppyPtWz7ry9aludbQ3HxE3mXFHDlkQmOZHhFInIHlKc6MxDChpjAFxyxeqpTqXwaxWa22auUlbHMr7iPISmzNNoqdKPYH0ulFYuhJlBW55caQblyQWCCPhhfI3KCqyfzdll2HJuycoxKea5vM3KJai1AYFwaFQZI3dVpXrzApqFSBUfO3qDufPG6XE21R/D7VOymlVcAhAHNWjjY6m1EigFTwPHDNeMXDSj8eH9iyJMWGw5k5DZAQbkyZnzISpHdwsZUDGOlCQDFIfpFEpTFQ+zeIi00UNilMuZdUPKLHf8Ame73tI7RFEW0QZQwih0AgA9/SrNUiverTgMCljt0NnWXxXDeJs8/dUge7BjaGgAMhiRxNLCxNLCxNLCxNLCxNLCx+K/g9Ot6rw+l8SnqPP2eDwdg+XzeT5PF49+7fpt8dLCwh7kzE+ytN5XcMJW0QtQ5GLLmB7OcLG2WneYWsl5zdhrShxXr9lWNMA4/8f1poo4327Om2rQ2B/UePbq7apfba8H8gdX8ZElPqwNXS7E0/fbTcV6pDnl1ZY5/ReMOfV49s/49+5pzTgYVQoGZQnKTjDKZAVQSETCgmc+VMeYkyJsUNwN6t6ocS7biHQdNJd42eI03XZ4JZOkx3YXPpyhFPrx2jtpSf9tckHLjH7KeL3YshvgX3MQRBuT3BsBnYFeCmMgThYw+qKPu05RcKNE8xkRLN7fMYu/d39Nea77yHkRsTaq//Mn92JE2nMHTd9//AEo8cUt3GXkYRms9zx7lnLWWiSFOZeJ4zcYTUJdYgFMKyZVKNR8v3jtMnuBfSukzgO3aO+2vVN52KVqbVs0EUnW92GFej+sKYYG2kUf7i5LL/p06v4Tir8JQns6QGVGUdZbgtd8/pPA+lz3OxpmZle3Mv8DDUG/KGtVWBJNd4CJ/ojQjrr83TbT/AHh/UiTbGN0nl7XpGSG3PdqKU0EyU4cOjjljpZrsauBG2qbrIkH25Yekz9J6Vt6H0/ofAl6P0nj9L6bxl8Hp/D+V4PHt29vy9u22qrOqve8WCMUplwx5OuMc4mlhYmlhYmlhY//Z"/>
                  <h1 align="center">
                    <span style="font-weight:bold; ">
                      <xsl:text>e-FATURA</xsl:text>
                    </span>
                  </h1>
                </td>
                <td width="30%" align="right" valign="middle" text-indent="-50px">
                                    <br/>

 
                                   
                                   
                                   
                                 

               
<!-- Faturadaki QR Kod alanı burada bulunuyor @QRKOD-->
            <div id="invoiceqrcode" align="right">
                <div id="qrcode"  />
                <div id="qrvalue" style="visibility:hidden; font-size:0;" >
                {"vkntckn":"<xsl:value-of select="n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID='TCKN' or @schemeID='VKN']"/>",
                "avkntckn":"<xsl:value-of select="n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID='TCKN' or @schemeID='VKN']"/>",
                "senaryo":"<xsl:value-of select="n1:Invoice/cbc:ProfileID"/>",
                "tip":"<xsl:value-of select="n1:Invoice/cbc:InvoiceTypeCode"/>",
                "tarih":"<xsl:value-of select="n1:Invoice/cbc:IssueDate"/>",
                "no":"<xsl:value-of select="n1:Invoice/cbc:ID"/>",
                "ettn":"<xsl:value-of select="n1:Invoice/cbc:UUID"/>",
                "parabirimi":"<xsl:value-of select="n1:Invoice/cbc:DocumentCurrencyCode" />",
                "malhizmettoplam":"<xsl:value-of select="n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount" />",
                <xsl:for-each select="n1:Invoice/cac:TaxTotal/cac:TaxSubtotal[cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode='0015']">
                <xsl:text>"kdvmatrah</xsl:text>(<xsl:value-of select="cbc:Percent"
                />)":"<xsl:value-of select="cbc:TaxableAmount"/>",
                </xsl:for-each>
                <xsl:for-each select="n1:Invoice/cac:TaxTotal/cac:TaxSubtotal[cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode='0015']">
                <xsl:text>"hesaplanankdv</xsl:text>(<xsl:value-of select="cbc:Percent"
                />)":"<xsl:value-of select="cbc:TaxAmount"/>",
                </xsl:for-each>"vergidahil":"<xsl:value-of select="n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount" />",
                "odenecek":"<xsl:value-of select="n1:Invoice/cac:LegalMonetaryTotal/cbc:PayableAmount"/>"
                }</div>
                <script type="text/javascript">
                    <![CDATA[
                            var QRCode;!function(){function a(a){this.mode=c.MODE_8BIT_BYTE,this.data=a,this.parsedData=[];for(var b=[],d=0,e=this.data.length;e>d;d++){var f=this.data.charCodeAt(d);f>65536?(b[0]=240|(1835008&f)>>>18,b[1]=128|(258048&f)>>>12,b[2]=128|(4032&f)>>>6,b[3]=128|63&f):f>2048?(b[0]=224|(61440&f)>>>12,b[1]=128|(4032&f)>>>6,b[2]=128|63&f):f>128?(b[0]=192|(1984&f)>>>6,b[1]=128|63&f):b[0]=f,this.parsedData=this.parsedData.concat(b)}this.parsedData.length!=this.data.length&&(this.parsedData.unshift(191),this.parsedData.unshift(187),this.parsedData.unshift(239))}function b(a,b){this.typeNumber=a,this.errorCorrectLevel=b,this.modules=null,this.moduleCount=0,this.dataCache=null,this.dataList=[]}function i(a,b){if(void 0==a.length)throw new Error(a.length+"/"+b);for(var c=0;c<a.length&&0==a[c];)c++;this.num=new Array(a.length-c+b);for(var d=0;d<a.length-c;d++)this.num[d]=a[d+c]}function j(a,b){this.totalCount=a,this.dataCount=b}function k(){this.buffer=[],this.length=0}function m(){return"undefined"!=typeof CanvasRenderingContext2D}function n(){var a=!1,b=navigator.userAgent;return/android/i.test(b)&&(a=!0,aMat=b.toString().match(/android ([0-9]\.[0-9])/i),aMat&&aMat[1]&&(a=parseFloat(aMat[1]))),a}function r(a,b){for(var c=1,e=s(a),f=0,g=l.length;g>=f;f++){var h=0;switch(b){case d.L:h=l[f][0];break;case d.M:h=l[f][1];break;case d.Q:h=l[f][2];break;case d.H:h=l[f][3]}if(h>=e)break;c++}if(c>l.length)throw new Error("Too long data");return c}function s(a){var b=encodeURI(a).toString().replace(/\%[0-9a-fA-F]{2}/g,"a");return b.length+(b.length!=a?3:0)}a.prototype={getLength:function(){return this.parsedData.length},write:function(a){for(var b=0,c=this.parsedData.length;c>b;b++)a.put(this.parsedData[b],8)}},b.prototype={addData:function(b){var c=new a(b);this.dataList.push(c),this.dataCache=null},isDark:function(a,b){if(0>a||this.moduleCount<=a||0>b||this.moduleCount<=b)throw new Error(a+","+b);return this.modules[a][b]},getModuleCount:function(){return this.moduleCount},make:function(){this.makeImpl(!1,this.getBestMaskPattern())},makeImpl:function(a,c){this.moduleCount=4*this.typeNumber+17,this.modules=new Array(this.moduleCount);for(var d=0;d<this.moduleCount;d++){this.modules[d]=new Array(this.moduleCount);for(var e=0;e<this.moduleCount;e++)this.modules[d][e]=null}this.setupPositionProbePattern(0,0),this.setupPositionProbePattern(this.moduleCount-7,0),this.setupPositionProbePattern(0,this.moduleCount-7),this.setupPositionAdjustPattern(),this.setupTimingPattern(),this.setupTypeInfo(a,c),this.typeNumber>=7&&this.setupTypeNumber(a),null==this.dataCache&&(this.dataCache=b.createData(this.typeNumber,this.errorCorrectLevel,this.dataList)),this.mapData(this.dataCache,c)},setupPositionProbePattern:function(a,b){for(var c=-1;7>=c;c++)if(!(-1>=a+c||this.moduleCount<=a+c))for(var d=-1;7>=d;d++)-1>=b+d||this.moduleCount<=b+d||(this.modules[a+c][b+d]=c>=0&&6>=c&&(0==d||6==d)||d>=0&&6>=d&&(0==c||6==c)||c>=2&&4>=c&&d>=2&&4>=d?!0:!1)},getBestMaskPattern:function(){for(var a=0,b=0,c=0;8>c;c++){this.makeImpl(!0,c);var d=f.getLostPoint(this);(0==c||a>d)&&(a=d,b=c)}return b},createMovieClip:function(a,b,c){var d=a.createEmptyMovieClip(b,c),e=1;this.make();for(var f=0;f<this.modules.length;f++)for(var g=f*e,h=0;h<this.modules[f].length;h++){var i=h*e,j=this.modules[f][h];j&&(d.beginFill(0,100),d.moveTo(i,g),d.lineTo(i+e,g),d.lineTo(i+e,g+e),d.lineTo(i,g+e),d.endFill())}return d},setupTimingPattern:function(){for(var a=8;a<this.moduleCount-8;a++)null==this.modules[a][6]&&(this.modules[a][6]=0==a%2);for(var b=8;b<this.moduleCount-8;b++)null==this.modules[6][b]&&(this.modules[6][b]=0==b%2)},setupPositionAdjustPattern:function(){for(var a=f.getPatternPosition(this.typeNumber),b=0;b<a.length;b++)for(var c=0;c<a.length;c++){var d=a[b],e=a[c];if(null==this.modules[d][e])for(var g=-2;2>=g;g++)for(var h=-2;2>=h;h++)this.modules[d+g][e+h]=-2==g||2==g||-2==h||2==h||0==g&&0==h?!0:!1}},setupTypeNumber:function(a){for(var b=f.getBCHTypeNumber(this.typeNumber),c=0;18>c;c++){var d=!a&&1==(1&b>>c);this.modules[Math.floor(c/3)][c%3+this.moduleCount-8-3]=d}for(var c=0;18>c;c++){var d=!a&&1==(1&b>>c);this.modules[c%3+this.moduleCount-8-3][Math.floor(c/3)]=d}},setupTypeInfo:function(a,b){for(var c=this.errorCorrectLevel<<3|b,d=f.getBCHTypeInfo(c),e=0;15>e;e++){var g=!a&&1==(1&d>>e);6>e?this.modules[e][8]=g:8>e?this.modules[e+1][8]=g:this.modules[this.moduleCount-15+e][8]=g}for(var e=0;15>e;e++){var g=!a&&1==(1&d>>e);8>e?this.modules[8][this.moduleCount-e-1]=g:9>e?this.modules[8][15-e-1+1]=g:this.modules[8][15-e-1]=g}this.modules[this.moduleCount-8][8]=!a},mapData:function(a,b){for(var c=-1,d=this.moduleCount-1,e=7,g=0,h=this.moduleCount-1;h>0;h-=2)for(6==h&&h--;;){for(var i=0;2>i;i++)if(null==this.modules[d][h-i]){var j=!1;g<a.length&&(j=1==(1&a[g]>>>e));var k=f.getMask(b,d,h-i);k&&(j=!j),this.modules[d][h-i]=j,e--,-1==e&&(g++,e=7)}if(d+=c,0>d||this.moduleCount<=d){d-=c,c=-c;break}}}},b.PAD0=236,b.PAD1=17,b.createData=function(a,c,d){for(var e=j.getRSBlocks(a,c),g=new k,h=0;h<d.length;h++){var i=d[h];g.put(i.mode,4),g.put(i.getLength(),f.getLengthInBits(i.mode,a)),i.write(g)}for(var l=0,h=0;h<e.length;h++)l+=e[h].dataCount;if(g.getLengthInBits()>8*l)throw new Error("code length overflow. ("+g.getLengthInBits()+">"+8*l+")");for(g.getLengthInBits()+4<=8*l&&g.put(0,4);0!=g.getLengthInBits()%8;)g.putBit(!1);for(;;){if(g.getLengthInBits()>=8*l)break;if(g.put(b.PAD0,8),g.getLengthInBits()>=8*l)break;g.put(b.PAD1,8)}return b.createBytes(g,e)},b.createBytes=function(a,b){for(var c=0,d=0,e=0,g=new Array(b.length),h=new Array(b.length),j=0;j<b.length;j++){var k=b[j].dataCount,l=b[j].totalCount-k;d=Math.max(d,k),e=Math.max(e,l),g[j]=new Array(k);for(var m=0;m<g[j].length;m++)g[j][m]=255&a.buffer[m+c];c+=k;var n=f.getErrorCorrectPolynomial(l),o=new i(g[j],n.getLength()-1),p=o.mod(n);h[j]=new Array(n.getLength()-1);for(var m=0;m<h[j].length;m++){var q=m+p.getLength()-h[j].length;h[j][m]=q>=0?p.get(q):0}}for(var r=0,m=0;m<b.length;m++)r+=b[m].totalCount;for(var s=new Array(r),t=0,m=0;d>m;m++)for(var j=0;j<b.length;j++)m<g[j].length&&(s[t++]=g[j][m]);for(var m=0;e>m;m++)for(var j=0;j<b.length;j++)m<h[j].length&&(s[t++]=h[j][m]);return s};for(var c={MODE_NUMBER:1,MODE_ALPHA_NUM:2,MODE_8BIT_BYTE:4,MODE_KANJI:8},d={L:1,M:0,Q:3,H:2},e={PATTERN000:0,PATTERN001:1,PATTERN010:2,PATTERN011:3,PATTERN100:4,PATTERN101:5,PATTERN110:6,PATTERN111:7},f={PATTERN_POSITION_TABLE:[[],[6,18],[6,22],[6,26],[6,30],[6,34],[6,22,38],[6,24,42],[6,26,46],[6,28,50],[6,30,54],[6,32,58],[6,34,62],[6,26,46,66],[6,26,48,70],[6,26,50,74],[6,30,54,78],[6,30,56,82],[6,30,58,86],[6,34,62,90],[6,28,50,72,94],[6,26,50,74,98],[6,30,54,78,102],[6,28,54,80,106],[6,32,58,84,110],[6,30,58,86,114],[6,34,62,90,118],[6,26,50,74,98,122],[6,30,54,78,102,126],[6,26,52,78,104,130],[6,30,56,82,108,134],[6,34,60,86,112,138],[6,30,58,86,114,142],[6,34,62,90,118,146],[6,30,54,78,102,126,150],[6,24,50,76,102,128,154],[6,28,54,80,106,132,158],[6,32,58,84,110,136,162],[6,26,54,82,110,138,166],[6,30,58,86,114,142,170]],G15:1335,G18:7973,G15_MASK:21522,getBCHTypeInfo:function(a){for(var b=a<<10;f.getBCHDigit(b)-f.getBCHDigit(f.G15)>=0;)b^=f.G15<<f.getBCHDigit(b)-f.getBCHDigit(f.G15);return(a<<10|b)^f.G15_MASK},getBCHTypeNumber:function(a){for(var b=a<<12;f.getBCHDigit(b)-f.getBCHDigit(f.G18)>=0;)b^=f.G18<<f.getBCHDigit(b)-f.getBCHDigit(f.G18);return a<<12|b},getBCHDigit:function(a){for(var b=0;0!=a;)b++,a>>>=1;return b},getPatternPosition:function(a){return f.PATTERN_POSITION_TABLE[a-1]},getMask:function(a,b,c){switch(a){case e.PATTERN000:return 0==(b+c)%2;case e.PATTERN001:return 0==b%2;case e.PATTERN010:return 0==c%3;case e.PATTERN011:return 0==(b+c)%3;case e.PATTERN100:return 0==(Math.floor(b/2)+Math.floor(c/3))%2;case e.PATTERN101:return 0==b*c%2+b*c%3;case e.PATTERN110:return 0==(b*c%2+b*c%3)%2;case e.PATTERN111:return 0==(b*c%3+(b+c)%2)%2;default:throw new Error("bad maskPattern:"+a)}},getErrorCorrectPolynomial:function(a){for(var b=new i([1],0),c=0;a>c;c++)b=b.multiply(new i([1,g.gexp(c)],0));return b},getLengthInBits:function(a,b){if(b>=1&&10>b)switch(a){case c.MODE_NUMBER:return 10;case c.MODE_ALPHA_NUM:return 9;case c.MODE_8BIT_BYTE:return 8;case c.MODE_KANJI:return 8;default:throw new Error("mode:"+a)}else if(27>b)switch(a){case c.MODE_NUMBER:return 12;case c.MODE_ALPHA_NUM:return 11;case c.MODE_8BIT_BYTE:return 16;case c.MODE_KANJI:return 10;default:throw new Error("mode:"+a)}else{if(!(41>b))throw new Error("type:"+b);switch(a){case c.MODE_NUMBER:return 14;case c.MODE_ALPHA_NUM:return 13;case c.MODE_8BIT_BYTE:return 16;case c.MODE_KANJI:return 12;default:throw new Error("mode:"+a)}}},getLostPoint:function(a){for(var b=a.getModuleCount(),c=0,d=0;b>d;d++)for(var e=0;b>e;e++){for(var f=0,g=a.isDark(d,e),h=-1;1>=h;h++)if(!(0>d+h||d+h>=b))for(var i=-1;1>=i;i++)0>e+i||e+i>=b||(0!=h||0!=i)&&g==a.isDark(d+h,e+i)&&f++;f>5&&(c+=3+f-5)}for(var d=0;b-1>d;d++)for(var e=0;b-1>e;e++){var j=0;a.isDark(d,e)&&j++,a.isDark(d+1,e)&&j++,a.isDark(d,e+1)&&j++,a.isDark(d+1,e+1)&&j++,(0==j||4==j)&&(c+=3)}for(var d=0;b>d;d++)for(var e=0;b-6>e;e++)a.isDark(d,e)&&!a.isDark(d,e+1)&&a.isDark(d,e+2)&&a.isDark(d,e+3)&&a.isDark(d,e+4)&&!a.isDark(d,e+5)&&a.isDark(d,e+6)&&(c+=40);for(var e=0;b>e;e++)for(var d=0;b-6>d;d++)a.isDark(d,e)&&!a.isDark(d+1,e)&&a.isDark(d+2,e)&&a.isDark(d+3,e)&&a.isDark(d+4,e)&&!a.isDark(d+5,e)&&a.isDark(d+6,e)&&(c+=40);for(var k=0,e=0;b>e;e++)for(var d=0;b>d;d++)a.isDark(d,e)&&k++;var l=Math.abs(100*k/b/b-50)/5;return c+=10*l}},g={glog:function(a){if(1>a)throw new Error("glog("+a+")");return g.LOG_TABLE[a]},gexp:function(a){for(;0>a;)a+=255;for(;a>=256;)a-=255;return g.EXP_TABLE[a]},EXP_TABLE:new Array(256),LOG_TABLE:new Array(256)},h=0;8>h;h++)g.EXP_TABLE[h]=1<<h;for(var h=8;256>h;h++)g.EXP_TABLE[h]=g.EXP_TABLE[h-4]^g.EXP_TABLE[h-5]^g.EXP_TABLE[h-6]^g.EXP_TABLE[h-8];for(var h=0;255>h;h++)g.LOG_TABLE[g.EXP_TABLE[h]]=h;i.prototype={get:function(a){return this.num[a]},getLength:function(){return this.num.length},multiply:function(a){for(var b=new Array(this.getLength()+a.getLength()-1),c=0;c<this.getLength();c++)for(var d=0;d<a.getLength();d++)b[c+d]^=g.gexp(g.glog(this.get(c))+g.glog(a.get(d)));return new i(b,0)},mod:function(a){if(this.getLength()-a.getLength()<0)return this;for(var b=g.glog(this.get(0))-g.glog(a.get(0)),c=new Array(this.getLength()),d=0;d<this.getLength();d++)c[d]=this.get(d);for(var d=0;d<a.getLength();d++)c[d]^=g.gexp(g.glog(a.get(d))+b);return new i(c,0).mod(a)}},j.RS_BLOCK_TABLE=[[1,26,19],[1,26,16],[1,26,13],[1,26,9],[1,44,34],[1,44,28],[1,44,22],[1,44,16],[1,70,55],[1,70,44],[2,35,17],[2,35,13],[1,100,80],[2,50,32],[2,50,24],[4,25,9],[1,134,108],[2,67,43],[2,33,15,2,34,16],[2,33,11,2,34,12],[2,86,68],[4,43,27],[4,43,19],[4,43,15],[2,98,78],[4,49,31],[2,32,14,4,33,15],[4,39,13,1,40,14],[2,121,97],[2,60,38,2,61,39],[4,40,18,2,41,19],[4,40,14,2,41,15],[2,146,116],[3,58,36,2,59,37],[4,36,16,4,37,17],[4,36,12,4,37,13],[2,86,68,2,87,69],[4,69,43,1,70,44],[6,43,19,2,44,20],[6,43,15,2,44,16],[4,101,81],[1,80,50,4,81,51],[4,50,22,4,51,23],[3,36,12,8,37,13],[2,116,92,2,117,93],[6,58,36,2,59,37],[4,46,20,6,47,21],[7,42,14,4,43,15],[4,133,107],[8,59,37,1,60,38],[8,44,20,4,45,21],[12,33,11,4,34,12],[3,145,115,1,146,116],[4,64,40,5,65,41],[11,36,16,5,37,17],[11,36,12,5,37,13],[5,109,87,1,110,88],[5,65,41,5,66,42],[5,54,24,7,55,25],[11,36,12],[5,122,98,1,123,99],[7,73,45,3,74,46],[15,43,19,2,44,20],[3,45,15,13,46,16],[1,135,107,5,136,108],[10,74,46,1,75,47],[1,50,22,15,51,23],[2,42,14,17,43,15],[5,150,120,1,151,121],[9,69,43,4,70,44],[17,50,22,1,51,23],[2,42,14,19,43,15],[3,141,113,4,142,114],[3,70,44,11,71,45],[17,47,21,4,48,22],[9,39,13,16,40,14],[3,135,107,5,136,108],[3,67,41,13,68,42],[15,54,24,5,55,25],[15,43,15,10,44,16],[4,144,116,4,145,117],[17,68,42],[17,50,22,6,51,23],[19,46,16,6,47,17],[2,139,111,7,140,112],[17,74,46],[7,54,24,16,55,25],[34,37,13],[4,151,121,5,152,122],[4,75,47,14,76,48],[11,54,24,14,55,25],[16,45,15,14,46,16],[6,147,117,4,148,118],[6,73,45,14,74,46],[11,54,24,16,55,25],[30,46,16,2,47,17],[8,132,106,4,133,107],[8,75,47,13,76,48],[7,54,24,22,55,25],[22,45,15,13,46,16],[10,142,114,2,143,115],[19,74,46,4,75,47],[28,50,22,6,51,23],[33,46,16,4,47,17],[8,152,122,4,153,123],[22,73,45,3,74,46],[8,53,23,26,54,24],[12,45,15,28,46,16],[3,147,117,10,148,118],[3,73,45,23,74,46],[4,54,24,31,55,25],[11,45,15,31,46,16],[7,146,116,7,147,117],[21,73,45,7,74,46],[1,53,23,37,54,24],[19,45,15,26,46,16],[5,145,115,10,146,116],[19,75,47,10,76,48],[15,54,24,25,55,25],[23,45,15,25,46,16],[13,145,115,3,146,116],[2,74,46,29,75,47],[42,54,24,1,55,25],[23,45,15,28,46,16],[17,145,115],[10,74,46,23,75,47],[10,54,24,35,55,25],[19,45,15,35,46,16],[17,145,115,1,146,116],[14,74,46,21,75,47],[29,54,24,19,55,25],[11,45,15,46,46,16],[13,145,115,6,146,116],[14,74,46,23,75,47],[44,54,24,7,55,25],[59,46,16,1,47,17],[12,151,121,7,152,122],[12,75,47,26,76,48],[39,54,24,14,55,25],[22,45,15,41,46,16],[6,151,121,14,152,122],[6,75,47,34,76,48],[46,54,24,10,55,25],[2,45,15,64,46,16],[17,152,122,4,153,123],[29,74,46,14,75,47],[49,54,24,10,55,25],[24,45,15,46,46,16],[4,152,122,18,153,123],[13,74,46,32,75,47],[48,54,24,14,55,25],[42,45,15,32,46,16],[20,147,117,4,148,118],[40,75,47,7,76,48],[43,54,24,22,55,25],[10,45,15,67,46,16],[19,148,118,6,149,119],[18,75,47,31,76,48],[34,54,24,34,55,25],[20,45,15,61,46,16]],j.getRSBlocks=function(a,b){var c=j.getRsBlockTable(a,b);if(void 0==c)throw new Error("bad rs block @ typeNumber:"+a+"/errorCorrectLevel:"+b);for(var d=c.length/3,e=[],f=0;d>f;f++)for(var g=c[3*f+0],h=c[3*f+1],i=c[3*f+2],k=0;g>k;k++)e.push(new j(h,i));return e},j.getRsBlockTable=function(a,b){switch(b){case d.L:return j.RS_BLOCK_TABLE[4*(a-1)+0];case d.M:return j.RS_BLOCK_TABLE[4*(a-1)+1];case d.Q:return j.RS_BLOCK_TABLE[4*(a-1)+2];case d.H:return j.RS_BLOCK_TABLE[4*(a-1)+3];default:return void 0}},k.prototype={get:function(a){var b=Math.floor(a/8);return 1==(1&this.buffer[b]>>>7-a%8)},put:function(a,b){for(var c=0;b>c;c++)this.putBit(1==(1&a>>>b-c-1))},getLengthInBits:function(){return this.length},putBit:function(a){var b=Math.floor(this.length/8);this.buffer.length<=b&&this.buffer.push(0),a&&(this.buffer[b]|=128>>>this.length%8),this.length++}};var l=[[17,14,11,7],[32,26,20,14],[53,42,32,24],[78,62,46,34],[106,84,60,44],[134,106,74,58],[154,122,86,64],[192,152,108,84],[230,180,130,98],[271,213,151,119],[321,251,177,137],[367,287,203,155],[425,331,241,177],[458,362,258,194],[520,412,292,220],[586,450,322,250],[644,504,364,280],[718,560,394,310],[792,624,442,338],[858,666,482,382],[929,711,509,403],[1003,779,565,439],[1091,857,611,461],[1171,911,661,511],[1273,997,715,535],[1367,1059,751,593],[1465,1125,805,625],[1528,1190,868,658],[1628,1264,908,698],[1732,1370,982,742],[1840,1452,1030,790],[1952,1538,1112,842],[2068,1628,1168,898],[2188,1722,1228,958],[2303,1809,1283,983],[2431,1911,1351,1051],[2563,1989,1423,1093],[2699,2099,1499,1139],[2809,2213,1579,1219],[2953,2331,1663,1273]],o=function(){var a=function(a,b){this._el=a,this._htOption=b};return a.prototype.draw=function(a){function g(a,b){var c=document.createElementNS("http://www.w3.org/2000/svg",a);for(var d in b)b.hasOwnProperty(d)&&c.setAttribute(d,b[d]);return c}var b=this._htOption,c=this._el,d=a.getModuleCount();Math.floor(b.width/d),Math.floor(b.height/d),this.clear();var h=g("svg",{viewBox:"0 0 "+String(d)+" "+String(d),width:"100%",height:"100%",fill:b.colorLight});h.setAttributeNS("http://www.w3.org/2000/xmlns/","xmlns:xlink","http://www.w3.org/1999/xlink"),c.appendChild(h),h.appendChild(g("rect",{fill:b.colorDark,width:"1",height:"1",id:"template"}));for(var i=0;d>i;i++)for(var j=0;d>j;j++)if(a.isDark(i,j)){var k=g("use",{x:String(i),y:String(j)});k.setAttributeNS("http://www.w3.org/1999/xlink","href","#template"),h.appendChild(k)}},a.prototype.clear=function(){for(;this._el.hasChildNodes();)this._el.removeChild(this._el.lastChild)},a}(),p="svg"===document.documentElement.tagName.toLowerCase(),q=p?o:m()?function(){function a(){this._elImage.src=this._elCanvas.toDataURL("image/png"),this._elImage.style.display="block",this._elCanvas.style.display="none"}function d(a,b){var c=this;if(c._fFail=b,c._fSuccess=a,null===c._bSupportDataURI){var d=document.createElement("img"),e=function(){c._bSupportDataURI=!1,c._fFail&&_fFail.call(c)},f=function(){c._bSupportDataURI=!0,c._fSuccess&&c._fSuccess.call(c)};return d.onabort=e,d.onerror=e,d.onload=f,d.src="data:image/gif;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAAFCAYAAACNbyblAAAAHElEQVQI12P4//8/w38GIAXDIBKE0DHxgljNBAAO9TXL0Y4OHwAAAABJRU5ErkJggg==",void 0}c._bSupportDataURI===!0&&c._fSuccess?c._fSuccess.call(c):c._bSupportDataURI===!1&&c._fFail&&c._fFail.call(c)}if(this._android&&this._android<=2.1){var b=1/window.devicePixelRatio,c=CanvasRenderingContext2D.prototype.drawImage;CanvasRenderingContext2D.prototype.drawImage=function(a,d,e,f,g,h,i,j){if("nodeName"in a&&/img/i.test(a.nodeName))for(var l=arguments.length-1;l>=1;l--)arguments[l]=arguments[l]*b;else"undefined"==typeof j&&(arguments[1]*=b,arguments[2]*=b,arguments[3]*=b,arguments[4]*=b);c.apply(this,arguments)}}var e=function(a,b){this._bIsPainted=!1,this._android=n(),this._htOption=b,this._elCanvas=document.createElement("canvas"),this._elCanvas.width=b.width,this._elCanvas.height=b.height,a.appendChild(this._elCanvas),this._el=a,this._oContext=this._elCanvas.getContext("2d"),this._bIsPainted=!1,this._elImage=document.createElement("img"),this._elImage.style.display="none",this._el.appendChild(this._elImage),this._bSupportDataURI=null};return e.prototype.draw=function(a){var b=this._elImage,c=this._oContext,d=this._htOption,e=a.getModuleCount(),f=d.width/e,g=d.height/e,h=Math.round(f),i=Math.round(g);b.style.display="none",this.clear();for(var j=0;e>j;j++)for(var k=0;e>k;k++){var l=a.isDark(j,k),m=k*f,n=j*g;c.strokeStyle=l?d.colorDark:d.colorLight,c.lineWidth=1,c.fillStyle=l?d.colorDark:d.colorLight,c.fillRect(m,n,f,g),c.strokeRect(Math.floor(m)+.5,Math.floor(n)+.5,h,i),c.strokeRect(Math.ceil(m)-.5,Math.ceil(n)-.5,h,i)}this._bIsPainted=!0},e.prototype.makeImage=function(){this._bIsPainted&&d.call(this,a)},e.prototype.isPainted=function(){return this._bIsPainted},e.prototype.clear=function(){this._oContext.clearRect(0,0,this._elCanvas.width,this._elCanvas.height),this._bIsPainted=!1},e.prototype.round=function(a){return a?Math.floor(1e3*a)/1e3:a},e}():function(){var a=function(a,b){this._el=a,this._htOption=b};return a.prototype.draw=function(a){for(var b=this._htOption,c=this._el,d=a.getModuleCount(),e=Math.floor(b.width/d),f=Math.floor(b.height/d),g=['<table style="border:0;border-collapse:collapse;">'],h=0;d>h;h++){g.push("<tr>");for(var i=0;d>i;i++)g.push('<td style="border:0;border-collapse:collapse;padding:0;margin:0;width:'+e+"px;height:"+f+"px;background-color:"+(a.isDark(h,i)?b.colorDark:b.colorLight)+';"></td>');g.push("</tr>")}g.push("</table>"),c.innerHTML=g.join("");var j=c.childNodes[0],k=(b.width-j.offsetWidth)/2,l=(b.height-j.offsetHeight)/2;k>0&&l>0&&(j.style.margin=l+"px "+k+"px")},a.prototype.clear=function(){this._el.innerHTML=""},a}();QRCode=function(a,b){if(this._htOption={width:256,height:256,typeNumber:4,colorDark:"#000000",colorLight:"#ffffff",correctLevel:d.H},"string"==typeof b&&(b={text:b}),b)for(var c in b)this._htOption[c]=b[c];"string"==typeof a&&(a=document.getElementById(a)),this._android=n(),this._el=a,this._oQRCode=null,this._oDrawing=new q(this._el,this._htOption),this._htOption.text&&this.makeCode(this._htOption.text)},QRCode.prototype.makeCode=function(a){this._oQRCode=new b(r(a,this._htOption.correctLevel),this._htOption.correctLevel),this._oQRCode.addData(a),this._oQRCode.make(),this._el.title=a,this._oDrawing.draw(this._oQRCode),this.makeImage()},QRCode.prototype.makeImage=function(){"function"==typeof this._oDrawing.makeImage&&(!this._android||this._android>=3)&&this._oDrawing.makeImage()},QRCode.prototype.clear=function(){this._oDrawing.clear()},QRCode.CorrectLevel=d}();
                        ]]>
                        var qrcode = new QRCode(document.getElementById("qrcode"), { width : 100, height : 100, correctLevel : QRCode.CorrectLevel.M }); function makeCode (msg) {  var elText = document.getElementById("text"); qrcode.makeCode(msg); } makeCode(document.getElementById("qrvalue").innerHTML.replace(/\s/g,''));
                </script>
                    
                    
                    

            </div>
         
             
                
                
            <!-- QR Kod alanı burada bitiyor -->       
 
            
            
            
            
            
            
             <img alt="E-fatura Logo" src="data:image/Png;base64,iVBORw0KGgoAAAANSUhEUgAAAIgAAACXCAYAAADOOhMcAAAABGdBTUEAALGPC/xhBQAAAAlwSFlzAAAOxAAADsQBlSsOGwAAK+hJREFUeF7tnQdcFcfaxs3Nl1yvScxNTNREBQtKld5sMfXaRY0m1mjERu+9dwQ7diyAYgMVCxYE6dJRRBEboKA0eyyIyvO9s2dR6okajUD24fcwO7Oze+ac/Z/Z2T0zs+0gSJAYCYAIEisBEEFi1SQgNTXPIPqrwVMy+2PLTZmtZzlZ+JRbEv2xZZFr84jy1V8n8os0Ud7afT3hwsZ/T57nb2y2rqn1zaWL9le7z7p/ovUsnf01vU/Rdk3vt3Zb0f6b+6tdL9rixbbsfzWtYZ/9u1QTgNTgjs1KlLQbiOudR6O40wgUfzEaRV+OQmGn0Sik5cufj8XFTmNwodNYnKcw7zMd5P13DHIpPN1RBznkUx3HIZvCrI7jkf6JyCkdJ3A+0XEikj/7GYmfkjv+jISOkxBHjun4C6LJxz75BVGf/Iqj5MOfTMGhTybjwMeTcfAjCskRH00lT8Huj6YhvMM0hHWYSp6OXeQd/5mBHR/NwLb2MxDaYQZCOvyGYHJQh5kUzsKm/4i8nvnf5Pa/Yw157QezsOrD2QhoPxsryMvb62L5h7pY+oEuFrefi0Xt58CPvJCWfdvPgw+F3mTP9vPJ8+DefgHcPlwA1w8WwIXs9MF8OH6gB4cP9GFPtvs/fdiQrckWZMv/M4TF+4Ywo9Ds/4xgzNkYRmSD942x4F8mmNfOEGePneOPy7tRkzXI3SWhKJebgopvDFA+aD7KBuvj+pAFuEYhc/EgA1whFw0yROEgfRQMNMTlAYa4OMAIF7SMcF7bCPnaxsjTpjc4wARnNE2Qq2WCHG1mY5zSMsPJgWbI0mY2Qaa2OTLIadoWSB1ggRRNMyRrWZLNkahlhQRynCZZwwqxGhY4rmGNGPIxDRtEqdvgiLoVjqrbUmiLQ2o2OKRph0g1OxxUt8N+Stunbo+9tLxPzQF7yHvJYeRdqvZkR+xgVrbHNhUnhKo6YauqA0JUnbFVxRnByo4IUnXBZvJGzs7YoOqKQPI6iq9VdSOz0B2rVNyxmrySsyuWq3hgBS0vU/bEUt5LyP7K7lik4gV/RU/4qnhiobI3vCndR9mHQh94KHnBtb8PnOU8cDm1kD8q70ZNA7J4K8plJqNiiD7KB8xD2SA9AmM+SgZSOGgBigfoo4iWiwYaoJDCggEGuKyljwsExAUNQ5zXMkA+gXKWwrNaxjijboxcTQaGMXIo/ZSGKU5qmyJT0xRZlJZJwGRomSKVgGBOUTdFkqYFkgmUBE1LzrEalohTo1DdHMcJiBh1S4LDGlGq1jhM6UcJjCPkSBVrHCIoIlVscVCN4KC0fQTLHlqOULHHboJiDweGPXYq22GXigO2k3co2iGUYAhVcSQw7BFMsGxRdkKQogOCCJTN5A3kjZS+QcUFgeS1FF9DIIhCN6xUcsMqZQrJAcouBIY7ltPyMkUPLFXywBLyYrIf5fNX8oSfAkFBcV8CwotCbyVvCr3hQeC4ynvDScYdl1MEQARABEAEQP5ZgAxkgDAzQKgNwgDRNsBFBogmA8SQAySvFhCNuoBQSGBwgBAULwAxQ1otIARQLSCJdQEhKF4AYoVjDBC1BoCoUhtEgwBRFQGyn4OEAWKHCIKiLiC7CITngCjZYVsTgAQrNQSEhSJA1nGQ1AGEYGgMCLVB6ODXBcS/bQOihyvq81CoNBsFSrq4TL6kNAcXFXWR338O8hXm4Bw5T2EucsmnFeYhR17kbIX5nLMU9JCpuADpCiKnKegjlXyCnExOktdHorwREuQNEEdhLDlGjixrhGhZQ0TJGuMo+bCsCQ7JmCCSsykOkvdLm2G/nBn2URghY4Y9MubYTQ4jh0tbYBfv7eRt/ch9LbG1H7mPJUL6WiO4rxU2kzf2tcEmim/oY43AfrZYT/G1nG2xhryavJIc0NeebIcVfR2wjFnKAUvJS6TssUjKkewAfykn+PVxgi9vrz6O8O7jDM/ezvBWcG9bgBRrzkPxCAtcneiAK+NsUcjZDgUUXtSxw8WxtrhAPj/WHvnkc2MdcHa0A86Qc2mZ+fRYR+ToOCJ7jCNO0XI2OWusEzLGOnNOH+2EtLEuSB3jjOQxrkge64qk0a5I5OyM+NFuiCPHko+PckPMSGZ3RJOjRnoiaowHjo70wBHyYYofIh+k5ciRXtjPex85gnm4N3aP8MZeCsMpDCPvIu8Y4Yud5O3DfbCNwtDhvthK4dYRCxFCDiYHkTeP8Cf7YROFzBuH+yOQ97rhizivHbYYa3ivIq9kHk4euQR+ql7wUfBoG4BcG7gAVxVn4X5MBp9T0F/V9jlb4drLieBoQ4D8EZHA5xT0V1T1x2MET90E194MEE8BEEH1VfVHFUKmbYYbtUfYjTJvZQKEzN0oU/CBs2wru1EmAPJm9fDuI2qXrIDZv41g/aUV2RpWZIsvrGH2mQ2MP7VEftxFPve7kQDIO9TT6qc4c/A0ktclISXoBDmF84nNKUjelIrEDcm4ff0un/vdSABEkFgJgAgSKwEQQWIlACJIrARA3rVqngLVj4En9V1DflZdxWd6dxIAeYeqrnqC+CVHsXPWRoTrhyBMbwt2kXfqb8H2BVuwTS8EZUU3+dyvp8oLpdgzfzMOO4TjoN1u7OMdbhWOcOe9fK7m9cYBuW28COU6dij91RnFk1xQNNEVl8a74cLP7sj72QO55NM/eyJ7ghcyJvggbZwPksb5IkHHF3E6fogmR+kswpGxi3BwzBLsJ+8lh41Zih1jlmH7mOXYOmYFQkavwKbRK7GBvHb0KqwcFoDVvwSiovAGXxLxevLgPkocAnFhvAvyJ7jjLF+ukxO8kUnlSqVyJev4IFFnIWLHs3ItonL54/DYxYgcs5gr1x6uXMu4cm2jcgWPWoZ9FttRUVzOv4p4Pbr7COt11sLmcys49nSEo6QzHMh2kk6w7uECiy9skL5wH5/79VQYfw6O7X6HX08beHWzg1sPWzj3sIfNl7awlXbiczWvNw7IjbHmuCY3DcXqc1CgoosLKvNwtv985CotQFZ/PWQq6yGlvwFO9DdEvKIxjssb4qiCKQ7JmuKAnDki5CwQJm+JXTKWCJW2QYiMFTbL2CBQxharOdthmYwjlvRzgF8/Z/j2c4SHtAuc6UN1VfbE9fOlfEmaV6VLIPK+1EGenC7OKM5HDpUrQ1kf6VSu5P5GSKByxSgY4aicCQ7JmeGggjn2yFpgN3mHrDVCqWwhMtbYROVaL2OPNVSuFTIOWCbtCP/ednD8yAQhuhv4V2teojupm+DGbrWzO6l1b7X394VTP1fEE6S4fYff4tV19cRFeP/XECtV3bFUkXU18IAvvZabjDvctLz5XM3rzQMyyQbXVWejhLZlnYouDTBEngbrPGSMkxomyNY2RpqmGVI1zbm+HvHq5ly/jqMqVjikZosDXN8Ne+xWscMOZUdsU7HHFhUnrj/Ges4uWKnihgAlV75/hRt8lDzhQW/YU9sXpRfL+JI0Vs3Tpyib6YFCiV9waaA+13eFlSuXypXFdWAyQwrXD4X1P6FyqVlxfUwOs36tqqw/iS3CVB2wk8q2TcURIVSuTVzfECesVnHl+oIs4+wOpy+tsXToIlQ/quZfvbFqAWnytxgFH7go+SBSci4qNh3it3h1cYB8aogA+syW9medlVj3AgJE+l0BMpEB8jtKBhMgA5oBRIMBIuoMFK/WDCDKBIhSQ0CcOEg4QBRfHZB76/fgar/JuKqtT+XSawyIhml9QFQJEFUeEILiOSBUNhEgjthYFxAqyzJlV/qmutGB8ITj17bYY9f8ef7PAfGlWow+uwkueHL/Ib/Vq6nlAVJbgzBAmqtBOED4GqQ5QFgN8gYBeVp+E+WjTHFNZTauDjBoBpAGNQgDpLYGqQtInRqkOUAWUpk8pd3gqe6Na/nX+VLU158CouiDaE1rpHWdisrYk/xWr6aWB4gOa4NMR7EGtUFU54jaIHSe59ogitQGUaE2iCK1QRRZG8QEsexcr2BG53pqg8hbIILaH2HyVtglS20QOseHyFIbRNYWGxQcODiaBYTesLuaV7NtkOqcS7jeeSSuDzagGqQBIJomyFQzRDqVK1nRCIlUrhhqixyVpzaIvLmoDSJnid3UPtohR20QKluIrA02UbnWy9pjrbx9k4AsVPaCyUfmOHskjy9Ffb0MIDEEyEklPSQNMOO3ejW1OEBuGfihfLQNSic6oniCE4rGO+PSWBecH+eCs+PckEtXNDnj3JGl44F0HS+kjvFC4hhvxI/2RuxoXxwjHx3th8Oj/HBg5CJEkPfSFczO4Uu4A/G8DVIXEGp8ufZ1waIfl6HyStOXhQ8OxKK058+NAMkjQE4p6uPUT7ZULg9k63gig8qVQuVKGu2FhNE+OD6WlcuPyrUQh0b54+BIf65cu8m7Ri1F8LfeWCnnyLdB6gNi+bk1kral8KWor5eqQTSscXqAKaI/noQbWfn8li+vFgfI21Lm2mgESJg3CYiXjCsWavri/u0HfO7G+iNoP8qkJjUGRNMI6V0no/rh653jmaoeP8ISKttKAqMhIBYESOqudD5nfb0sIDlaJjihbIjk72z5LV9e/whAHty6i2Wf6WO9UtNtEKeutkgKTuJzN637WyIbA6JFpxgVfTrtzedzvb7WDXHDclknAoQOxFsAJE3LFLHSeih7xbbIPwKQkAHOWCdlQ43B+m0QNpTAV4o+XLqs/DM1C4iyPrI19Phcr68NP/pw90HYOJi3A4gZ4mQI5pnL+K1fTm0ekPw9KVj1qR43NrbhVQy78WPd3hAPHt7nczcvcTVItvoCPtfrK/AHbyx/q4CYIlHNDMfosrf0aDa/hz9Xmwak6t4DbKPLyiBqnDa8zGWDk1w/N8dh15e7Ff22AdnwNwCSpGWBIxLzkGMb9NLTQrRpQNK9I7BZ0oy739AQkCV97bFc2wt3y17uNnSbAETTAsdVLXBQci7uX63g9yJebRaQilMFCO1vja3yNo1vlNFB8OluieTVx/ncf662AEgiAcKGnx7qMR9Z1pv5vYhXmwUkdv5aBH1tzJ1i6gPigqVUe2ydsJLP+XJqK4DEqlEtom6Dbe0m4Onj5n/nqVWbBKQk5jQ2farbxI91IkAWdjVDSe5VPvfLqdUCombZCJAYguZgb30k66/l99S82iQg23sbYZecNXY2ACRQ1RnLullgj2EQn/Pl1RoBcVb0RpSGBXLUjesDom6NI8oW2CtljIe37vF7a1ptDpCTC8Ox7Wt9bpqGhj/WrVN0hsfHr3dTq7UB4iLvDVfNRch03YGsfrpI0WK/ftcBRNUS+wiQVLNN/N6aVpsC5G5RKfb0McYeFbsmf+5f9JkB8o+e4nO/mlojIC5Ug1xOvoQLvy9CsrwedxXzHBAVS0QqkAc74taFa/weG6tNAXJi7lrsoW9FU/1BVve0xO6pq1H96DGf+9XU6k4x/ODtK/mVuLb+IJLk5jcC5LCaLcIk9HFqUfP3gtoMIBXJ5xDR1wj7lW0aARKi6IB1srYojDvL5351tVZACjKucHlPKBlyd1IbAhIhZ479Q13woPQ2l6+h2gQgT6uqETfWmwAxbqJHmQMCe1tg34w1fO7XU2sFpHb6h/NOwYiVms/dB6kLyEF1W2z9Yh4uhDf9Y2WbAKRgeyx2d5iOQxp2jQAJVbRDoJQlqmue8LlfT60dEKbDH01CbENAyHuUrBHc04DPVV+tHhD2m8KejlPpDVs36pO6k9oeaz6ei9M7Evncr6+2AMh5/x048pUuYjRs6gBigwgNB2z+RBf54cl8zhdq9YBkG61GZE89HFVtAAi1PUL7WmLbQGc+519TWwDk8e27ONxjNqLpErceIPR57epvjVA5Kz7nC7VqQG5l5ONYPz0cU2vcaZld6q7uMAul6W9mApW2AAhTnvdORH49B0fVrOoBEqZqixBJE+SG1j82rRYQ9vQH1ic1pi8BQufUhoBs7W6IVPfdfO6/rrYCyO3TBTimaoZD/c0bARIqbYXwb734nCK1WkCuborC8d5zEafaeNgD69W+W9sRtwv+fJTcy6qtAMJ00nwT91tMQ0B2KtsjqI8Fzm5/0RZplYA8uXsfKQPMkdDfuMmRdTulTHEqIJLP/WbUlgApS8jFITZclRr2dQFhs0ZvkjDHodnrUF0luqHYKgG57Lsd8d1nIUnLqtHAqX10ybZT9vXGgIhTWwKE6fhwdxyUM28ESKiiI1Z2WoDK06Jfu1sdIE+qHyH6vZHcs2EajaxTt0PIv6fjbunLjdB/FbU1QG5fuIrwTroEiG09QNh884G9LRE2fgmXrzj1UusC5NQIe6T2N2g89JKuZHZ/vQDx81fzOd+s2hogTIeHOnDz0dcDREk0JNTvw9m4c+0mrmVdaT2AlO08jrR+uvzo/vqDtw/Ls6kfzPCg8vWnOhCntghIRcZFhH48AxHqDQChWmR9H2vs+jUAd4puwqujQcsH5MndezgzxhmZSgsaARKtboM9XXVxfs0RPvebV1sE5NmzZzjykxt2S1sQIKJn3zBAgpUdEEThyt42OBmejEVfW7Z8QK4tDkN6t6nIHmBSf/oHuoo5ImOMxIn+ePr49X7Kfxm1RUCYyhLPYWvnuQhvCIiyEzcScXk/W6xWdkUAGxLaUgF5eP4qcmRm46SqUaP5QeKoBonsY4CSI5l87rejtgpI1Z0/ED1pMbb3NW1Ug7AHH60hMFYrubVsQC7P8EZOn5k4qWlaD5AkLUsck9JHyqxXG074OmqrgDDlBUZjGwGyk8BoBIhKCwfkwdlLOPnpOJwlMBrOMJSsaYXd7XT4nG9XbRmQajo1h2vYY7u8LXeZ26oAye83DXmqomfX1QNEyxxRnWfickg0n/Ptqi0DwnQq4ABCJExaFyCV/qE4L/97oymo0tnpRUYPKaNd8OzJX+sI9LJq64AwBXUzQGh/h9YBSNWFK9wTMS+qzW88R5maKRJkF6A8KovP/fb1TwAk3W8vAr805CbXa9GAsHHnN1w24rLMdDoQDSaxo8vcpL5zcVp3qSjz36R/AiCP7z3E2s4LuE7eQXSqabGAVGXmoajHzygawKabrA9IFi2nKBvg4UvORvym1CwgbAIZTX0+1+sr8Md3DwhTuv8BgsQIQSqiB0C3SEBKfzTEVdXZ3MOX6wGiaYK0Pr/j2q5YPuffpz+CDzQGhM1Rpm6IjF7T+Vyvr2WyNlihwB6mTAfiHQJy8/w1bFawxUZ5+5YJyIOdR1H85ViUfGPQeCJdAiRdWhclgYdxyX07LrjvQL7bDpxx3YVcco5rGE6Ss13DkUlOc96NVJfdSHbZg0SXvYgnx5FjXCJwzDkCUc77cdh5HyIp3GdH8cXRuH+z6dmGHoRFobT3xMaAUJsoq9csFHiHotBjO5VrB1euc1Sus247ubLluNWWKwwZVJ50ckptuVypTO57say3TZOzHDJATuxI5UtRX28DEKY46+1YI2HWMgEpk52C69rzm59pmdogyVJzkNBnDo73mY9jveYispce9kvoYW9PA4RJGmJ7TyOESlA12d0UG3sYY30PU6zuYY7lPczIFvCTsMLCblbw7GYD927WcOpuC6tOlvDUWIgbRU13FXiccQbXu45uBAgrV66WKdKk5yCljy6Vax5iqVxRvalcPedjv6Q+InoZYJeEIXZQ2bZIGiO4hxGVywTrqFwrqTwBkhZi50k9ebDp4aJvC5AriXnYRO2Q9f2dWhYgNXiGcgYI5RM7FTdd5rKf+9md1Hh1C24ODK5Xu7qoR9ledVGvdm50f535QUST2LlglSq9YXrTbBK7xewNs8nppV2x5H8BuFVyiy9NfT25VIzS/lNxTZveQ0NAWNtogGiu9lRN0UzLcRRGq1nhqJoNDmvUztVuh3A1NtOyPerP1e7cJCDeCp6wlbDH5dQCvhT19bYAYdr7SwD3+PgWBkgNyuWm/jkgdX+sq9thiO9yWHfgVN3B23WnoKo3kS57w/14QIqbBqSmpga3ndehWHqqmKm43+xc7c49HBAyNwRPqpu+1/M2AblZWIalXYyxtiUBwhBpqYAwPSmpwLWh1DaSn4VLgwxEVzFvARD2tAcvKRc6CM7NztPO9DYBYQoZthArZRywRtUdK6nWXUqv4a/igYUqXnCT9YC7tg+fs3n9TTUIOxBGBIjxC0DIdQE5QoBE0gE4QK4LSKgyAaJMVbkyAcJ+wqbwOSCKBAh9W0WAuGDxT+IBYXpy8zaK6DST33UC8lX1eECooaptIgJEgwDRIEBYZ2o2QIkDxEYEiAoBouKAHQwQ7pY2AaLswpWL/aTOAFlKVzIu/zWF/RfmqCyp5F+1ab1tQG5cKYNZu7Fw/48+nNvrwf4DQ1h+aAjzD41g0M4AhlTGP9MbrkGeobSbDkpkqBqXm45L0jOQT87tMwunpH5HZp/ZXI+yZGqgJlBD9bgUa6TOo0aqPjUGF3CN1HBqoO7oaYxQSSMEUyN1k4QJ1lOLfLWEOVZIWGCZhCUWsUZqD0t4sUZqd2s4d7eDdScreGn5obKZRmpD3dh8AHmKs5EjMR3ZVLZ0KtcJrly1jdR5OESN1AN8IzWMyrOjpyG2SpoghBqoGyVMsY7KtYrKFEBeQuVa2MUcC6XscDzgKP8q4vW2AWG6WVaJW+TbFTdxs/wmbvG+UX4DldfEA8z0hmsQoLrkOp6Ul6O6rAKPeT8qK0cVhQ95P6ACP6Dwfq3LK/EH73vlFeRK3KU8zHc438Bt9iYpZG+Wmb3xmxRnvkGuLKU4vfGnT5+JCvMKYmV6RH5I+3xeLioHC1lZROUSla1xuUS+ef3lpqWsq78DkL+qN1yDCHoVCYAIEisBEEFiJQAiSKwEQASJlQCIILESABEkVgIggsRKAESQWAmACBIrARBBYiUAIkisBEAEiZUAiCCxEgARJFYCIILEigESPLWtAdJ/Fu5HpfE5Bf0l1QChv4fAtVebAUQPV1V1UeG8Hnd2ReP2lsO4WceV5BshFJIrQo5wLg85irJgkUtpuZTSrlN4fctRlFB4jczCkpAoXA05hmLy1eAoXKE4cyHFOQcfQwGFBZRWEByNCxuO4M65V3vy5cuo6o+HyAk6jlObY3EqKI4ci5Pk7OeOQxY5k3dGUDzn9DphGh+m8k7ZnPDcJ2odlIjEjXFYM2IFPKVdCQyP1g9ICQHCapEr6nNRqKyLAqXZuEy+qDQHFxRn41x/XZxT0EUe+azCHOSSTyvMRY78XJwiZynMQzY5S0EPmYrzkaYwH+nkVIozJ5OTyInyekiQN0S8vD5i5Y1wnJaj5ciyRjgma4CjMoY42HMeCrfH8SV+M7py4ixCFGywobcZNva15hwoZYX10jZYR8tryWv62mJ1XxusIq8kB/S1wwry8r72WEbhUik7LCEvJi+ScoC/lD38pByxsI8jfMk+ZE+yVx8neEhRzaHgDl9FrzYEyKAFKB6gx/VYLxxggAIKC7T1cVlLnxtGcEHDAOc1DZCvaYSzFJ7VNMYZdSPkahjhFKXlkE9pmOIk60WuaYosWp+haUY25QZTpTCrmyKJ611uhgQNS7IFYtUtEKdmgeNq5jiuYoHDckYo2vXXnyPD9LDyHsK+c8PK92Zia387bFW2R7CyE7YoOSJI0QGblZ3JTthA3kgOVHYhO2Mtmc0BJgppeyXWs92VG9QVoOSCZUruWM56uit6YImiOxaTF9GyHxs3QxD4KXjAh8DwVWpzgOijiJaLBhqgkMICAoUDRJsBYojzWgSIFhsLI5pZ6Iy6MXIJhFO0nEPpIkDYSDYChNIytQgQLQJEy5wzBwg3PoUA0SRAuHEqbMI70XAE9vz6w3LGKAr7a4A8uHEHWf77sbG7AUIkzbFN1QmhKo7YqkKAqBAgBAMDJEiFACFvIG+kdDbmNZC8luJs5JooZIC4ceNz2aPjAwgiNj6GjfZfRlCwUYCicTxs8JIb/KnN4afgKQDSUgE5szkaEd+6I6S7Ebb3t8UOJXuEKjsKgDTQPw6Qh/fuI3KkN7b2MsG2fhbc1JHb2WAoRTsBkCbUPCCyU1DxDQEycD7KBuvj+pAFBAcDRQ/FA/VxZRBBMsgQhRQWECiXtQ1wcQABokmAECj52sbIo/AstTXOaBAgDA5KYz5FYJwcwOAgs7aINgFCTtMmQMgp1PZI1rJ8o4BUERiZPuHY1GEmdvU1xy5Ve4KDWTwgwawdokqAkDfy3qBKgJDXkdeqEiAUrlEVwbGKgcJG/hE4y1UIEPIyOvhLlQkQ8mKyP4Hjr0yA9PfkBp77KnvBm0JvZQKE7EHAcI9ml/XA5dQWCMgdt0Bc/2wYSqWn4HqfSbgmNRnF/X7FFakpuNp3Mgr7TMXlPlNwicKLFF7oPQ3ne01FXq9pOCs5DWd6TkNuz+nIofBUzxk4KTED2ZIzkNHzN87pkrOQ1nsmUnrOIs/EiZ6/I5mc0HM24slxEr/juIQuEvobcsMz/yogVw5mYt9gJ2z9bC73yPc9DA4yG2PbNCAOCGbTJ3Q3xerORlj1lSlWfmWCFZxNsZy8jLyEvOgrcyz+ygz+X1lgYVeRfck+Xc3h1dWSs2cXK7iT3ciuZKculnDuYg2nL6zhQKFDFxvYUmjbxRY2ZKsvbWDeyQ6mn1njfNybeSTb66pJQKqSTuJewA78sWEf7m6IwD0K79Tx7cB9uMn7Buf9qFy/DxUUVqwXuYx36foDuL5O5Gu0zFyy/iBKAg+gmJZFPogr5KL1kSKvi8TVLceQNXkh4hWNXxuQWxeKkTh3DbZ310OYrAX2qTn8KSDb1JywqbcFVnczRMqi/cgKjEHmmmNIr+M03qlropCyJpp8DCcorHUy7yTOMUhkXh2DBN7xvOMoPY7C2NXHecfiODlmTSyiKR4VEIObxTf5d/Nu1CQgLUXnHbcgpt+C1wIk0yUU4T0NEd7PlBt0vUeNDb62bx4QJbq8VbDHin/NxLahrqi6+5Df0z9bLRqQfPvgVwKEzS5QlpCH7Z1mYvdX+tzTmPazp1hxU0rYNg2IqgO20VVMUA8ThNKVTFHy6z/+vS2qzQByI+siTsxbhV2dZuOgkhUiCQj2NKZ9BElzgLBGakg3Y2yVs0KqcxgeP6ri9yaoVq0YECOUHBI9IeKkw1YcUrJARA89RKrYcFNZRdJppVlA1OyxQ8Eam76Yj2Oz16I4MY/bj6DGap2AUHhMzQIZpusRN8Id+yX1cFjREkfUbQgM0VxnTQJCcDBAtlEDdGOXuSg4lI2amlefLuKfpNYJiLoVoqkWYQ8iOqLAHjBsyU02d4TcLCBsdqB+FtjW3QCJ1kH8Kwj6M7VaQGLULRGlbo0oNWuxgOxXt8NuOUtskzRAzPQA3DhfzO9d0Muo9QOi2gwgqiJAtn8xF3vp1HPlcDaeCaeTV1bbA0SVGqmsvdHXFFs+moEsrzA8KBc/sZ2g5tXmANkva4aI3kaIGumJB6Xv9i5kW1DbAITi7Comgq5mjgxxxPkNUfweBP1VtX5ANGxwUMoQET31cNpzFx5U3ua3FvQm1IoBsUKUiiXCP5yMmOFueFgqgPE21LoAoVojVsMC0crmOCSlj0hpA5TEnuRzC3obanU1yNFe8xGlZIIchy148lj47eRtq3UAom2F44qmONR5JtJnLkWF8Ivr36YWD8hxaT1ESczB0T5zURKRgqfV1fxaQX+HWjQgZ802ILL9ROQ6BfMpgv5utWhAClYewM2MfD4m6F2oxQLCnhAl6N2rRdcggt69BEAEiZUAiCCxEgARJFYCIILESgBEkFgJgAgSKwEQQWIlACJIrARABImVAIggsRIAESRWAiCCxEoARJBYvRVAzp07B1lZOaSkpPIpglqrGgGSm5SIJxTeuHoeBTceiRJ5paWeYfPP4+GdW0iLi0dCYiLi4uKQlnlGlIFXcnIy2rVrh71793LxJ1UPcSotCXHHY5CW92J+9WsXLyApPg6xcQkoLL3Dp75QRdE5JJ08z8fqqgbXiy7i+u1HqLlbgRMpyYhPSEBcbAxSsi/weUQ6k56MvCuiEXb3b5UjOTEOSSkZyMxIxdHoRJSW13ndmkc4mXMOePaUTwDulhfh3MVSPiZS1okcfkmkR2VFyL16n49RvOIKzlyu4GMiXUhNQlOdJSuvnMOJ7Bd9bKvu30VOZioS6P3E02d7Iv0UHj4DrpxNQ+ljPhOnGvrsT3NLFVcKkRxPxyMhETHRscgvKKHUp4hLqdt3twqxyXm0WTUyU+IRn5SK7KwMxMTE0fu7xudprEaAyH75Fa5TuN3NEp2/0BIlknIPbMTn738ChkxyTDi6fi2Jb77/Edqampg0wxJ1y56amsoBcuDAAS5edCYHCl92hsY3/8NAFSnM0rPh0s3nTkdfZW38MHQo1FQV4b71GJfO5DPne6iqq2HIQFUM/kkHF+pOGfbsIRbP04H/nlyU7/LBZx0lMWz4T9BSU8LIOb5clj8qr2Ocal9oaQ+Cplx3zFigj9xzJzB+5PdQ6ycBSQlpqGoMw97DGVx+TnfPY+pPKpi3tjatCgvNxkFlwmo+TrqVDdlOn2Blxosvz8UNjpBUGIhKPn42wAgqv67kY0wV6P3pv+EYwT7ZF7LTkYOSoiq+0ZJHP6leYIidiQuHrJQkBg75FgO1NDDyVz1coQ/X9n9qGDzSVLQh6bDXbHT+SpVb9nUyRy85FXz33bdQ6q8O99W7KLUMn3XpjY3JtcNP89GlmzpQfRuzJ9BnoNAPXb/siSFDvoeLfxifp7EaAfIpHVjGU5DdfO4gD/NNp9gtzPu+JxdntcvesFX4Vc+AZUf148eoqqo//KAhIGcTE/DtUB2cZxvTHoZ2bYctBP+44YMRniUa13I9PgSKqqNw+TaQ4DUemloj8OjpUzx6/AQxiyZBcdg4Lh8nAsRp4kDYb8tB4dLfITlWdAAfP67CoyruRTBXswt+0V2GZ8+e4FZlKaKPHuXSH9G38fLyX/DZmEUUe4bq6he1Be6cw3jt7lzZmVL2hHPL3b9fwsWZFs2fA3PLX/H+J6P4FAJklRWX77tRulw813c6Ov8gApUp1PAHjDd3xte9+/MpQLT3WHz8yXBuXrVqqmEz0kSn48TwpRg80Qol9Dk8e1pN70f01dPTlOBew/0Q1Ux/pKNXh3Zo914vbt3sGeOw5kAkt/y46hGquUkMCrn8H/cdiDyu6jpH8c5sAQ+f1OD2Hke0U5wrij+qVzXVUyNAvqSdsgp14dRfEJidB0WJ9pjptRg2ASvQU1qOo/zQ3g34RmcCkk/lIIkO/slz9auohoDkJSfi229GI/vWMzy6U47ven6AnQTIL6O/RdDxONy7ex+5+1ZB+5vJYBW+FG27oc6Z5cmDe9CQ6IHg5HuihJqHcJ08FI47c1Gy1ghdBhgi78xJqpJjUHjjD1p/Hx992gOsom1KBSsIkHFL+VgdVWbie/rGpgcuQLsvxsN+wXjYGs7GkInLRetv5mDqyBm4RR/4HJkuCDglSs72mIpBJgfgpiOPSXYRuBZoih4jGIBMxZDTHsItOU+Qh3uYaGLcL+g9ikYQP8C505lIychEya0aZB0KhPp3P2P/sRQkJyXgbL5oeiydTp8i+GoZRnyvBJlhvyK24DQ+bN+JW2es+ysMFi5GRmYGYhNPoKjsAaWeRfsPB6HohB+GjhhP8TK8/14PLj/T/Ui354CIU7OALJo6EXq7TqMqPRgdOilz1Wfv7l3BDlH0wWBIdO6KKdOmQmfcBLiuEn07a9UQkMsn09Gj/b/xzcif8eO3mjBy8+HSZ437CbKDR+LnUd+jl5I8tqaJPgz199vBN/HFOeVZ9X3ISUsh8nn/5Sr4/vY9bLdlo2yTLf7TTRMzpk3B6BHDsTWJ7eM+Ov7nc5wWVSaNdGn5JHym86JWeK4bWRgy6AeUUoU4S/4TzHANQv5uF8j9KCpvbMQqSEqrwsorADbj5SEzwoRLz/Gcgj4TA+lYX4fWMPo8Jv8AmQkruHXxG33QWWoIHNx98NvU7/DjBCsuvSN9PtzDTB5chJ+zCb7t0g7Kcw+iKC0M8nLyGD1hCsbpjIXfCtF+xn7aAcH07Tno8TsUR5hRSjXVIB9x62z1Z0JLQxOTf/0FoyfORvgx9u06/7yGmaH9DZw9nPGv96W5ONO9A64EyBw+1rwaAdKZB2Tx1J8xe61oFsG8bNYIrcFXnTuBvp90ilkNAw8vbl1TaghIPjUiB6kNQlhSNpLSXzTwRv80CMv3HUbeiYMYN1gD8Zmi2X8OrNdHux4/4gr7IpDmD1WF1PfWKMiKwbp9oonrhvX5CouiKlGwdBbkZ0VwaXXlPEEFA2Z48LEyTPp5Gsr5GDvF/HdcE4DczMaQwT/iNGtgPriCQnr95HWmUBjmRytr4GY8EWPneiI0ZDPWBCzHSG15xNA357z/b5DUER3Is0cC8HX7dug/ZSPFnsJi1m+Yq2eLkJAQbFjsCp2R45BcWINYp/H4RG0SakcUrx/xFXpPj8CF44EYNoe9Xn2NpTbMKvp4Ht26jbLiMkq5Q59xB26dLp1i9ufVb5xTa4bWS3JL98vOQapfD4o3AETpNWoQdmALKLTRGYGffOvWDLfxEb1x1jaP3Leey9fuvfe4sK/WUG6bWjUEJCs2Gj2VR+ESF3uhAerS2HRGVC1EL3fDex01kF8mavxtC7BBe/Ya5O9mOHBpuHEaA6U+59J+muHKJeV4/sbF33tPlLfdh4NRxZoVVaWwo1qGS2v3L9ivfvFechy08J6KLR+ro+uJUOzWG5k5L+ZH3+8+Ee2l7XC78gI+l5Ij1F5orcsYGDj544zjSPo2OvGpwIpJvfG+ugeuZsahl8Io5POgM1kaTsY0v03c8hanKXiPK1879B46lUtL2rsWH/BpnP+rjWj6fmp/0A7OuVwWXle59UwL5v76Ij9Zx5q1f1ib48XhrcpaVy9esUUP7ToM42PNqxEgb0INARHUevVWAElMTOQACQ8P51MEtVa9FUBu3LiBVatW4dq15m/ACGodeiuACGo7EgARJFYCIILESgBEkFgJgAgSI+D/Aaa6qw47vTE9AAAAAElFTkSuQmCC" />

                            </td>
              </tr>
                        <tr style="height:80" valign="top">
                <td width="40%" align="right" valign="bottom">
                  <table id="customerPartyTable" align="left" border="0" height="50%">
                    <tbody>
                    <tr style="height:80px; ">
                        <td>
                          <table align="center" border="0">
                            <tbody>
                                            <tr style="height:71px; ">
                                                <td>
                                                <hr/>
                                                <table align="center" border="0">
                                                <tbody>
                                                <tr>
                                                <xsl:for-each select="n1:Invoice/cac:AccountingCustomerParty/cac:Party">
                                                    <td style="width:469px; " align="left">
                                                        <span style="font-weight:bold; ">
                                                            <xsl:text>SAYIN</xsl:text>
                                                        </span>
                                                    </td>
                                                </xsl:for-each>                                                 
                                                </tr>
                                                <tr>
                                                    <xsl:choose>
                                                        <xsl:when test="n1:Invoice/cac:BuyerCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID='PARTYTYPE' and text()='TAXFREE']">
                                                            <xsl:for-each select="n1:Invoice/cac:BuyerCustomerParty/cac:Party">
                                                                <xsl:call-template name="Party_Title">
                                                                    <xsl:with-param name="PartyType">TAXFREE</xsl:with-param>
                                                                </xsl:call-template>
                                                            </xsl:for-each>                                                         
                                                        </xsl:when>
                                                        <xsl:when test="n1:Invoice/cac:BuyerCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID='PARTYTYPE' and text()='EXPORT']">
                                                            <xsl:for-each select="n1:Invoice/cac:BuyerCustomerParty/cac:Party">
                                                                <xsl:call-template name="Party_Title">
                                                                    <xsl:with-param name="PartyType">EXPORT</xsl:with-param>
                                                                </xsl:call-template>
                                                            </xsl:for-each>                                                         
                                                        </xsl:when>
                                                        <xsl:otherwise>
                                                            <xsl:for-each select="n1:Invoice/cac:AccountingCustomerParty/cac:Party">
                                                                <xsl:call-template name="Party_Title">
                                                                    <xsl:with-param name="PartyType">OTHER</xsl:with-param>
                                                                </xsl:call-template>
                                                            </xsl:for-each>                                                         
                                                        </xsl:otherwise>
                                                    </xsl:choose>                                                   
                                                </tr>
                                                    <xsl:choose>
                                                        <xsl:when test="n1:Invoice/cac:BuyerCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID='PARTYTYPE' and text()='TAXFREE']">
                                                                <xsl:for-each select="n1:Invoice/cac:BuyerCustomerParty/cac:Party">
                                                                    <tr>
                                                                        <xsl:call-template name="Party_Adress">
                                                                            <xsl:with-param name="PartyType">TAXFREE</xsl:with-param>
                                                                        </xsl:call-template>
                                                                    </tr>
                                                                    <xsl:call-template name="Party_Other">
                                                                        <xsl:with-param name="PartyType">TAXFREE</xsl:with-param>
                                                                    </xsl:call-template>
                                                                </xsl:for-each>                                                         
                                                        </xsl:when>
                                                        <xsl:when test="n1:Invoice/cac:BuyerCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID='PARTYTYPE' and text()='EXPORT']">
                                                            <xsl:for-each select="n1:Invoice/cac:BuyerCustomerParty/cac:Party">
                                                                <tr>
                                                                    <xsl:call-template name="Party_Adress">
                                                                        <xsl:with-param name="PartyType">EXPORT</xsl:with-param>
                                                                    </xsl:call-template>
                                                                </tr>
                                                                <xsl:call-template name="Party_Other">
                                                                    <xsl:with-param name="PartyType">EXPORT</xsl:with-param>
                                                                </xsl:call-template>
                                                            </xsl:for-each>                                                         
                                                        </xsl:when>
                                                        <xsl:otherwise>
                                                            <xsl:for-each select="n1:Invoice/cac:AccountingCustomerParty/cac:Party">
                                                                <tr>
                                                                    <xsl:call-template name="Party_Adress">
                                                                        <xsl:with-param name="PartyType">OTHER</xsl:with-param>                                                                 
                                                                    </xsl:call-template>
                                                                </tr>
                                                                <xsl:call-template name="Party_Other">
                                                                    <xsl:with-param name="PartyType">OTHER</xsl:with-param>
                                                                </xsl:call-template>
                                                            </xsl:for-each>
                                                        </xsl:otherwise>
                                                    </xsl:choose>                                                                                                       
                                                </tbody>
                                                </table>
                                                <hr/>
                                                </td>
                                            </tr>
                                        </tbody>
                          </table>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                  <br/>
                </td>
                <td width="60%" align="center" valign="bottom" colspan="2">
                  <table border="1" height="13" id="despatchTable">
                    <tbody>
                      <tr>
                        <td style="width:105px;" align="left">
                          <span style="font-weight:bold; ">
                            <xsl:text>Özelleştirme No:</xsl:text>
                          </span>
                        </td>
                        <td style="width:110px;" align="left">
                          <xsl:for-each select="n1:Invoice/cbc:CustomizationID">
                            <xsl:apply-templates/>
                          </xsl:for-each>
                        </td>
                      </tr>
                      <tr style="height:13px; ">
                        <td align="left">
                          <span style="font-weight:bold; ">
                            <xsl:text>Senaryo:</xsl:text>
                          </span>
                        </td>
                        <td align="left">
                          <xsl:for-each select="n1:Invoice/cbc:ProfileID">
                            <xsl:apply-templates/>
                          </xsl:for-each>
                        </td>
                      </tr>
                      <tr style="height:13px; ">
                        <td align="left">
                          <span style="font-weight:bold; ">
                            <xsl:text>Fatura Tipi:</xsl:text>
                          </span>
                        </td>
                        <td align="left">
                          <xsl:for-each select="n1:Invoice/cbc:InvoiceTypeCode">
                            <xsl:apply-templates/>
                          </xsl:for-each>
                        </td>
                      </tr>
                      <tr style="height:13px; ">
                        <td align="left">
                          <span style="font-weight:bold; ">
                            <xsl:text>Fatura No:</xsl:text>
                          </span>
                        </td>
                        <td align="left">
                          <xsl:for-each select="n1:Invoice/cbc:ID">
                            <xsl:apply-templates/>
                          </xsl:for-each>
                        </td>
                      </tr>
                      <tr style="height:13px; ">
                        <td align="left">
                          <span style="font-weight:bold; ">
                            <xsl:text>Fatura Tarihi:</xsl:text>
                          </span>
                        </td>
                        <td align="left">
                          <xsl:for-each select="n1:Invoice/cbc:IssueDate">
                            <xsl:apply-templates select="."/>
                          </xsl:for-each>
                        </td>
                      </tr>
                      <tr style="height:13px; ">
                        <td align="left">
                          <span style="font-weight:bold; ">
                            <xsl:text>Fatura Zamanı:</xsl:text>
                          </span>
                        </td>
                        <td align="left">
                          <xsl:for-each select="n1:Invoice">
                            <xsl:for-each select="cbc:IssueTime">
                              <xsl:apply-templates/>
                            </xsl:for-each>
                          </xsl:for-each>
                        </td>
                      </tr>
                      <tr style="height:13px; ">
                        <td align="left">
                        <span style="font-weight:bold; ">
                        <xsl:text>Vade Tarihi:</xsl:text>
                        </span>
                        </td>
                        <td align="left">
                        <xsl:for-each select="n1:Invoice/cac:PaymentMeans">
                        <xsl:for-each select="cbc:PaymentDueDate">
                        <xsl:value-of select="substring(.,9,2)"
                        />-<xsl:value-of select="substring(.,6,2)"
                        />-<xsl:value-of select="substring(.,1,4)"/>
                        </xsl:for-each>
                        </xsl:for-each>
                            </td>
                        </tr>
                      <xsl:for-each select="n1:Invoice/cac:DespatchDocumentReference">
                        <tr style="height:13px; ">
                          <td align="left">
                            <span style="font-weight:bold; ">
                              <xsl:text>İrsaliye No:</xsl:text>
                            </span>
                            <xsl:text>&#160;</xsl:text>
                          </td>
                          <td align="left">
                            <xsl:value-of select="cbc:ID"/>
                          </td>
                        </tr>
                        <tr style="height:13px; ">
                          <td align="left">
                            <span style="font-weight:bold; ">
                              <xsl:text>İrsaliye Tarihi:</xsl:text>
                            </span>
                          </td>
                          <td align="left">
                            <xsl:for-each select="cbc:IssueDate">
                              <xsl:apply-templates select="."/>
                            </xsl:for-each>
                          </td>
                        </tr>
                      </xsl:for-each>
                      <xsl:if test="//n1:Invoice/cac:OrderReference">
                        <tr style="height:13px">
                          <td align="left">
                            <span style="font-weight:bold; ">
                              <xsl:text>Sipariş No:</xsl:text>
                            </span>
                          </td>
                          <td align="left">
                            <xsl:for-each select="n1:Invoice/cac:OrderReference/cbc:ID">
                              <xsl:apply-templates/>
                            </xsl:for-each>
                          </td>
                        </tr>
                      </xsl:if>
                      <xsl:if   test="//n1:Invoice/cac:OrderReference/cbc:IssueDate">
                        <tr style="height:13px">
                          <td align="left">
                            <span style="font-weight:bold; ">
                              <xsl:text>Sipariş Tarihi:</xsl:text>
                            </span>
                          </td>
                          <td align="left">
                            <xsl:for-each select="n1:Invoice/cac:OrderReference/cbc:IssueDate">
                              <xsl:apply-templates select="."/>
                            </xsl:for-each>
                          </td>
                        </tr>
                      </xsl:if>
                      <xsl:for-each select="n1:Invoice/cac:TaxRepresentativeParty/cac:PartyIdentification/cbc:ID[@schemeID='ARACIKURUMVKN']">
                        <tr>
                          <td style="width:105px;" align="left">
                            <span style="font-weight:bold; ">
                              <xsl:text>Aracı Kurum VKN:</xsl:text>
                            </span>
                          </td>
                          <td style="width:110px;" align="left">
                            <xsl:value-of select="."/>
                          </td>
                        </tr>
                        <tr>
                          <td style="width:105px;" align="left">
                            <span style="font-weight:bold; ">
                              <xsl:text>Aracı Kurum Unvan:</xsl:text>
                            </span>
                          </td>
                          <td style="width:110px;" align="left">
                            <xsl:value-of select="../../cac:PartyName/cbc:Name"/>
                          </td>
                        </tr>
                      </xsl:for-each>
                    </tbody>
                  </table>
                </td>
              </tr>
              <tr align="left">
                <table id="ettnTable">
                  <tr style="height:13px;">
                    <td align="left" valign="top">
                      <span style="font-weight:bold; ">
                        <xsl:text>ETTN:</xsl:text>
                      </span>
                    </td>
                    <td align="left" width="240px">
                      <xsl:for-each select="n1:Invoice/cbc:UUID">
                        <xsl:apply-templates/>
                      </xsl:for-each>
                    </td>
                  </tr>
                </table>
              </tr>
            </tbody>
          </table>
          <div id="lineTableAligner">
            <span>
              <xsl:text>&#160;</xsl:text>
            </span>
          </div>
          <table border="1" id="lineTable" width="800">
            <tbody>
              <tr id="lineTableTr">
                <td   style="width:3%">
                  <span style="font-weight:bold; " align="center">
                    <xsl:text>Sıra No</xsl:text>
                  </span>
                </td>
                <td   style="width:37%" align="center">
                  <span style="font-weight:bold; ">
                    <xsl:text>Mal Hizmet</xsl:text>
                  </span>
                </td>
                <td   style="width:10%" align="center">
                  <span style="font-weight:bold; ">
                    <xsl:text>Açıklama</xsl:text>
                  </span>
                </td>
                <td   style="width:7.4%" align="center">
                  <span style="font-weight:bold;">
                    <xsl:text>Miktar</xsl:text>
                  </span>
                </td>
                <td   style="width:9%" align="center">
                  <span style="font-weight:bold; ">
                    <xsl:text>Birim Fiyat</xsl:text>
                  </span>
                </td>
                <xsl:if test="//n1:Invoice/cbc:ProfileID!='IHRACAT'">
                <!--<td   style="width:7%" align="center">
                  <span style="font-weight:bold; ">
                    <xsl:text>İskonto Oranı</xsl:text>
                  </span>
                </td>
                <td   style="width:9%" align="center">
                  <span style="font-weight:bold; ">
                    <xsl:text>İskonto Tutarı</xsl:text>
                  </span>
                </td>-->
                <td   style="width:7%" align="center">
                  <span style="font-weight:bold; ">
                    <xsl:text>KDV Oranı</xsl:text>
                  </span>
                </td>
               <!-- <td   style="width:17%; " align="center">
                  <span style="font-weight:bold; ">
                    <xsl:text>Diğer Vergiler</xsl:text>
                  </span>
                </td>
                -->
                </xsl:if>
                <td   style="width:10.6%" align="center">
                  <span style="font-weight:bold; ">
                    <xsl:text>Mal Hizmet Tutarı</xsl:text>
                  </span>
                </td>
                <xsl:if test="//n1:Invoice/cbc:ProfileID='IHRACAT'">
                                    <td class="lineTableTd" style="width:10.6%" align="center">
                                        <span style="font-weight:bold;">
                                            <xsl:text>Teslim Şartı</xsl:text>
                                        </span>
                                    </td>                                   
                                    <td class="lineTableTd" style="width:10.6%" align="center">
                                        <span style="font-weight:bold;">
                                            <xsl:text>Eşya Kap Cinsi</xsl:text>
                                        </span>
                                    </td>                                   
                                    <td class="lineTableTd" style="width:10.6%" align="center">
                                        <span style="font-weight:bold;">
                                            <xsl:text>Kap No</xsl:text>
                                        </span>
                                    </td>                                   
                                    <td class="lineTableTd" style="width:10.6%" align="center">
                                        <span style="font-weight:bold;">
                                            <xsl:text>Kap Adet</xsl:text>
                                        </span>
                                    </td>                                   
                                    <td class="lineTableTd" style="width:10.6%" align="center">
                                        <span style="font-weight:bold;">
                                            <xsl:text>Teslim/Bedel Ödeme Yeri</xsl:text>
                                        </span>
                                    </td>                                   
                                    <td class="lineTableTd" style="width:10.6%" align="center">
                                        <span style="font-weight:bold;">
                                            <xsl:text>Gönderilme Şekli</xsl:text>
                                        </span>
                                    </td>                                   
                                    <td class="lineTableTd" style="width:10.6%" align="center">
                                        <span style="font-weight:bold;">
                                            <xsl:text>GTİP</xsl:text>
                                        </span>
                                    </td>                                   
                                </xsl:if>
              </tr>
              <xsl:if test="count(//n1:Invoice/cac:InvoiceLine) &gt;= 1">
                <xsl:for-each select="//n1:Invoice/cac:InvoiceLine">
                  <xsl:apply-templates select="."/>
                </xsl:for-each>
              </xsl:if>
              <xsl:if test="count(//n1:Invoice/cac:InvoiceLine) &lt; 1">
                <xsl:choose>
                  <xsl:when test="//n1:Invoice/cac:InvoiceLine[1]">
                    <xsl:apply-templates select="//n1:Invoice/cac:InvoiceLine[1]"/>
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:apply-templates select="//n1:Invoice"/>
                  </xsl:otherwise>
                </xsl:choose>
              </xsl:if>
            </tbody>
          </table>
        </xsl:for-each>
        <br/>
        <div>
        <div id="Temizle"/>
        <table width="800px">
        <tr>
        <td align="left" width="50%" valign="bottom">
        <div id="Temizle"/>
    
        </td>
        <td align="right" width="50%">
        <table id="budgetContainerTable">
        <tbody>
          <tr id="budgetContainerTr" align="right">
            <td id="budgetContainerDummyTd"/>
            <td id="lineTableBudgetTd" align="right" width="250px">
              <span style="font-weight:bold; ">
                <xsl:text>Mal Hizmet Toplam Tutarı&#160; </xsl:text>
              </span>
            </td>
            <td id="lineTableBudgetTd" style="width:90px; " align="right">
              <xsl:for-each select="n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount">
                <xsl:call-template name="Curr_Type"/>
              </xsl:for-each>
            </td>
          </tr>
          <xsl:for-each select="n1:Invoice/cac:TaxTotal/cac:TaxSubtotal">
            <xsl:if test="cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode = '4171'">
              <tr id="budgetContainerTr" align="right">
                <td id="budgetContainerDummyTd"/>
                <td id="lineTableBudgetTd" align="right" width="250px">
                  <span style="font-weight:bold; ">
                    <xsl:text>Teslim Bedeli &#160;</xsl:text>
                  </span>
                </td>
                <td id="lineTableBudgetTd" style="width:90px; " align="right">
                  <xsl:for-each select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount">
                    <xsl:call-template name="Curr_Type"/>
                  </xsl:for-each>
                </td>
              </tr>
            </xsl:if>
          </xsl:for-each>
          <xsl:if test="//n1:Invoice/cbc:ProfileID='IHRACAT'">
          <xsl:for-each select="n1:Invoice/cac:AllowanceCharge">
          <tr id="budgetContainerTr" align="right">
            <td id="budgetContainerDummyTd"/>
            <td id="lineTableBudgetTd" align="right" width="250px">
              <span style="font-weight:bold; ">
                <xsl:value-of select="cbc:AllowanceChargeReason"/><xsl:text>&#160; </xsl:text>
              </span>
            </td>
            <td id="lineTableBudgetTd" style="width:90px; " align="right">
            <xsl:for-each select="cbc:Amount">
                <xsl:call-template name="Curr_Type"/>
              </xsl:for-each>
            </td>
          </tr>
          </xsl:for-each>
          </xsl:if>
          <tr id="budgetContainerTr" align="right">
            <td id="budgetContainerDummyTd"/>
            <td id="lineTableBudgetTd" align="right" width="250px">
              <span style="font-weight:bold; ">
                <xsl:text>Toplam İskonto&#160; </xsl:text>
              </span>
            </td>
            <td id="lineTableBudgetTd" style="width:90px; " align="right">
              <xsl:for-each select="n1:Invoice/cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount">
                <xsl:call-template name="Curr_Type"/>
              </xsl:for-each>
            </td>
          </tr>
          <xsl:for-each select="n1:Invoice/cac:TaxTotal/cac:TaxSubtotal">
            <tr id="budgetContainerTr" align="right">
              <td id="budgetContainerDummyTd"/>
              <td id="lineTableBudgetTd" width="250px" align="right">
                <span style="font-weight:bold; ">
                  <xsl:text>Hesaplanan </xsl:text>
                  <xsl:value-of select="cac:TaxCategory/cac:TaxScheme/cbc:Name"/>
                  <xsl:text>(%</xsl:text>
                  <xsl:value-of select="cbc:Percent"/>
                  <xsl:text>)&#160; </xsl:text>
                </span>
              </td>
              <td id="lineTableBudgetTd" style="width:90px; " align="right">
                <xsl:for-each select="cac:TaxCategory/cac:TaxScheme">
                  <xsl:text> </xsl:text>
                  <xsl:value-of
                                        select="format-number(../../cbc:TaxAmount, '###.##0,00', 'european')"/>
                  <xsl:if test="../../cbc:TaxAmount/@currencyID">
                    <xsl:text> </xsl:text>
                    <xsl:if test="../../cbc:TaxAmount/@currencyID = 'TRL' or ../../cbc:TaxAmount/@currencyID = 'TRY'">
                      <xsl:text>TL</xsl:text>
                    </xsl:if>
                    <xsl:if test="../../cbc:TaxAmount/@currencyID != 'TRL' and ../../cbc:TaxAmount/@currencyID != 'TRY'">
                      <xsl:value-of select="../../cbc:TaxAmount/@currencyID"/>
                    </xsl:if>
                  </xsl:if>
                </xsl:for-each>
              </td>
            </tr>
          </xsl:for-each>
          <xsl:for-each select="n1:Invoice/cac:TaxTotal/cac:TaxSubtotal">
            <xsl:if test="cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode = '4171'">
              <tr id="budgetContainerTr" align="right">
                <td id="budgetContainerDummyTd"/>
                <td id="lineTableBudgetTd" align="right" width="250px">
                  <span style="font-weight:bold; ">
                    <xsl:text>KDV Matrahı </xsl:text>
                  </span>
                </td>
                <td id="lineTableBudgetTd" style="width:90px; " align="right">
                  <xsl:value-of
                                            select="format-number(sum(//n1:Invoice/cac:TaxTotal/cac:TaxSubtotal[cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode=0015]/cbc:TaxableAmount), '###.##0,00', 'european')"/>
                  <xsl:if
                                        test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount/@currencyID">
                    <xsl:text> </xsl:text>
                    <xsl:if
                                            test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount/@currencyID = 'TRL' or //n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount/@currencyID = 'TRY'">
                      <xsl:text>TL</xsl:text>
                    </xsl:if>
                    <xsl:if
                                            test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount/@currencyID != 'TRL' and //n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount/@currencyID != 'TRY'">
                      <xsl:value-of
                                                select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount/@currencyID"
                                            />
                    </xsl:if>
                  </xsl:if>
                </td>
              </tr>
              <tr id="budgetContainerTr" align="right">
                <td id="budgetContainerDummyTd"/>
                <td id="lineTableBudgetTd" align="right" width="250px">
                  <span style="font-weight:bold; ">
                    <xsl:text>Tevkifat Dahil Toplam Tutar&#160; </xsl:text>
                  </span>
                </td>
                <td id="lineTableBudgetTd" style="width:90px; " align="right">
                  <xsl:for-each select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount">
                    <xsl:call-template name="Curr_Type"/>
                  </xsl:for-each>
                </td>
              </tr>
              <tr id="budgetContainerTr" align="right">
                <td id="budgetContainerDummyTd"/>
                <td id="lineTableBudgetTd" align="right" width="250px">
                  <span style="font-weight:bold; ">
                    <xsl:text>Tevkifat Hariç Toplam Tutar&#160; </xsl:text>
                  </span>
                </td>
                <td id="lineTableBudgetTd" style="width:90px; " align="right">
                  <xsl:for-each select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:PayableAmount">
                    <xsl:call-template name="Curr_Type"/>
                  </xsl:for-each>
                </td>
              </tr>
            </xsl:if>
          </xsl:for-each>
          <xsl:for-each select="n1:Invoice/cac:WithholdingTaxTotal/cac:TaxSubtotal">
            <tr id="budgetContainerTr" align="right">
              <td id="budgetContainerDummyTd"/>
              <td id="lineTableBudgetTd" width="250px" align="right">
                <span style="font-weight:bold; ">
                  <xsl:text>Hesaplanan KDV Tevkifat </xsl:text>
                  <xsl:text>(%</xsl:text>
                  <xsl:value-of select="cbc:Percent"/>
                  <xsl:text>)&#160;</xsl:text>
                </span>
              </td>
              <td id="lineTableBudgetTd" style="width:90px; " align="right">
                <xsl:for-each select="cac:TaxCategory/cac:TaxScheme">
                  <xsl:text> </xsl:text>
                  <xsl:value-of
                                        select="format-number(../../cbc:TaxAmount, '###.##0,00', 'european')"/>
                  <xsl:if test="../../cbc:TaxAmount/@currencyID">
                    <xsl:text> </xsl:text>
                    <xsl:if test="../../cbc:TaxAmount/@currencyID = 'TRL' or ../../cbc:TaxAmount/@currencyID = 'TRY'">
                      <xsl:text>TL</xsl:text>
                    </xsl:if>
                    <xsl:if test="../../cbc:TaxAmount/@currencyID != 'TRL' and ../../cbc:TaxAmount/@currencyID != 'TRY'">
                      <xsl:value-of select="../../cbc:TaxAmount/@currencyID"/>
                    </xsl:if>
                  </xsl:if>
                </xsl:for-each>
              </td>
            </tr>
          </xsl:for-each>
          <xsl:if
                        test="sum(n1:Invoice/cac:TaxTotal/cac:TaxSubtotal[cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode=9015]/cbc:TaxableAmount)>0">
            <tr id="budgetContainerTr" align="right">
              <td id="budgetContainerDummyTd"/>
              <td id="lineTableBudgetTd" width="250px" align="right">
                <span style="font-weight:bold; ">
                  <xsl:text>Tevkifata Tabi İşlem Tutarı&#160; </xsl:text>
                </span>
              </td>
              <td id="lineTableBudgetTd" style="width:90px; " align="right">
                <xsl:value-of
                                    select="format-number(sum(n1:Invoice/cac:InvoiceLine[cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode=9015]/cbc:LineExtensionAmount), '###.##0,00', 'european')"/>
                <xsl:if test="n1:Invoice/cbc:DocumentCurrencyCode = 'TRL'">
                  <xsl:text>TL</xsl:text>
                </xsl:if>
                <xsl:if test="n1:Invoice/cbc:DocumentCurrencyCode != 'TRL'">
                  <xsl:value-of select="n1:Invoice/cbc:DocumentCurrencyCode"/>
                </xsl:if>
              </td>
            </tr>
            <tr id="budgetContainerTr" align="right">
              <td id="budgetContainerDummyTd"/>
              <td id="lineTableBudgetTd" width="250px" align="right">
                <span style="font-weight:bold; ">
                  <xsl:text>Tevkifata Tabi İşlem Üzerinden Hes. KDV &#160;</xsl:text>
                </span>
              </td>
              <td id="lineTableBudgetTd" style="width:90px; " align="right">
                <xsl:value-of
                                    select="format-number(sum(n1:Invoice/cac:TaxTotal/cac:TaxSubtotal[cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode=9015]/cbc:TaxableAmount), '###.##0,00', 'european')"/>
                <xsl:if test="n1:Invoice/cbc:DocumentCurrencyCode = 'TRL'">
                  <xsl:text>TL</xsl:text>
                </xsl:if>
                <xsl:if test="n1:Invoice/cbc:DocumentCurrencyCode != 'TRL'">
                  <xsl:value-of select="n1:Invoice/cbc:DocumentCurrencyCode"/>
                </xsl:if>
              </td>
            </tr>
          </xsl:if>
          <xsl:if test = "n1:Invoice/cac:InvoiceLine[cac:WithholdingTaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme]">
            <tr id="budgetContainerTr" align="right">
              <td id="budgetContainerDummyTd"/>
              <td id="lineTableBudgetTd" width="250px" align="right">
                <span style="font-weight:bold; ">
                  <xsl:text>Tevkifata Tabi İşlem Tutarı &#160;</xsl:text>
                </span>
              </td>
              <td id="lineTableBudgetTd" style="width:90px; " align="right">
                <xsl:if test = "n1:Invoice/cac:InvoiceLine[cac:WithholdingTaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme]">
                  <xsl:value-of
                                        select="format-number(sum(n1:Invoice/cac:InvoiceLine[cac:WithholdingTaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme]/cbc:LineExtensionAmount), '###.##0,00', 'european')"/>
                </xsl:if>
                <xsl:if test = "//n1:Invoice/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode=&apos;9015&apos;">
                  <xsl:value-of
                                        select="format-number(sum(n1:Invoice/cac:InvoiceLine[cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode=9015]/cbc:LineExtensionAmount), '###.##0,00', 'european')"/>
                </xsl:if>
                <xsl:if test="n1:Invoice/cbc:DocumentCurrencyCode = 'TRL' or n1:Invoice/cbc:DocumentCurrencyCode = 'TRY'">
                  <xsl:text> TL</xsl:text>
                </xsl:if>
                <xsl:if test="n1:Invoice/cbc:DocumentCurrencyCode != 'TRL' and n1:Invoice/cbc:DocumentCurrencyCode != 'TRY'">
                  <xsl:value-of select="n1:Invoice/cbc:DocumentCurrencyCode"/>
                </xsl:if>
              </td>
            </tr>
            <tr id="budgetContainerTr" align="right">
              <td id="budgetContainerDummyTd"/>
              <td id="lineTableBudgetTd" width="250px" align="right">
                <span style="font-weight:bold; ">
                  <xsl:text>Tevkifata Tabi İşlem Üzerinden Hes. KDV&#160; </xsl:text>
                </span>
              </td>
              <td id="lineTableBudgetTd" style="width:90px; " align="right">
                <xsl:if test = "n1:Invoice/cac:InvoiceLine[cac:WithholdingTaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme]">
                  <xsl:value-of
                                        select="format-number(sum(n1:Invoice/cac:WithholdingTaxTotal/cac:TaxSubtotal[cac:TaxCategory/cac:TaxScheme]/cbc:TaxableAmount), '###.##0,00', 'european')"/>
                </xsl:if>
                <xsl:if test = "//n1:Invoice/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode=&apos;9015&apos;">
                  <xsl:value-of
                                        select="format-number(sum(n1:Invoice/cac:TaxTotal/cac:TaxSubtotal[cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode=9015]/cbc:TaxableAmount), '###.##0,00', 'european')"/>
                </xsl:if>
                <xsl:if test="n1:Invoice/cbc:DocumentCurrencyCode = 'TRL' or n1:Invoice/cbc:DocumentCurrencyCode = 'TRY'">
                  <xsl:text> TL</xsl:text>
                </xsl:if>
                <xsl:if test="n1:Invoice/cbc:DocumentCurrencyCode != 'TRL' and n1:Invoice/cbc:DocumentCurrencyCode != 'TRY'">
                  <xsl:value-of select="n1:Invoice/cbc:DocumentCurrencyCode"/>
                </xsl:if>
              </td>
            </tr>
          </xsl:if>
          <tr id="budgetContainerTr" align="right">
            <td id="budgetContainerDummyTd"/>
            <td id="lineTableBudgetTd" width="250px" align="right">
              <span style="font-weight:bold; ">
                <xsl:text>Vergiler Dahil Toplam Tutar&#160; </xsl:text>
              </span>
            </td>
            <td id="lineTableBudgetTd" style="width:90px; " align="right">
              <xsl:for-each select="n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount">
                <xsl:call-template name="Curr_Type"/>
              </xsl:for-each>
            </td>
          </tr>
          <tr id="budgetContainerTr" align="right">
            <td id="budgetContainerDummyTd"/>
            <td id="lineTableBudgetTd" width="250px" align="right">
              <span style="font-weight:bold; ">
                <xsl:text>Ödenecek Tutar&#160; </xsl:text>
              </span>
            </td>
            <td id="lineTableBudgetTd" style="width:90px; " align="right">
              <xsl:for-each select="n1:Invoice/cac:LegalMonetaryTotal/cbc:PayableAmount">
                <xsl:call-template name="Curr_Type"/>
              </xsl:for-each>
            </td>
          </tr>
          <xsl:if
                        test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount/@currencyID != 'TRL' and //n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount/@currencyID != 'TRY'">
            <tr align="right">
              <td/>
              <td id="lineTableBudgetTd" align="right" width="250px">
                <span style="font-weight:bold; ">
                  <xsl:text>Mal Hizmet Toplam Tutarı(TL)&#160; </xsl:text>
                </span>
              </td>
              <td id="lineTableBudgetTd" style="width:90px; " align="right">
                <xsl:value-of
                                    select="format-number(//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount * //n1:Invoice/cac:PricingExchangeRate/cbc:CalculationRate, '###.##0,00', 'european')"/>
                <xsl:text> TL</xsl:text>
              </td>
            </tr>
            <tr id="budgetContainerTr" align="right">
              <td/>
              <td id="lineTableBudgetTd" width="250px" align="right">
                <span style="font-weight:bold; ">
                  <xsl:text>Vergiler Dahil Toplam Tutar(TL)&#160; </xsl:text>
                </span>
              </td>
              <td id="lineTableBudgetTd" style="width:90px; " align="right">
                <xsl:value-of
                                    select="format-number(//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount * //n1:Invoice/cac:PricingExchangeRate/cbc:CalculationRate, '###.##0,00', 'european')"/>
                <xsl:text> TL</xsl:text>
              </td>
            </tr>
            <tr align="right">
              <td/>
              <td id="lineTableBudgetTd" width="250px" align="right">
                <span style="font-weight:bold; ">
                  <xsl:text>Ödenecek Tutar(TL)&#160; </xsl:text>
                </span>
              </td>
              <td id="lineTableBudgetTd" style="width:90px; " align="right">
                <xsl:value-of
                                    select="format-number(//n1:Invoice/cac:LegalMonetaryTotal/cbc:PayableAmount * //n1:Invoice/cac:PricingExchangeRate/cbc:CalculationRate, '###.##0,00', 'european')"/>
                <xsl:text> TL</xsl:text>
              </td>
            </tr>
          </xsl:if>
        </tbody>
        </table>
        </td>
        </tr>
        </table>
        </div>
        <br/>
        <table id="notesTable" width="800" align="left" height="100">
          <tbody>
            <tr align="left">
              <td id="notesTableTd">
              <br/>
                <xsl:if test="//n1:Invoice/cbc:InvoiceTypeCode != 'IHRACKAYITLI'">
                  <xsl:for-each select="//n1:Invoice/cac:TaxTotal/cac:TaxSubtotal">
                    <xsl:if test="cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode='0015' and cac:TaxCategory/cbc:TaxExemptionReason">
                      <b>&#160;&#160;&#160;&#160;&#160; Vergi İstisna Muafiyet Sebebi: </b>
                      <xsl:value-of select="cac:TaxCategory/cbc:TaxExemptionReasonCode"/>
                      <xsl:text>-</xsl:text>
                      <xsl:value-of select="cac:TaxCategory/cbc:TaxExemptionReason"/>
                      <br/>
                    </xsl:if>
                  </xsl:for-each>
                </xsl:if>  
                <xsl:if test="//n1:Invoice/cbc:InvoiceTypeCode = 'IHRACKAYITLI'">
                  <xsl:for-each select="//n1:Invoice/cac:TaxTotal/cac:TaxSubtotal">
                    <xsl:if test="cac:TaxCategory/cbc:TaxExemptionReason">
                      <b>&#160;&#160;&#160;&#160;&#160; İhraç Kayıtlı Fatura Sebebi: </b>
                      <xsl:value-of select="cac:TaxCategory/cbc:TaxExemptionReasonCode"/>
                      <xsl:text>-</xsl:text>
                      <xsl:value-of select="cac:TaxCategory/cbc:TaxExemptionReason"/>
                      <br/>
                    </xsl:if>
                  </xsl:for-each>
                </xsl:if>
                                <!--  <xsl:for-each select="//n1:Invoice/cac:WithholdingTaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme">
                                  <b>&#160;&#160;&#160;&#160;&#160; Tevkifat Sebebi: </b>
                                    <xsl:value-of select="cbc:TaxTypeCode"/>
                                    <xsl:text>-</xsl:text>
                                    <xsl:value-of select="cbc:Name"/>
                                    <br/>
                               </xsl:for-each>-->
                                <!--<xsl:if test="//n1:Invoice/cbc:Note">-->
                               <!-- <b>&#160;&#160;&#160;&#160;&#160; Not: </b>-->
                              <!--  <xsl:for-each select="//n1:Invoice/cbc:Note">-->
                                      <!--  <xsl:if test="position() > 1">-->
                                         <!--  <b>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;</b>-->
                                      <!--  </xsl:if>   -->
                                      <!--  <xsl:value-of select="."/>-->
                                    <!--    <br/>-->
                              <!--  </xsl:for-each>-->
                              <!--  </xsl:if>-->
                               <!-- <br/>-->
                <xsl:if test="//n1:Invoice/cac:PaymentMeans/cbc:InstructionNote">
                  <b>&#160;&#160;&#160;&#160;&#160; Ödeme Notu: </b>
                  <xsl:value-of
                                        select="//n1:Invoice/cac:PaymentMeans/cbc:InstructionNote"/>
                  <br/>
                </xsl:if>
                <xsl:if
                                    test="//n1:Invoice/cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:PaymentNote">
                  <b>&#160;&#160;&#160;&#160;&#160; Hesap Açıklaması: </b>
                  <xsl:value-of
                                        select="//n1:Invoice/cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:PaymentNote"/>
                  <br/>
                </xsl:if>
                <xsl:if test="//n1:Invoice/cac:PaymentTerms/cbc:Note">
                  <b>&#160;&#160;&#160;&#160;&#160; Ödeme Koşulu: </b>
                  <xsl:value-of select="//n1:Invoice/cac:PaymentTerms/cbc:Note"/>
                  <br/>
                </xsl:if>
                 </td>
            </tr>

              <tr>
                  <td>
                    
                    
                    
                      <br/>  İrsaliye yerine geçer
                      <br/> Fatura 8 gün içinde itiraz edilmezse kabul edilmiş sayılır.
                   
                      <xsl:if test="//n1:Invoice/cac:BuyerCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID='PARTYTYPE']='TAXFREE' and //n1:Invoice/cac:TaxRepresentativeParty/cac:PartyTaxScheme/cbc:ExemptionReasonCode">
                                    <br/>
                                    <b>&#160;&#160;&#160;&#160;&#160; VAT OFF - NO CASH REFUND </b>
                                </xsl:if>
                            </td>
                        </tr>
                    </tbody>
                </table>
       <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><b><xsl:text>BANKA BİLGİLERİ</xsl:text></b><br/>
   <table id="notesTable" width="800" align="left" height="70" >
      <tbody>
                <tr align="left">
                            <td id="notesTableTd" width="800" >
                                                   
<div id="staticFooter">
                        
                        <table id="hesapBilgileriTable" style="border-collapse: collapse;font-size: 12px;font-weight: normal;">
                                <tr id="IBANHesapBaslik">
                                <td  width="150" style="border: px solid black;">BANKA</td>
                                <td  width="150" style="padding:px; border: px solid black;">ŞUBE KODU</td>
                                <td  style="padding:px; border: px solid black;">PARA BİRİMİ</td>
                                <td  width="150" style="padding:px; border: px solid black;">HESAP NO</td>
                                <td  width="150" style="padding:px; border: px solid black;">İBAN</td>
                                
                                <td />
                            </tr>
                            <tr>
                                <td   style="border: px solid black;"><b>TÜRKİYE FİNANS</b></td>
                                <td   style="border: px solid black;"><b>Altunizade</b></td> 
                                <td   style="border: px solid black;"><b>TL</b></td>
                                <td   style="border: px solid black;"><b></b></td>
                                <td   style="border: px solid black;"><b>TR460 020 6000 5603 5781 2100 01</b></td>
                                
                                
                            </tr>
                            <tr>
                                <td   style="border: px solid black;"><b>ING BANK</b></td>
                                <td   style="border: px solid black;"><b></b></td>
                                <td   style="border: px solid black;"><b>TL</b></td>
                                <td   style="border: px solid black;"><b>221-11602067-MT-1</b></td>
                                <td   style="border: px solid black;"><b>TR16 0009 9011 6020 6700 1000 05</b></td>
                          </tr>

                    <tr>
                                <td   style="border: px solid black;"><b>ING BANK</b></td>
                                <td   style="border: px solid black;"><b></b></td>
                                <td   style="border: px solid black;"><b>TL</b></td>
                                <td   style="border: px solid black;"><b>779-11602067 MT-1</b></td>
                                <td   style="border: px solid black;"><b>TR91 0001 0015 2896 0358 6050 03</b></td>
                          </tr>
                            
                        
                            
                            
                        </table>
                        
                    </div>

                                </td>




</tr>
                    </tbody>
                </table>
            </body>
    </html>
  </xsl:template>
  <xsl:template match="//n1:Invoice/cac:InvoiceLine">
    <tr id="lineTableTr">
      <td  >
        <xsl:text>&#160;</xsl:text>
        <xsl:value-of select="./cbc:ID"/>
      </td>
      <td  >
        <xsl:text>&#160;</xsl:text>
        <xsl:value-of select="./cac:Item/cbc:Name"/>
      </td>
      <td  >
        <xsl:text>&#160;</xsl:text>
        <xsl:value-of select="./cbc:Note"/>
      </td>
      <td   align="right">
        <xsl:text>&#160;</xsl:text>
        <xsl:value-of
                    select="format-number(./cbc:InvoicedQuantity, '###.###,####', 'european')"/>
        <xsl:if test="./cbc:InvoicedQuantity/@unitCode">
          <xsl:for-each select="./cbc:InvoicedQuantity">
            <xsl:text> </xsl:text>
            <xsl:choose>
              <xsl:when test="@unitCode  = '26'">
                <xsl:text>ton</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'BX'">
                <xsl:text>Kutu</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'LTR'">
                <xsl:text>lt</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'NIU'">
                <xsl:text>Adet</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'PK'">
                <xsl:text>Kutu</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'C62'">
                <xsl:text>Adet</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'KGM'">
                <xsl:text>kg</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'KJO'">
                <xsl:text>kJ</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'GRM'">
                <xsl:text>g</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'MGM'">
                <xsl:text>mg</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'NT'">
                <xsl:text>Net Ton</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'GT'">
                <xsl:text>Gross Ton</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'MTR'">
                <xsl:text>m</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'MMT'">
                <xsl:text>mm</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'KTM'">
                <xsl:text>km</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'MLT'">
                <xsl:text>ml</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'MMQ'">
                <xsl:text>mm3</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'CLT'">
                <xsl:text>cl</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'CMK'">
                <xsl:text>cm2</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'CMQ'">
                <xsl:text>cm3</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'CMT'">
                <xsl:text>cm</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'MTK'">
                <xsl:text>m2</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'MTQ'">
                <xsl:text>m3</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'DAY'">
                <xsl:text> Gün</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'MON'">
                <xsl:text> Ay</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'PA'">
                <xsl:text> Paket</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'KWH'">
                <xsl:text> KWH</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'ANN'">
                <xsl:text> Yıl</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'HUR'">
                <xsl:text> Saat</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'D61'">
                <xsl:text> Dakika</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'D62'">
                <xsl:text> Saniye</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'CCT'">
                <xsl:text> Ton baş.taşıma kap.</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'D30'">
                <xsl:text> Brüt kalori</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'D40'">
                <xsl:text> 1000 lt</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'LPA'">
                <xsl:text> saf alkol lt</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'B32'">
                <xsl:text> kg.m2</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'NCL'">
                <xsl:text> hücre adet</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'PR'">
                <xsl:text> Çift</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'R9'">
                <xsl:text> 1000 m3</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'SET'">
                <xsl:text> Set</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'T3'">
                <xsl:text> 1000 adet</xsl:text>
              </xsl:when>
            </xsl:choose>
          </xsl:for-each>
        </xsl:if>
      </td>
      <td   align="right">
        <xsl:text>&#160;</xsl:text>
        <xsl:value-of select="format-number(./cac:Price/cbc:PriceAmount, '###.##0,####', 'european')"/>
        <xsl:if test="./cac:Price/cbc:PriceAmount/@currencyID">
          <xsl:text> </xsl:text>
          <xsl:if test="./cac:Price/cbc:PriceAmount/@currencyID = &quot;TRL&quot; or ./cac:Price/cbc:PriceAmount/@currencyID = &quot;TRY&quot;">
            <xsl:text>TL</xsl:text>
          </xsl:if>
          <xsl:if test="./cac:Price/cbc:PriceAmount/@currencyID != &quot;TRL&quot; and ./cac:Price/cbc:PriceAmount/@currencyID != &quot;TRY&quot;">
            <xsl:value-of select="./cac:Price/cbc:PriceAmount/@currencyID"/>
          </xsl:if>
        </xsl:if>
      </td>
      <xsl:if test="//n1:Invoice/cbc:ProfileID!='IHRACAT'">
     <!--  <td   align="right">
        <xsl:text>&#160;</xsl:text>
        <xsl:for-each select="cac:AllowanceCharge">
            <xsl:if test="cbc:ChargeIndicator = 'false'">    
               <xsl:if test="cbc:MultiplierFactorNumeric">
                    <xsl:text>%</xsl:text><xsl:value-of select="format-number(cbc:MultiplierFactorNumeric * 100, '###.##0,00', 'european')"/><br/>
               </xsl:if>
            </xsl:if>  
        </xsl:for-each>
      </td>
     <td   align="right">
        <xsl:text>&#160;</xsl:text>
        <xsl:for-each select="./cac:AllowanceCharge">
            <xsl:if test="cbc:ChargeIndicator = 'false'">    
               <xsl:for-each select="cbc:Amount">
                    <xsl:call-template name="Curr_Type"/>
               </xsl:for-each>
               <br/>
            </xsl:if>  
        </xsl:for-each>
      </td>-->
      <td   align="right">
        <xsl:text>&#160;</xsl:text>
        <xsl:for-each select="./cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme">
          <xsl:if test="cbc:TaxTypeCode='0015' ">
            <xsl:text> </xsl:text>
            <xsl:if test="../../cbc:Percent">
              <xsl:text> %</xsl:text>
              <xsl:value-of select="format-number(../../cbc:Percent, '###.##0,00', 'european')"/>
            </xsl:if>
          </xsl:if>
        </xsl:for-each>
      </td>
      </xsl:if>
      <td   align="right">
        <xsl:text>&#160;</xsl:text>
        <xsl:for-each select="cbc:LineExtensionAmount">
          <xsl:call-template name="Curr_Type"/>
        </xsl:for-each>
      </td>
      <xsl:if test="//n1:Invoice/cbc:ProfileID='IHRACAT'">
                <td class="lineTableTd" align="right">
                    <xsl:text>&#160;</xsl:text>
                    <xsl:for-each select="cac:Delivery/cac:DeliveryTerms/cbc:ID[@schemeID='INCOTERMS']">
                        <xsl:text>&#160;</xsl:text>
                        <xsl:apply-templates/>
                    </xsl:for-each>
                </td>
                <td class="lineTableTd" align="right">
                    <xsl:text>&#160;</xsl:text>
                    <xsl:for-each select="cac:Delivery/cac:Shipment/cac:TransportHandlingUnit/cac:ActualPackage/cbc:PackagingTypeCode">
                        <xsl:text>&#160;</xsl:text>
                        <xsl:call-template name="Packaging">
                            <xsl:with-param name="PackagingType">
                                <xsl:value-of select="."/>
                            </xsl:with-param>
                        </xsl:call-template>
                    </xsl:for-each>
                </td>
                <td class="lineTableTd" align="right">
                    <xsl:text>&#160;</xsl:text>
                    <xsl:for-each select="cac:Delivery/cac:Shipment/cac:TransportHandlingUnit/cac:ActualPackage/cbc:ID">
                        <xsl:text>&#160;</xsl:text>
                        <xsl:apply-templates/>
                    </xsl:for-each>
                </td>
                <td class="lineTableTd" align="right">
                    <xsl:text>&#160;</xsl:text>
                    <xsl:for-each select="cac:Delivery/cac:Shipment/cac:TransportHandlingUnit/cac:ActualPackage/cbc:Quantity">
                        <xsl:text>&#160;</xsl:text>
                        <xsl:apply-templates/>
                    </xsl:for-each>
                </td>
                <td class="lineTableTd" align="right">
                    <xsl:text>&#160;</xsl:text>
                    <xsl:for-each select="cac:Delivery/cac:DeliveryAddress">
                        <xsl:text>&#160;</xsl:text>
                        <xsl:apply-templates/>
                    </xsl:for-each>
                </td>
                <td class="lineTableTd" align="right">
                    <xsl:text>&#160;</xsl:text>
                    <xsl:for-each select="cac:Delivery/cac:Shipment/cac:ShipmentStage/cbc:TransportModeCode">
                        <xsl:text>&#160;</xsl:text>
                        <xsl:call-template name="TransportMode">
                            <xsl:with-param name="TransportModeType">
                                <xsl:value-of select="."/>
                            </xsl:with-param>
                        </xsl:call-template>
                    </xsl:for-each>
                </td>
                <td class="lineTableTd" align="right">
                    <xsl:text>&#160;</xsl:text>
                    <xsl:for-each select="cac:Delivery/cac:Shipment/cac:GoodsItem/cbc:RequiredCustomsID">
                        <xsl:text>&#160;</xsl:text>
                        <xsl:apply-templates/>
                    </xsl:for-each>
                </td>               
            </xsl:if>     
    </tr>
  </xsl:template>
  <xsl:template match="//cbc:IssueDate">
    <xsl:value-of select="substring(.,9,2)"/>-<xsl:value-of select="substring(.,6,2)"/>-<xsl:value-of select="substring(.,1,4)"/>
  </xsl:template>
  <xsl:template match="//n1:Invoice">
    <tr id="lineTableTr">
      <td  >
        <xsl:text>&#160;</xsl:text>
      </td>
      <td  >
        <xsl:text>&#160;</xsl:text>
      </td>
      <td   align="right">
        <xsl:text>&#160;</xsl:text>
      </td>
      <td   align="right">
        <xsl:text>&#160;</xsl:text>
      </td>
      <td   align="right">
        <xsl:text>&#160;</xsl:text>
      </td>
      <xsl:if test="//n1:Invoice/cbc:ProfileID!='IHRACAT'">
      <td   align="right">
        <xsl:text>&#160;</xsl:text>
      </td>
      <td   align="right">
        <xsl:text>&#160;</xsl:text>
      </td>
      <td   align="right">
        <xsl:text>&#160;</xsl:text>
      </td>
      </xsl:if>
      <td   align="right">
        <xsl:text>&#160;</xsl:text>
      </td>
      <xsl:if test="//n1:Invoice/cbc:ProfileID='IHRACAT'">
                <td class="lineTableTd" align="right">
                    <xsl:text>&#160;</xsl:text>
                </td>
                <td class="lineTableTd" align="right">
                    <xsl:text>&#160;</xsl:text>
                </td>
                <td class="lineTableTd" align="right">
                    <xsl:text>&#160;</xsl:text>
                </td>
                <td class="lineTableTd" align="right">
                    <xsl:text>&#160;</xsl:text>
                </td>
                <td class="lineTableTd" align="right">
                    <xsl:text>&#160;</xsl:text>
                </td>
                <td class="lineTableTd" align="right">
                    <xsl:text>&#160;</xsl:text>
                </td>
                <td class="lineTableTd" align="right">
                    <xsl:text>&#160;</xsl:text>
                </td>
            </xsl:if>   
    </tr>
  </xsl:template>
  <xsl:template name="Party_Title" >
    <xsl:param name="PartyType" />
    <td style="width:469px; " align="left">
      <xsl:if test="cac:PartyName">
        <span style="font-weight:bold; "><xsl:value-of select="cac:PartyName/cbc:Name"/></span>
        <br/>
      </xsl:if>
      <xsl:for-each select="cac:Person">
         <span style="font-weight:bold; "><xsl:for-each select="cbc:Title">
          <xsl:apply-templates/>
          <xsl:text>&#160;</xsl:text>
        </xsl:for-each></span>
         <span style="font-weight:bold; "><xsl:for-each select="cbc:FirstName">
          <xsl:apply-templates/>
          <xsl:text>&#160;</xsl:text>
        </xsl:for-each></span>
         <span style="font-weight:bold; "><xsl:for-each select="cbc:MiddleName">
          <xsl:apply-templates/>
          <xsl:text>&#160; </xsl:text>
        </xsl:for-each></span>
         <span style="font-weight:bold; "><xsl:for-each select="cbc:FamilyName">
          <xsl:apply-templates/>
          <xsl:text>&#160;</xsl:text>
        </xsl:for-each></span>
         <span style="font-weight:bold; "><xsl:for-each select="cbc:NameSuffix">
          <xsl:apply-templates/>
        </xsl:for-each></span>
        <xsl:if test="$PartyType='TAXFREE'">
          <br/>
          <span style="font-weight:bold; "><xsl:text>Pasaport No: </xsl:text></span>
          <xsl:value-of select="cac:IdentityDocumentReference/cbc:ID"/>
          <br/>
          <span style="font-weight:bold; "><xsl:text>Ülkesi: </xsl:text></span>
          <xsl:value-of select="cbc:NationalityID"/>
        </xsl:if>
      </xsl:for-each>
    </td>
  </xsl:template>
  <xsl:template name="Party_Adress" >
    <xsl:param name="PartyType" />
    <td style="width:469px; " align="left">
      <xsl:for-each select="cac:PostalAddress">
        <xsl:for-each select="cbc:StreetName">
          <xsl:apply-templates/>
          <xsl:text>&#160;</xsl:text>
        </xsl:for-each>
        <xsl:for-each select="cbc:BuildingName">
          <xsl:apply-templates/>
        </xsl:for-each>
        <xsl:for-each select="cbc:BuildingNumber">
          <span style="font-weight:bold; "><xsl:text> No:</xsl:text></span>
          <xsl:apply-templates/>
          <xsl:text>&#160;</xsl:text>
        </xsl:for-each>
        <br/>
        <xsl:for-each select="cbc:Room">
          <span style="font-weight:bold; "><xsl:text>Kapı No:</xsl:text></span>
          <xsl:apply-templates/>
          <xsl:text>&#160;</xsl:text>
        </xsl:for-each>
        <br/>
        <xsl:for-each select="cbc:PostalZone">
          <xsl:apply-templates/>
          <xsl:text>&#160;</xsl:text>
        </xsl:for-each>
        <xsl:for-each select="cbc:CitySubdivisionName">
          <xsl:apply-templates/>
          <xsl:text>/ </xsl:text>
        </xsl:for-each>
        <xsl:for-each select="cbc:CityName">
          <xsl:apply-templates/>
          <xsl:text>&#160;</xsl:text>
        </xsl:for-each>
        <xsl:if test="$PartyType='TAXFREE'">
          <br/>
          <xsl:value-of select="cac:Country/cbc:Name"/>
          <br/>
        </xsl:if>
      </xsl:for-each>
    </td>
  </xsl:template>
  <xsl:template name="TransportMode">
        <xsl:param name="TransportModeType" />
        <xsl:choose>
            <xsl:when test="$TransportModeType=1">Denizyolu</xsl:when>
            <xsl:when test="$TransportModeType=2">Demiryolu</xsl:when>
            <xsl:when test="$TransportModeType=3">Karayolu</xsl:when>
            <xsl:when test="$TransportModeType=4">Havayolu</xsl:when>
            <xsl:when test="$TransportModeType=5">Posta</xsl:when>
            <xsl:when test="$TransportModeType=6">Çok araçlı</xsl:when>
            <xsl:when test="$TransportModeType=7">Sabit taşıma tesisleri</xsl:when>
            <xsl:when test="$TransportModeType=8">İç su taşımacılığı</xsl:when>         
            <xsl:otherwise><xsl:value-of select="$TransportModeType"/></xsl:otherwise>
        </xsl:choose>       
    </xsl:template>
    <xsl:template name="Packaging">
        <xsl:param name="PackagingType" />
        <xsl:choose>
            <xsl:when test="$PackagingType='1A'">Drum, steel</xsl:when>
            <xsl:when test="$PackagingType='1B'">Drum, aluminium</xsl:when>
            <xsl:when test="$PackagingType='1D'">Drum, plywood</xsl:when>
            <xsl:when test="$PackagingType='1F'">Container, flexible</xsl:when>
            <xsl:when test="$PackagingType='1G'">Drum, fibre</xsl:when>
            <xsl:when test="$PackagingType='1W'">Drum, wooden</xsl:when>
            <xsl:when test="$PackagingType='2C'">Barrel, wooden</xsl:when>
            <xsl:when test="$PackagingType='3A'">Jerrican, steel</xsl:when>
            <xsl:when test="$PackagingType='3H'">Jerrican, plastic</xsl:when>
            <xsl:when test="$PackagingType='43'">Bag, super bulk</xsl:when>
            <xsl:when test="$PackagingType='44'">Bag, polybag</xsl:when>
            <xsl:when test="$PackagingType='4A'">Box, steel</xsl:when>
            <xsl:when test="$PackagingType='4B'">Box, aluminium</xsl:when>
            <xsl:when test="$PackagingType='4C'">Box, natural wood</xsl:when>
            <xsl:when test="$PackagingType='4D'">Box, plywood</xsl:when>
            <xsl:when test="$PackagingType='4F'">Box, reconstituted wood</xsl:when>
            <xsl:when test="$PackagingType='4G'">Box, fibreboard</xsl:when>
            <xsl:when test="$PackagingType='4H'">Box, plastic</xsl:when>
            <xsl:when test="$PackagingType='5H'">Bag, woven plastic</xsl:when>
            <xsl:when test="$PackagingType='5L'">Bag, textile</xsl:when>
            <xsl:when test="$PackagingType='5M'">Bag, paper</xsl:when>
            <xsl:when test="$PackagingType='6H'">Composite packaging, plastic receptacle</xsl:when>
            <xsl:when test="$PackagingType='6P'">Composite packaging, glass receptacle</xsl:when>
            <xsl:when test="$PackagingType='7A'">Case, car</xsl:when>
            <xsl:when test="$PackagingType='7B'">Case, wooden</xsl:when>
            <xsl:when test="$PackagingType='8A'">Pallet, wooden</xsl:when>
            <xsl:when test="$PackagingType='8B'">Crate, wooden</xsl:when>
            <xsl:when test="$PackagingType='8C'">Bundle, wooden</xsl:when>
            <xsl:when test="$PackagingType='AA'">Intermediate bulk container, rigid plastic</xsl:when>
            <xsl:when test="$PackagingType='AB'">Receptacle, fibre</xsl:when>
            <xsl:when test="$PackagingType='AC'">Receptacle, paper</xsl:when>
            <xsl:when test="$PackagingType='AD'">Receptacle, wooden</xsl:when>
            <xsl:when test="$PackagingType='AE'">Aerosol</xsl:when>
            <xsl:when test="$PackagingType='AF'">Pallet, modular, collars 80cms * 60cms</xsl:when>
            <xsl:when test="$PackagingType='AG'">Pallet, shrinkwrapped</xsl:when>
            <xsl:when test="$PackagingType='AH'">Pallet, 100cms * 110cms</xsl:when>
            <xsl:when test="$PackagingType='AI'">Clamshell</xsl:when>
            <xsl:when test="$PackagingType='AJ'">Cone</xsl:when>
            <xsl:when test="$PackagingType='AL'">Ball</xsl:when>
            <xsl:when test="$PackagingType='AM'">Ampoule, non-protected</xsl:when>
            <xsl:when test="$PackagingType='AP'">Ampoule, protected</xsl:when>
            <xsl:when test="$PackagingType='AT'">Atomizer</xsl:when>
            <xsl:when test="$PackagingType='AV'">Capsule</xsl:when>
            <xsl:when test="$PackagingType='B4'">Belt</xsl:when>
            <xsl:when test="$PackagingType='BA'">Barrel</xsl:when>
            <xsl:when test="$PackagingType='BB'">Bobbin</xsl:when>
            <xsl:when test="$PackagingType='BC'">Bottlecrate / bottlerack</xsl:when>
            <xsl:when test="$PackagingType='BD'">Board</xsl:when>
            <xsl:when test="$PackagingType='BE'">Bundle</xsl:when>
            <xsl:when test="$PackagingType='BF'">Balloon, non-protected</xsl:when>
            <xsl:when test="$PackagingType='BG'">Bag</xsl:when>
            <xsl:when test="$PackagingType='BH'">Bunch</xsl:when>
            <xsl:when test="$PackagingType='BI'">Bin</xsl:when>
            <xsl:when test="$PackagingType='BJ'">Bucket</xsl:when>
            <xsl:when test="$PackagingType='BK'">Basket</xsl:when>
            <xsl:when test="$PackagingType='BL'">Bale, compressed</xsl:when>
            <xsl:when test="$PackagingType='BM'">Basin</xsl:when>
            <xsl:when test="$PackagingType='BN'">Bale, non-compressed</xsl:when>
            <xsl:when test="$PackagingType='BO'">Bottle, non-protected, cylindrical</xsl:when>
            <xsl:when test="$PackagingType='BP'">Balloon, protected</xsl:when>
            <xsl:when test="$PackagingType='BQ'">Bottle, protected cylindrical</xsl:when>
            <xsl:when test="$PackagingType='BR'">Bar</xsl:when>
            <xsl:when test="$PackagingType='BS'">Bottle, non-protected, bulbous</xsl:when>
            <xsl:when test="$PackagingType='BT'">Bolt</xsl:when>
            <xsl:when test="$PackagingType='BU'">Butt</xsl:when>
            <xsl:when test="$PackagingType='BV'">Bottle, protected bulbous</xsl:when>
            <xsl:when test="$PackagingType='BW'">Box, for liquids</xsl:when>
            <xsl:when test="$PackagingType='BX'">Box</xsl:when>
            <xsl:when test="$PackagingType='BY'">Board, in bundle/bunch/truss</xsl:when>
            <xsl:when test="$PackagingType='BZ'">Bars, in bundle/bunch/truss</xsl:when>
            <xsl:when test="$PackagingType='CA'">Can, rectangular</xsl:when>
            <xsl:when test="$PackagingType='CB'">Crate, beer</xsl:when>
            <xsl:when test="$PackagingType='CC'">Churn</xsl:when>
            <xsl:when test="$PackagingType='CD'">Can, with handle and spout</xsl:when>
            <xsl:when test="$PackagingType='CE'">Creel</xsl:when>
            <xsl:when test="$PackagingType='CF'">Coffer</xsl:when>
            <xsl:when test="$PackagingType='CG'">Cage</xsl:when>
            <xsl:when test="$PackagingType='CH'">Chest</xsl:when>
            <xsl:when test="$PackagingType='CI'">Canister</xsl:when>
            <xsl:when test="$PackagingType='CJ'">Coffin</xsl:when>
            <xsl:when test="$PackagingType='CK'">Cask</xsl:when>
            <xsl:when test="$PackagingType='CL'">Coil</xsl:when>
            <xsl:when test="$PackagingType='CM'">Card</xsl:when>
            <xsl:when test="$PackagingType='CN'">Container, not otherwise specified as transport equipment</xsl:when>
            <xsl:when test="$PackagingType='CO'">Carboy, non-protected</xsl:when>
            <xsl:when test="$PackagingType='CP'">Carboy, protected</xsl:when>
            <xsl:when test="$PackagingType='CQ'">Cartridge</xsl:when>
            <xsl:when test="$PackagingType='CR'">Crate</xsl:when>
            <xsl:when test="$PackagingType='CS'">Case</xsl:when>
            <xsl:when test="$PackagingType='CT'">Carton</xsl:when>
            <xsl:when test="$PackagingType='CU'">Cup</xsl:when>
            <xsl:when test="$PackagingType='CV'">Cover</xsl:when>
            <xsl:when test="$PackagingType='CW'">Cage, roll</xsl:when>
            <xsl:when test="$PackagingType='CX'">Can, cylindrical</xsl:when>
            <xsl:when test="$PackagingType='CY'">Cylinder</xsl:when>
            <xsl:when test="$PackagingType='CZ'">Canvas</xsl:when>
            <xsl:when test="$PackagingType='DA'">Crate, multiple layer, plastic</xsl:when>
            <xsl:when test="$PackagingType='DB'">Crate, multiple layer, wooden</xsl:when>
            <xsl:when test="$PackagingType='DC'">Crate, multiple layer, cardboard</xsl:when>
            <xsl:when test="$PackagingType='DG'">Cage, Commonwealth Handling Equipment Pool (CHEP)</xsl:when>
            <xsl:when test="$PackagingType='DH'">Box, Commonwealth Handling Equipment Pool (CHEP), Eurobox</xsl:when>
            <xsl:when test="$PackagingType='DI'">Drum, iron</xsl:when>
            <xsl:when test="$PackagingType='DJ'">Demijohn, non-protected</xsl:when>
            <xsl:when test="$PackagingType='DK'">Crate, bulk, cardboard</xsl:when>
            <xsl:when test="$PackagingType='DL'">Crate, bulk, plastic</xsl:when>
            <xsl:when test="$PackagingType='DM'">Crate, bulk, wooden</xsl:when>
            <xsl:when test="$PackagingType='DN'">Dispenser</xsl:when>
            <xsl:when test="$PackagingType='DP'">Demijohn, protected</xsl:when>
            <xsl:when test="$PackagingType='DR'">Drum</xsl:when>
            <xsl:when test="$PackagingType='DS'">Tray, one layer no cover, plastic</xsl:when>
            <xsl:when test="$PackagingType='DT'">Tray, one layer no cover, wooden</xsl:when>
            <xsl:when test="$PackagingType='DU'">Tray, one layer no cover, polystyrene</xsl:when>
            <xsl:when test="$PackagingType='DV'">Tray, one layer no cover, cardboard</xsl:when>
            <xsl:when test="$PackagingType='DW'">Tray, two layers no cover, plastic tray</xsl:when>
            <xsl:when test="$PackagingType='DX'">Tray, two layers no cover, wooden</xsl:when>
            <xsl:when test="$PackagingType='DY'">Tray, two layers no cover, cardboard</xsl:when>
            <xsl:when test="$PackagingType='EC'">Bag, plastic</xsl:when>
            <xsl:when test="$PackagingType='ED'">Case, with pallet base</xsl:when>
            <xsl:when test="$PackagingType='EE'">Case, with pallet base, wooden</xsl:when>
            <xsl:when test="$PackagingType='EF'">Case, with pallet base, cardboard</xsl:when>
            <xsl:when test="$PackagingType='EG'">Case, with pallet base, plastic</xsl:when>
            <xsl:when test="$PackagingType='EH'">Case, with pallet base, metal</xsl:when>
            <xsl:when test="$PackagingType='EI'">Case, isothermic</xsl:when>
            <xsl:when test="$PackagingType='EN'">Envelope</xsl:when>
            <xsl:when test="$PackagingType='FB'">Flexibag</xsl:when>
            <xsl:when test="$PackagingType='FC'">Crate, fruit</xsl:when>
            <xsl:when test="$PackagingType='FD'">Crate, framed</xsl:when>
            <xsl:when test="$PackagingType='FE'">Flexitank</xsl:when>
            <xsl:when test="$PackagingType='FI'">Firkin</xsl:when>
            <xsl:when test="$PackagingType='FL'">Flask</xsl:when>
            <xsl:when test="$PackagingType='FO'">Footlocker</xsl:when>
            <xsl:when test="$PackagingType='FP'">Filmpack</xsl:when>
            <xsl:when test="$PackagingType='FR'">Frame</xsl:when>
            <xsl:when test="$PackagingType='FT'">Foodtainer</xsl:when>
            <xsl:when test="$PackagingType='FW'">Cart, flatbed</xsl:when>
            <xsl:when test="$PackagingType='FX'">Bag, flexible container</xsl:when>
            <xsl:when test="$PackagingType='GB'">Bottle, gas</xsl:when>
            <xsl:when test="$PackagingType='GI'">Girder</xsl:when>
            <xsl:when test="$PackagingType='GL'">Container, gallon</xsl:when>
            <xsl:when test="$PackagingType='GR'">Receptacle, glass</xsl:when>
            <xsl:when test="$PackagingType='GU'">Tray, containing horizontally stacked flat items</xsl:when>
            <xsl:when test="$PackagingType='GY'">Bag, gunny</xsl:when>
            <xsl:when test="$PackagingType='GZ'">Girders, in bundle/bunch/truss</xsl:when>
            <xsl:when test="$PackagingType='HA'">Basket, with handle, plastic</xsl:when>
            <xsl:when test="$PackagingType='HB'">Basket, with handle, wooden</xsl:when>
            <xsl:when test="$PackagingType='HC'">Basket, with handle, cardboard</xsl:when>
            <xsl:when test="$PackagingType='HG'">Hogshead</xsl:when>
            <xsl:when test="$PackagingType='HN'">Hanger</xsl:when>
            <xsl:when test="$PackagingType='HR'">Hamper</xsl:when>
            <xsl:when test="$PackagingType='IA'">Package, display, wooden</xsl:when>
            <xsl:when test="$PackagingType='IB'">Package, display, cardboard</xsl:when>
            <xsl:when test="$PackagingType='IC'">Package, display, plastic</xsl:when>
            <xsl:when test="$PackagingType='ID'">Package, display, metal</xsl:when>
            <xsl:when test="$PackagingType='IE'">Package, show</xsl:when>
            <xsl:when test="$PackagingType='IF'">Package, flow</xsl:when>
            <xsl:when test="$PackagingType='IG'">Package, paper wrapped</xsl:when>
            <xsl:when test="$PackagingType='IH'">Drum, plastic</xsl:when>
            <xsl:when test="$PackagingType='IK'">Package, cardboard, with bottle grip-holes</xsl:when>
            <xsl:when test="$PackagingType='IL'">Tray, rigid, lidded stackable (CEN TS 14482:2002)</xsl:when>
            <xsl:when test="$PackagingType='IN'">Ingot</xsl:when>
            <xsl:when test="$PackagingType='IZ'">Ingots, in bundle/bunch/truss</xsl:when>
            <xsl:when test="$PackagingType='JB'">Bag, jumbo</xsl:when>
            <xsl:when test="$PackagingType='JC'">Jerrican, rectangular</xsl:when>
            <xsl:when test="$PackagingType='JG'">Jug</xsl:when>
            <xsl:when test="$PackagingType='JR'">Jar</xsl:when>
            <xsl:when test="$PackagingType='JT'">Jutebag</xsl:when>
            <xsl:when test="$PackagingType='JY'">Jerrican, cylindrical</xsl:when>
            <xsl:when test="$PackagingType='KG'">Keg</xsl:when>
            <xsl:when test="$PackagingType='KI'">Kit</xsl:when>
            <xsl:when test="$PackagingType='LE'">Luggage</xsl:when>
            <xsl:when test="$PackagingType='LG'">Log</xsl:when>
            <xsl:when test="$PackagingType='LT'">Lot</xsl:when>
            <xsl:when test="$PackagingType='LU'">Lug</xsl:when>
            <xsl:when test="$PackagingType='LV'">Liftvan</xsl:when>
            <xsl:when test="$PackagingType='LZ'">Logs, in bundle/bunch/truss</xsl:when>
            <xsl:when test="$PackagingType='MA'">Crate, metal</xsl:when>
            <xsl:when test="$PackagingType='MB'">Bag, multiply</xsl:when>
            <xsl:when test="$PackagingType='MC'">Crate, milk</xsl:when>
            <xsl:when test="$PackagingType='ME'">Container, metal</xsl:when>
            <xsl:when test="$PackagingType='MR'">Receptacle, metal</xsl:when>
            <xsl:when test="$PackagingType='MS'">Sack, multi-wall</xsl:when>
            <xsl:when test="$PackagingType='MT'">Mat</xsl:when>
            <xsl:when test="$PackagingType='MW'">Receptacle, plastic wrapped</xsl:when>
            <xsl:when test="$PackagingType='MX'">Matchbox</xsl:when>
            <xsl:when test="$PackagingType='NA'">Not available</xsl:when>
            <xsl:when test="$PackagingType='NE'">Unpacked or unpackaged</xsl:when>
            <xsl:when test="$PackagingType='NF'">Unpacked or unpackaged, single unit</xsl:when>
            <xsl:when test="$PackagingType='NG'">Unpacked or unpackaged, multiple units</xsl:when>
            <xsl:when test="$PackagingType='NS'">Nest</xsl:when>
            <xsl:when test="$PackagingType='NT'">Net</xsl:when>
            <xsl:when test="$PackagingType='NU'">Net, tube, plastic</xsl:when>
            <xsl:when test="$PackagingType='NV'">Net, tube, textile</xsl:when>
            <xsl:when test="$PackagingType='OA'">Pallet, CHEP 40 cm x 60 cm</xsl:when>
            <xsl:when test="$PackagingType='OB'">Pallet, CHEP 80 cm x 120 cm</xsl:when>
            <xsl:when test="$PackagingType='OC'">Pallet, CHEP 100 cm x 120 cm</xsl:when>
            <xsl:when test="$PackagingType='OD'">Pallet, AS 4068-1993</xsl:when>
            <xsl:when test="$PackagingType='OE'">Pallet, ISO T11</xsl:when>
            <xsl:when test="$PackagingType='OF'">Platform, unspecified weight or dimension</xsl:when>
            <xsl:when test="$PackagingType='OK'">Block</xsl:when>
            <xsl:when test="$PackagingType='OT'">Octabin</xsl:when>
            <xsl:when test="$PackagingType='OU'">Container, outer</xsl:when>
            <xsl:when test="$PackagingType='P2'">Pan</xsl:when>
            <xsl:when test="$PackagingType='PA'">Packet</xsl:when>
            <xsl:when test="$PackagingType='PB'">Pallet, box Combined open-ended box and pallet</xsl:when>
            <xsl:when test="$PackagingType='PC'">Parcel</xsl:when>
            <xsl:when test="$PackagingType='PD'">Pallet, modular, collars 80cms * 100cms</xsl:when>
            <xsl:when test="$PackagingType='PE'">Pallet, modular, collars 80cms * 120cms</xsl:when>
            <xsl:when test="$PackagingType='PF'">Pen</xsl:when>
            <xsl:when test="$PackagingType='PG'">Plate</xsl:when>
            <xsl:when test="$PackagingType='PH'">Pitcher</xsl:when>
            <xsl:when test="$PackagingType='PI'">Pipe</xsl:when>
            <xsl:when test="$PackagingType='PJ'">Punnet</xsl:when>
            <xsl:when test="$PackagingType='PK'">Package</xsl:when>
            <xsl:when test="$PackagingType='PL'">Pail</xsl:when>
            <xsl:when test="$PackagingType='PN'">Plank</xsl:when>
            <xsl:when test="$PackagingType='PO'">Pouch</xsl:when>
            <xsl:when test="$PackagingType='PP'">Piece</xsl:when>
            <xsl:when test="$PackagingType='PR'">Receptacle, plastic</xsl:when>
            <xsl:when test="$PackagingType='PT'">Pot</xsl:when>
            <xsl:when test="$PackagingType='PU'">Tray</xsl:when>
            <xsl:when test="$PackagingType='PV'">Pipes, in bundle/bunch/truss</xsl:when>
            <xsl:when test="$PackagingType='PX'">Pallet</xsl:when>
            <xsl:when test="$PackagingType='PY'">Plates, in bundle/bunch/truss</xsl:when>
            <xsl:when test="$PackagingType='PZ'">Planks, in bundle/bunch/truss</xsl:when>
            <xsl:when test="$PackagingType='QA'">Drum, steel, non-removable head</xsl:when>
            <xsl:when test="$PackagingType='QB'">Drum, steel, removable head</xsl:when>
            <xsl:when test="$PackagingType='QC'">Drum, aluminium, non-removable head</xsl:when>
            <xsl:when test="$PackagingType='QD'">Drum, aluminium, removable head</xsl:when>
            <xsl:when test="$PackagingType='QF'">Drum, plastic, non-removable head</xsl:when>
            <xsl:when test="$PackagingType='QG'">Drum, plastic, removable head</xsl:when>
            <xsl:when test="$PackagingType='QH'">Barrel, wooden, bung type</xsl:when>
            <xsl:when test="$PackagingType='QJ'">Barrel, wooden, removable head</xsl:when>
            <xsl:when test="$PackagingType='QK'">Jerrican, steel, non-removable head</xsl:when>
            <xsl:when test="$PackagingType='QL'">Jerrican, steel, removable head</xsl:when>
            <xsl:when test="$PackagingType='QM'">Jerrican, plastic, non-removable head</xsl:when>
            <xsl:when test="$PackagingType='QN'">Jerrican, plastic, removable head</xsl:when>
            <xsl:when test="$PackagingType='QP'">Box, wooden, natural wood, ordinary</xsl:when>
            <xsl:when test="$PackagingType='QQ'">Box, wooden, natural wood, with sift proof walls</xsl:when>
            <xsl:when test="$PackagingType='QR'">Box, plastic, expanded</xsl:when>
            <xsl:when test="$PackagingType='QS'">Box, plastic, solid</xsl:when>
            <xsl:when test="$PackagingType='RD'">Rod</xsl:when>
            <xsl:when test="$PackagingType='RG'">Ring</xsl:when>
            <xsl:when test="$PackagingType='RJ'">Rack, clothing hanger</xsl:when>
            <xsl:when test="$PackagingType='RK'">Rack</xsl:when>
            <xsl:when test="$PackagingType='RL'">Reel</xsl:when>
            <xsl:when test="$PackagingType='RO'">Roll</xsl:when>
            <xsl:when test="$PackagingType='RT'">Rednet</xsl:when>
            <xsl:when test="$PackagingType='RZ'">Rods, in bundle/bunch/truss</xsl:when>
            <xsl:when test="$PackagingType='SA'">Sack</xsl:when>
            <xsl:when test="$PackagingType='SB'">Slab</xsl:when>
            <xsl:when test="$PackagingType='SC'">Crate, shallow</xsl:when>
            <xsl:when test="$PackagingType='SD'">Spindle</xsl:when>
            <xsl:when test="$PackagingType='SE'">Sea-chest</xsl:when>
            <xsl:when test="$PackagingType='SH'">Sachet</xsl:when>
            <xsl:when test="$PackagingType='SI'">Skid</xsl:when>
            <xsl:when test="$PackagingType='SK'">Case, skeleton</xsl:when>
            <xsl:when test="$PackagingType='SL'">Slipsheet</xsl:when>
            <xsl:when test="$PackagingType='SM'">Sheetmetal</xsl:when>
            <xsl:when test="$PackagingType='SO'">Spool</xsl:when>
            <xsl:when test="$PackagingType='SP'">Sheet, plastic wrapping</xsl:when>
            <xsl:when test="$PackagingType='SS'">Case, steel</xsl:when>
            <xsl:when test="$PackagingType='ST'">Sheet</xsl:when>
            <xsl:when test="$PackagingType='SU'">Suitcase</xsl:when>
            <xsl:when test="$PackagingType='SV'">Envelope, steel</xsl:when>
            <xsl:when test="$PackagingType='SW'">Shrinkwrapped</xsl:when>
            <xsl:when test="$PackagingType='SX'">Set</xsl:when>
            <xsl:when test="$PackagingType='SY'">Sleeve</xsl:when>
            <xsl:when test="$PackagingType='SZ'">Sheets, in bundle/bunch/truss</xsl:when>
            <xsl:when test="$PackagingType='T1'">Tablet</xsl:when>
            <xsl:when test="$PackagingType='TB'">Tub</xsl:when>
            <xsl:when test="$PackagingType='TC'">Tea-chest</xsl:when>
            <xsl:when test="$PackagingType='TD'">Tube, collapsible</xsl:when>
            <xsl:when test="$PackagingType='TE'">Tyre</xsl:when>
            <xsl:when test="$PackagingType='TG'">Tank container, generic</xsl:when>
            <xsl:when test="$PackagingType='TI'">Tierce</xsl:when>
            <xsl:when test="$PackagingType='TK'">Tank, rectangular</xsl:when>
            <xsl:when test="$PackagingType='TL'">Tub, with lid</xsl:when>
            <xsl:when test="$PackagingType='TN'">Tin</xsl:when>
            <xsl:when test="$PackagingType='TO'">Tun</xsl:when>
            <xsl:when test="$PackagingType='TR'">Trunk</xsl:when>
            <xsl:when test="$PackagingType='TS'">Truss</xsl:when>
            <xsl:when test="$PackagingType='TT'">Bag, tote</xsl:when>
            <xsl:when test="$PackagingType='TU'">Tube</xsl:when>
            <xsl:when test="$PackagingType='TV'">Tube, with nozzle</xsl:when>
            <xsl:when test="$PackagingType='TW'">Pallet, triwall</xsl:when>
            <xsl:when test="$PackagingType='TY'">Tank, cylindrical</xsl:when>
            <xsl:when test="$PackagingType='TZ'">Tubes, in bundle/bunch/truss</xsl:when>
            <xsl:when test="$PackagingType='UC'">Uncaged</xsl:when>
            <xsl:when test="$PackagingType='UN'">Unit</xsl:when>
            <xsl:when test="$PackagingType='VA'">Vat</xsl:when>
            <xsl:when test="$PackagingType='VG'">Bulk, gas (at 1031 mbar and 15Â°C)</xsl:when>
            <xsl:when test="$PackagingType='VI'">Vial</xsl:when>
            <xsl:when test="$PackagingType='VK'">Vanpack</xsl:when>
            <xsl:when test="$PackagingType='VL'">Bulk, liquid</xsl:when>
            <xsl:when test="$PackagingType='VO'">Bulk, solid, large particles (Â“nodulesÂ”)</xsl:when>
            <xsl:when test="$PackagingType='VP'">Vacuum-packed</xsl:when>
            <xsl:when test="$PackagingType='VQ'">Bulk, liquefied gas (at abnormal temperature/pressure)</xsl:when>
            <xsl:when test="$PackagingType='VN'">Vehicle</xsl:when>
            <xsl:when test="$PackagingType='VR'">Bulk, solid, granular particles (Â“grainsÂ”)</xsl:when>
            <xsl:when test="$PackagingType='VS'">Bulk, scrap metal</xsl:when>
            <xsl:when test="$PackagingType='VY'">Bulk, solid, fine particles (Â“powdersÂ”)</xsl:when>
            <xsl:when test="$PackagingType='WA'">Intermediate bulk container</xsl:when>
            <xsl:when test="$PackagingType='WB'">Wickerbottle</xsl:when>
            <xsl:when test="$PackagingType='WC'">Intermediate bulk container, steel</xsl:when>
            <xsl:when test="$PackagingType='WD'">Intermediate bulk container, aluminium</xsl:when>
            <xsl:when test="$PackagingType='WF'">Intermediate bulk container, metal</xsl:when>
            <xsl:when test="$PackagingType='WG'">Intermediate bulk container, steel, pressurised > 10 kpa</xsl:when>
            <xsl:when test="$PackagingType='WH'">Intermediate bulk container, aluminium, pressurised > 10 kpa</xsl:when>
            <xsl:when test="$PackagingType='WJ'">Intermediate bulk container, metal, pressure 10 kpa</xsl:when>
            <xsl:when test="$PackagingType='WK'">Intermediate bulk container, steel, liquid</xsl:when>
            <xsl:when test="$PackagingType='WL'">Intermediate bulk container, aluminium, liquid</xsl:when>
            <xsl:when test="$PackagingType='WM'">Intermediate bulk container, metal, liquid</xsl:when>
            <xsl:when test="$PackagingType='WN'">Intermediate bulk container, woven plastic, without coat/liner</xsl:when>
            <xsl:when test="$PackagingType='WP'">Intermediate bulk container, woven plastic, coated</xsl:when>
            <xsl:when test="$PackagingType='WQ'">Intermediate bulk container, woven plastic, with liner</xsl:when>
            <xsl:when test="$PackagingType='WR'">Intermediate bulk container, woven plastic, coated and liner</xsl:when>
            <xsl:when test="$PackagingType='WS'">Intermediate bulk container, plastic film</xsl:when>
            <xsl:when test="$PackagingType='WT'">Intermediate bulk container, textile with out coat/liner</xsl:when>
            <xsl:when test="$PackagingType='WU'">Intermediate bulk container, natural wood, with inner liner</xsl:when>
            <xsl:when test="$PackagingType='WV'">Intermediate bulk container, textile, coated</xsl:when>
            <xsl:when test="$PackagingType='WW'">Intermediate bulk container, textile, with liner</xsl:when>
            <xsl:when test="$PackagingType='WX'">Intermediate bulk container, textile, coated and liner</xsl:when>
            <xsl:when test="$PackagingType='WY'">Intermediate bulk container, plywood, with inner liner</xsl:when>
            <xsl:when test="$PackagingType='WZ'">Intermediate bulk container, reconstituted wood, with inner liner</xsl:when>
            <xsl:when test="$PackagingType='XA'">Bag, woven plastic, without inner coat/liner</xsl:when>
            <xsl:when test="$PackagingType='XB'">Bag, woven plastic, sift proof</xsl:when>
            <xsl:when test="$PackagingType='XC'">Bag, woven plastic, water resistant</xsl:when>
            <xsl:when test="$PackagingType='XD'">Bag, plastics film</xsl:when>
            <xsl:when test="$PackagingType='XF'">Bag, textile, without inner coat/liner</xsl:when>
            <xsl:when test="$PackagingType='XG'">Bag, textile, sift proof</xsl:when>
            <xsl:when test="$PackagingType='XH'">Bag, textile, water resistant</xsl:when>
            <xsl:when test="$PackagingType='XJ'">Bag, paper, multi-wall</xsl:when>
            <xsl:when test="$PackagingType='XK'">Bag, paper, multi-wall, water resistant</xsl:when>
            <xsl:when test="$PackagingType='YA'">Composite packaging, plastic receptacle in steel drum</xsl:when>
            <xsl:when test="$PackagingType='YB'">Composite packaging, plastic receptacle in steel crate box</xsl:when>
            <xsl:when test="$PackagingType='YC'">Composite packaging, plastic receptacle in aluminium drum</xsl:when>
            <xsl:when test="$PackagingType='YD'">Composite packaging, plastic receptacle in aluminium crate</xsl:when>
            <xsl:when test="$PackagingType='YF'">Composite packaging, plastic receptacle in wooden box</xsl:when>
            <xsl:when test="$PackagingType='YG'">Composite packaging, plastic receptacle in plywood drum</xsl:when>
            <xsl:when test="$PackagingType='YH'">Composite packaging, plastic receptacle in plywood box</xsl:when>
            <xsl:when test="$PackagingType='YJ'">Composite packaging, plastic receptacle in fibre drum</xsl:when>
            <xsl:when test="$PackagingType='YK'">Composite packaging, plastic receptacle in fibreboard box</xsl:when>
            <xsl:when test="$PackagingType='YL'">Composite packaging, plastic receptacle in plastic drum</xsl:when>
            <xsl:when test="$PackagingType='YM'">Composite packaging, plastic receptacle in solid plastic box</xsl:when>
            <xsl:when test="$PackagingType='YN'">Composite packaging, glass receptacle in steel drum</xsl:when>
            <xsl:when test="$PackagingType='YP'">Composite packaging, glass receptacle in steel crate box</xsl:when>
            <xsl:when test="$PackagingType='YQ'">Composite packaging, glass receptacle in aluminium drum</xsl:when>
            <xsl:when test="$PackagingType='YR'">Composite packaging, glass receptacle in aluminium crate</xsl:when>
            <xsl:when test="$PackagingType='YS'">Composite packaging, glass receptacle in wooden box</xsl:when>
            <xsl:when test="$PackagingType='YT'">Composite packaging, glass receptacle in plywood drum</xsl:when>
            <xsl:when test="$PackagingType='YV'">Composite packaging, glass receptacle in wickerwork hamper</xsl:when>
            <xsl:when test="$PackagingType='YW'">Composite packaging, glass receptacle in fibre drum</xsl:when>
            <xsl:when test="$PackagingType='YX'">Composite packaging, glass receptacle in fibreboard box</xsl:when>
            <xsl:when test="$PackagingType='YY'">Composite packaging, glass receptacle in expandable plastic pack</xsl:when>
            <xsl:when test="$PackagingType='YZ'">Composite packaging, glass receptacle in solid plastic pack</xsl:when>
            <xsl:when test="$PackagingType='ZA'">Intermediate bulk container, paper, multi-wall</xsl:when>
            <xsl:when test="$PackagingType='ZB'">Bag, large</xsl:when>
            <xsl:when test="$PackagingType='ZC'">Intermediate bulk container, paper, multi-wall, water resistant</xsl:when>
            <xsl:when test="$PackagingType='ZD'">Intermediate bulk container, rigid plastic, with structural equipment, solids</xsl:when>
            <xsl:when test="$PackagingType='ZF'">Intermediate bulk container, rigid plastic, freestanding, solids</xsl:when>
            <xsl:when test="$PackagingType='ZG'">Intermediate bulk container, rigid plastic, with structural equipment, pressurised</xsl:when>
            <xsl:when test="$PackagingType='ZH'">Intermediate bulk container, rigid plastic, freestanding, pressurised</xsl:when>
            <xsl:when test="$PackagingType='ZJ'">Intermediate bulk container, rigid plastic, with structural equipment, liquids</xsl:when>
            <xsl:when test="$PackagingType='ZK'">Intermediate bulk container, rigid plastic, freestanding, liquids</xsl:when>
            <xsl:when test="$PackagingType='ZL'">Intermediate bulk container, composite, rigid plastic, solids</xsl:when>
            <xsl:when test="$PackagingType='ZM'">Intermediate bulk container, composite, flexible plastic, solids</xsl:when>
            <xsl:when test="$PackagingType='ZN'">Intermediate bulk container, composite, rigid plastic, pressurised</xsl:when>
            <xsl:when test="$PackagingType='ZP'">Intermediate bulk container, composite, flexible plastic, pressurised</xsl:when>
            <xsl:when test="$PackagingType='ZQ'">Intermediate bulk container, composite, rigid plastic, liquids</xsl:when>
            <xsl:when test="$PackagingType='ZR'">Intermediate bulk container, composite, flexible plastic, liquids</xsl:when>
            <xsl:when test="$PackagingType='ZS'">Intermediate bulk container, composite</xsl:when>
            <xsl:when test="$PackagingType='ZT'">Intermediate bulk container, fibreboard</xsl:when>
            <xsl:when test="$PackagingType='ZU'">Intermediate bulk container, flexible</xsl:when>
            <xsl:when test="$PackagingType='ZV'">Intermediate bulk container, metal, other than steel</xsl:when>
            <xsl:when test="$PackagingType='ZW'">Intermediate bulk container, natural wood</xsl:when>
            <xsl:when test="$PackagingType='ZX'">Intermediate bulk container, plywood</xsl:when>
            <xsl:when test="$PackagingType='ZY'">Intermediate bulk container, reconstituted wood</xsl:when>
            <xsl:otherwise><xsl:value-of select="$PackagingType"/></xsl:otherwise>
        </xsl:choose>       
    </xsl:template>
    <xsl:template name="Country">
        <xsl:param name="CountryType" />
        <xsl:choose>
            <xsl:when test="$CountryType='AF'">Afganistan</xsl:when>
            <xsl:when test="$CountryType='DE'">Almanya</xsl:when>
            <xsl:when test="$CountryType='AD'">Andorra</xsl:when>
            <xsl:when test="$CountryType='AO'">Angola</xsl:when>
            <xsl:when test="$CountryType='AG'">Antigua ve Barbuda</xsl:when>
            <xsl:when test="$CountryType='AR'">Arjantin</xsl:when>
            <xsl:when test="$CountryType='AL'">Arnavutluk</xsl:when>
            <xsl:when test="$CountryType='AW'">Aruba</xsl:when>
            <xsl:when test="$CountryType='AU'">Avustralya</xsl:when>
            <xsl:when test="$CountryType='AT'">Avusturya</xsl:when>
            <xsl:when test="$CountryType='AZ'">Azerbaycan</xsl:when>
            <xsl:when test="$CountryType='BS'">Bahamalar</xsl:when>
            <xsl:when test="$CountryType='BH'">Bahreyn</xsl:when>
            <xsl:when test="$CountryType='BD'">Bangladeş</xsl:when>
            <xsl:when test="$CountryType='BB'">Barbados</xsl:when>
            <xsl:when test="$CountryType='EH'">Batı Sahra (MA)</xsl:when>
            <xsl:when test="$CountryType='BE'">Belçika</xsl:when>
            <xsl:when test="$CountryType='BZ'">Belize</xsl:when>
            <xsl:when test="$CountryType='BJ'">Benin</xsl:when>
            <xsl:when test="$CountryType='BM'">Bermuda</xsl:when>
            <xsl:when test="$CountryType='BY'">Beyaz Rusya</xsl:when>
            <xsl:when test="$CountryType='BT'">Bhutan</xsl:when>
            <xsl:when test="$CountryType='AE'">Birleşik Arap Emirlikleri</xsl:when>
            <xsl:when test="$CountryType='US'">Birleşik Devletler</xsl:when>
            <xsl:when test="$CountryType='GB'">Birleşik Krallık</xsl:when>
            <xsl:when test="$CountryType='BO'">Bolivya</xsl:when>
            <xsl:when test="$CountryType='BA'">Bosna-Hersek</xsl:when>
            <xsl:when test="$CountryType='BW'">Botsvana</xsl:when>
            <xsl:when test="$CountryType='BR'">Brezilya</xsl:when>
            <xsl:when test="$CountryType='BN'">Bruney</xsl:when>
            <xsl:when test="$CountryType='BG'">Bulgaristan</xsl:when>
            <xsl:when test="$CountryType='BF'">Burkina Faso</xsl:when>
            <xsl:when test="$CountryType='BI'">Burundi</xsl:when>
            <xsl:when test="$CountryType='TD'">Çad</xsl:when>
            <xsl:when test="$CountryType='KY'">Cayman Adaları</xsl:when>
            <xsl:when test="$CountryType='GI'">Cebelitarık (GB)</xsl:when>
            <xsl:when test="$CountryType='CZ'">Çek Cumhuriyeti</xsl:when>
            <xsl:when test="$CountryType='DZ'">Cezayir</xsl:when>
            <xsl:when test="$CountryType='DJ'">Cibuti</xsl:when>
            <xsl:when test="$CountryType='CN'">Çin</xsl:when>
            <xsl:when test="$CountryType='DK'">Danimarka</xsl:when>
            <xsl:when test="$CountryType='CD'">Demokratik Kongo Cumhuriyeti</xsl:when>
            <xsl:when test="$CountryType='TL'">Doğu Timor</xsl:when>
            <xsl:when test="$CountryType='DO'">Dominik Cumhuriyeti</xsl:when>
            <xsl:when test="$CountryType='DM'">Dominika</xsl:when>
            <xsl:when test="$CountryType='EC'">Ekvador</xsl:when>
            <xsl:when test="$CountryType='GQ'">Ekvator Ginesi</xsl:when>
            <xsl:when test="$CountryType='SV'">El Salvador</xsl:when>
            <xsl:when test="$CountryType='ID'">Endonezya</xsl:when>
            <xsl:when test="$CountryType='ER'">Eritre</xsl:when>
            <xsl:when test="$CountryType='AM'">Ermenistan</xsl:when>
            <xsl:when test="$CountryType='MF'">Ermiş Martin (FR)</xsl:when>
            <xsl:when test="$CountryType='EE'">Estonya</xsl:when>
            <xsl:when test="$CountryType='ET'">Etiyopya</xsl:when>
            <xsl:when test="$CountryType='FK'">Falkland Adaları</xsl:when>
            <xsl:when test="$CountryType='FO'">Faroe Adaları (DK)</xsl:when>
            <xsl:when test="$CountryType='MA'">Fas</xsl:when>
            <xsl:when test="$CountryType='FJ'">Fiji</xsl:when>
            <xsl:when test="$CountryType='CI'">Fildişi Sahili</xsl:when>
            <xsl:when test="$CountryType='PH'">Filipinler</xsl:when>
            <xsl:when test="$CountryType='FI'">Finlandiya</xsl:when>
            <xsl:when test="$CountryType='FR'">Fransa</xsl:when>
            <xsl:when test="$CountryType='GF'">Fransız Guyanası (FR)</xsl:when>
            <xsl:when test="$CountryType='PF'">Fransız Polinezyası (FR)</xsl:when>
            <xsl:when test="$CountryType='GA'">Gabon</xsl:when>
            <xsl:when test="$CountryType='GM'">Gambiya</xsl:when>
            <xsl:when test="$CountryType='GH'">Gana</xsl:when>
            <xsl:when test="$CountryType='GN'">Gine</xsl:when>
            <xsl:when test="$CountryType='GW'">Gine Bissau</xsl:when>
            <xsl:when test="$CountryType='GD'">Grenada</xsl:when>
            <xsl:when test="$CountryType='GL'">Grönland (DK)</xsl:when>
            <xsl:when test="$CountryType='GP'">Guadeloupe (FR)</xsl:when>
            <xsl:when test="$CountryType='GT'">Guatemala</xsl:when>
            <xsl:when test="$CountryType='GG'">Guernsey (GB)</xsl:when>
            <xsl:when test="$CountryType='ZA'">Güney Afrika</xsl:when>
            <xsl:when test="$CountryType='KR'">Güney Kore</xsl:when>
            <xsl:when test="$CountryType='GE'">Gürcistan</xsl:when>
            <xsl:when test="$CountryType='GY'">Guyana</xsl:when>
            <xsl:when test="$CountryType='HT'">Haiti</xsl:when>
            <xsl:when test="$CountryType='IN'">Hindistan</xsl:when>
            <xsl:when test="$CountryType='HR'">Hırvatistan</xsl:when>
            <xsl:when test="$CountryType='NL'">Hollanda</xsl:when>
            <xsl:when test="$CountryType='HN'">Honduras</xsl:when>
            <xsl:when test="$CountryType='HK'">Hong Kong (CN)</xsl:when>
            <xsl:when test="$CountryType='VG'">İngiliz Virjin Adaları</xsl:when>
            <xsl:when test="$CountryType='IQ'">Irak</xsl:when>
            <xsl:when test="$CountryType='IR'">İran</xsl:when>
            <xsl:when test="$CountryType='IE'">İrlanda</xsl:when>
            <xsl:when test="$CountryType='ES'">İspanya</xsl:when>
            <xsl:when test="$CountryType='IL'">İsrail</xsl:when>
            <xsl:when test="$CountryType='SE'">İsveç</xsl:when>
            <xsl:when test="$CountryType='CH'">İsviçre</xsl:when>
            <xsl:when test="$CountryType='IT'">İtalya</xsl:when>
            <xsl:when test="$CountryType='IS'">İzlanda</xsl:when>
            <xsl:when test="$CountryType='JM'">Jamaika</xsl:when>
            <xsl:when test="$CountryType='JP'">Japonya</xsl:when>
            <xsl:when test="$CountryType='JE'">Jersey (GB)</xsl:when>
            <xsl:when test="$CountryType='KH'">Kamboçya</xsl:when>
            <xsl:when test="$CountryType='CM'">Kamerun</xsl:when>
            <xsl:when test="$CountryType='CA'">Kanada</xsl:when>
            <xsl:when test="$CountryType='ME'">Karadağ</xsl:when>
            <xsl:when test="$CountryType='QA'">Katar</xsl:when>
            <xsl:when test="$CountryType='KZ'">Kazakistan</xsl:when>
            <xsl:when test="$CountryType='KE'">Kenya</xsl:when>
            <xsl:when test="$CountryType='CY'">Kıbrıs</xsl:when>
            <xsl:when test="$CountryType='KG'">Kırgızistan</xsl:when>
            <xsl:when test="$CountryType='KI'">Kiribati</xsl:when>
            <xsl:when test="$CountryType='CO'">Kolombiya</xsl:when>
            <xsl:when test="$CountryType='KM'">Komorlar</xsl:when>
            <xsl:when test="$CountryType='CG'">Kongo Cumhuriyeti</xsl:when>
            <xsl:when test="$CountryType='KV'">Kosova (RS)</xsl:when>
            <xsl:when test="$CountryType='CR'">Kosta Rika</xsl:when>
            <xsl:when test="$CountryType='CU'">Küba</xsl:when>
            <xsl:when test="$CountryType='KW'">Kuveyt</xsl:when>
            <xsl:when test="$CountryType='KP'">Kuzey Kore</xsl:when>
            <xsl:when test="$CountryType='LA'">Laos</xsl:when>
            <xsl:when test="$CountryType='LS'">Lesoto</xsl:when>
            <xsl:when test="$CountryType='LV'">Letonya</xsl:when>
            <xsl:when test="$CountryType='LR'">Liberya</xsl:when>
            <xsl:when test="$CountryType='LY'">Libya</xsl:when>
            <xsl:when test="$CountryType='LI'">Lihtenştayn</xsl:when>
            <xsl:when test="$CountryType='LT'">Litvanya</xsl:when>
            <xsl:when test="$CountryType='LB'">Lübnan</xsl:when>
            <xsl:when test="$CountryType='LU'">Lüksemburg</xsl:when>
            <xsl:when test="$CountryType='HU'">Macaristan</xsl:when>
            <xsl:when test="$CountryType='MG'">Madagaskar</xsl:when>
            <xsl:when test="$CountryType='MO'">Makao (CN)</xsl:when>
            <xsl:when test="$CountryType='MK'">Makedonya</xsl:when>
            <xsl:when test="$CountryType='MW'">Malavi</xsl:when>
            <xsl:when test="$CountryType='MV'">Maldivler</xsl:when>
            <xsl:when test="$CountryType='MY'">Malezya</xsl:when>
            <xsl:when test="$CountryType='ML'">Mali</xsl:when>
            <xsl:when test="$CountryType='MT'">Malta</xsl:when>
            <xsl:when test="$CountryType='IM'">Man Adası (GB)</xsl:when>
            <xsl:when test="$CountryType='MH'">Marshall Adaları</xsl:when>
            <xsl:when test="$CountryType='MQ'">Martinique (FR)</xsl:when>
            <xsl:when test="$CountryType='MU'">Mauritius</xsl:when>
            <xsl:when test="$CountryType='YT'">Mayotte (FR)</xsl:when>
            <xsl:when test="$CountryType='MX'">Meksika</xsl:when>
            <xsl:when test="$CountryType='FM'">Mikronezya</xsl:when>
            <xsl:when test="$CountryType='EG'">Mısır</xsl:when>
            <xsl:when test="$CountryType='MN'">Moğolistan</xsl:when>
            <xsl:when test="$CountryType='MD'">Moldova</xsl:when>
            <xsl:when test="$CountryType='MC'">Monako</xsl:when>
            <xsl:when test="$CountryType='MR'">Moritanya</xsl:when>
            <xsl:when test="$CountryType='MZ'">Mozambik</xsl:when>
            <xsl:when test="$CountryType='MM'">Myanmar</xsl:when>
            <xsl:when test="$CountryType='NA'">Namibya</xsl:when>
            <xsl:when test="$CountryType='NR'">Nauru</xsl:when>
            <xsl:when test="$CountryType='NP'">Nepal</xsl:when>
            <xsl:when test="$CountryType='NE'">Nijer</xsl:when>
            <xsl:when test="$CountryType='NG'">Nijerya</xsl:when>
            <xsl:when test="$CountryType='NI'">Nikaragua</xsl:when>
            <xsl:when test="$CountryType='NO'">Norveç</xsl:when>
            <xsl:when test="$CountryType='CF'">Orta Afrika Cumhuriyeti</xsl:when>
            <xsl:when test="$CountryType='UZ'">Özbekistan</xsl:when>
            <xsl:when test="$CountryType='PK'">Pakistan</xsl:when>
            <xsl:when test="$CountryType='PW'">Palau</xsl:when>
            <xsl:when test="$CountryType='PA'">Panama</xsl:when>
            <xsl:when test="$CountryType='PG'">Papua Yeni Gine</xsl:when>
            <xsl:when test="$CountryType='PY'">Paraguay</xsl:when>
            <xsl:when test="$CountryType='PE'">Peru</xsl:when>
            <xsl:when test="$CountryType='PL'">Polonya</xsl:when>
            <xsl:when test="$CountryType='PT'">Portekiz</xsl:when>
            <xsl:when test="$CountryType='PR'">Porto Riko (US)</xsl:when>
            <xsl:when test="$CountryType='RE'">Réunion (FR)</xsl:when>
            <xsl:when test="$CountryType='RO'">Romanya</xsl:when>
            <xsl:when test="$CountryType='RW'">Ruanda</xsl:when>
            <xsl:when test="$CountryType='RU'">Rusya</xsl:when>
            <xsl:when test="$CountryType='BL'">Saint Barthélemy (FR)</xsl:when>
            <xsl:when test="$CountryType='KN'">Saint Kitts ve Nevis</xsl:when>
            <xsl:when test="$CountryType='LC'">Saint Lucia</xsl:when>
            <xsl:when test="$CountryType='PM'">Saint Pierre ve Miquelon (FR)</xsl:when>
            <xsl:when test="$CountryType='VC'">Saint Vincent ve Grenadinler</xsl:when>
            <xsl:when test="$CountryType='WS'">Samoa</xsl:when>
            <xsl:when test="$CountryType='SM'">San Marino</xsl:when>
            <xsl:when test="$CountryType='ST'">São Tomé ve Príncipe</xsl:when>
            <xsl:when test="$CountryType='SN'">Senegal</xsl:when>
            <xsl:when test="$CountryType='SC'">Seyşeller</xsl:when>
            <xsl:when test="$CountryType='SL'">Sierra Leone</xsl:when>
            <xsl:when test="$CountryType='CL'">Şili</xsl:when>
            <xsl:when test="$CountryType='SG'">Singapur</xsl:when>
            <xsl:when test="$CountryType='RS'">Sırbistan</xsl:when>
            <xsl:when test="$CountryType='SK'">Slovakya Cumhuriyeti</xsl:when>
            <xsl:when test="$CountryType='SI'">Slovenya</xsl:when>
            <xsl:when test="$CountryType='SB'">Solomon Adaları</xsl:when>
            <xsl:when test="$CountryType='SO'">Somali</xsl:when>
            <xsl:when test="$CountryType='SS'">South Sudan</xsl:when>
            <xsl:when test="$CountryType='SJ'">Spitsbergen (NO)</xsl:when>
            <xsl:when test="$CountryType='LK'">Sri Lanka</xsl:when>
            <xsl:when test="$CountryType='SD'">Sudan</xsl:when>
            <xsl:when test="$CountryType='SR'">Surinam</xsl:when>
            <xsl:when test="$CountryType='SY'">Suriye</xsl:when>
            <xsl:when test="$CountryType='SA'">Suudi Arabistan</xsl:when>
            <xsl:when test="$CountryType='SZ'">Svaziland</xsl:when>
            <xsl:when test="$CountryType='TJ'">Tacikistan</xsl:when>
            <xsl:when test="$CountryType='TZ'">Tanzanya</xsl:when>
            <xsl:when test="$CountryType='TH'">Tayland</xsl:when>
            <xsl:when test="$CountryType='TW'">Tayvan</xsl:when>
            <xsl:when test="$CountryType='TG'">Togo</xsl:when>
            <xsl:when test="$CountryType='TO'">Tonga</xsl:when>
            <xsl:when test="$CountryType='TT'">Trinidad ve Tobago</xsl:when>
            <xsl:when test="$CountryType='TN'">Tunus</xsl:when>
            <xsl:when test="$CountryType='TR'">Türkiye</xsl:when>
            <xsl:when test="$CountryType='TM'">Türkmenistan</xsl:when>
            <xsl:when test="$CountryType='TC'">Turks ve Caicos</xsl:when>
            <xsl:when test="$CountryType='TV'">Tuvalu</xsl:when>
            <xsl:when test="$CountryType='UG'">Uganda</xsl:when>
            <xsl:when test="$CountryType='UA'">Ukrayna</xsl:when>
            <xsl:when test="$CountryType='OM'">Umman</xsl:when>
            <xsl:when test="$CountryType='JO'">Ürdün</xsl:when>
            <xsl:when test="$CountryType='UY'">Uruguay</xsl:when>
            <xsl:when test="$CountryType='VU'">Vanuatu</xsl:when>
            <xsl:when test="$CountryType='VA'">Vatikan</xsl:when>
            <xsl:when test="$CountryType='VE'">Venezuela</xsl:when>
            <xsl:when test="$CountryType='VN'">Vietnam</xsl:when>
            <xsl:when test="$CountryType='WF'">Wallis ve Futuna (FR)</xsl:when>
            <xsl:when test="$CountryType='YE'">Yemen</xsl:when>
            <xsl:when test="$CountryType='NC'">Yeni Kaledonya (FR)</xsl:when>
            <xsl:when test="$CountryType='NZ'">Yeni Zelanda</xsl:when>
            <xsl:when test="$CountryType='CV'">Yeşil Burun Adaları</xsl:when>
            <xsl:when test="$CountryType='GR'">Yunanistan</xsl:when>
            <xsl:when test="$CountryType='ZM'">Zambiya</xsl:when>
            <xsl:when test="$CountryType='ZW'">Zimbabve</xsl:when>
            <xsl:otherwise><xsl:value-of select="$CountryType"/></xsl:otherwise>
        </xsl:choose>
    </xsl:template>
  <xsl:template name='Party_Other'>
    <xsl:param name="PartyType" />
    <xsl:for-each select="cbc:WebsiteURI">
      <tr align="left">
        <td>
          <span style="font-weight:bold; "><xsl:text>Web Sitesi: </xsl:text></span>
          <xsl:value-of select="."/>
        </td>
      </tr>
    </xsl:for-each>
    <xsl:for-each select="cac:Contact/cbc:ElectronicMail">
      <tr align="left">
        <td>
          <span style="font-weight:bold; "><xsl:text>E-Posta: </xsl:text></span>
          <xsl:value-of select="."/>
        </td>
      </tr>
    </xsl:for-each>
    <xsl:for-each select="cac:Contact">
      <xsl:if test="cbc:Telephone or cbc:Telefax">
        <tr align="left">
          <td style="width:469px; " align="left">
            <xsl:for-each select="cbc:Telephone">
             <span style="font-weight:bold; "> <xsl:text>Tel: </xsl:text></span>
              <xsl:apply-templates/>
            </xsl:for-each>
            <xsl:for-each select="cbc:Telefax">
              <span style="font-weight:bold; "><xsl:text> Fax: </xsl:text></span>
              <xsl:apply-templates/>
            </xsl:for-each>
            <xsl:text>&#160;</xsl:text>
          </td>
        </tr>
      </xsl:if>
    </xsl:for-each>
    <xsl:if test="$PartyType!='TAXFREE'">
      <xsl:for-each select="cac:PartyTaxScheme/cac:TaxScheme/cbc:Name">
        <tr align="left">
          <td>
            <span style="font-weight:bold; ">
            <xsl:text>Vergi Dairesi: </xsl:text>
            </span>
            <xsl:apply-templates/>
          </td>
        </tr>
      </xsl:for-each>
      <xsl:for-each select="cac:PartyIdentification">
        <tr align="left">
          <td>
            <span style="font-weight:bold; "><xsl:value-of select="cbc:ID/@schemeID"/></span>
            <xsl:text>: </xsl:text>
            <xsl:value-of select="cbc:ID"/>
          </td>
        </tr>
      </xsl:for-each>
    </xsl:if>
  </xsl:template>
  <xsl:template name="Curr_Type">
    <xsl:value-of select="format-number(., '###.##0,00', 'european')"/>
    <xsl:if test="@currencyID">
      <xsl:text> </xsl:text>
      <xsl:choose>
        <xsl:when test="@currencyID = 'TRL' or @currencyID = 'TRY'">
          <xsl:text>TL</xsl:text>
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="@currencyID"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:if>
  </xsl:template>
</xsl:stylesheet>