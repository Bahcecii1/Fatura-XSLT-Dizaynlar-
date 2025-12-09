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
                    td.lineTableTd {
                        border-width: 1px;
                        padding: 1px;
                        border-style: inset;
                        border-color: black;
                        background-color: white;
                    }
                    tr.lineTableTr {
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
                    td.lineTableBudgetTd {
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
                    }</style>
                    <title>e-Arşiv</title>
            </head>
            <body
                style="margin-left=0.6in; margin-right=0.6in; margin-top=0.79in; margin-bottom=0.79in">
                <xsl:for-each select="$XML">
                    <table style="border-color:blue; " border="0" cellspacing="0px" width="800"
                        cellpadding="0px">
                        <tbody>
                            <tr valign="top">
                                <td width="40%">
                                    <br/>
                                    <hr/>
                                    <table align="center" border="0" width="100%">
                                        <tbody>
                                            <tr align="left">
                                                <xsl:for-each select="n1:Invoice/cac:AccountingSupplierParty/cac:Party">
                                                    <td align="left">
                                                    <xsl:if test="cac:PartyName">
                                                    <xsl:value-of select="cac:PartyName/cbc:Name"/>
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
                                            <xsl:if
                                                test="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:Contact/cbc:Telephone or //n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:Contact/cbc:Telefax">
                                                <tr align="left">
                                                    <xsl:for-each select="n1:Invoice/cac:AccountingSupplierParty/cac:Party">                                                        
                                                        <td align="left">
                                                        <xsl:for-each select="cac:Contact">
                                                        <xsl:if test="cbc:Telephone">
                                                        <xsl:text>Tel: </xsl:text>
                                                        <xsl:for-each select="cbc:Telephone">
                                                        <xsl:apply-templates/>
                                                        </xsl:for-each>
                                                        </xsl:if>
                                                        <xsl:if test="cbc:Telefax">
                                                        <xsl:text> Fax: </xsl:text>
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
                                            <xsl:for-each
                                                select="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cbc:WebsiteURI">
                                                <tr align="left">
                                                <td>
                                                <xsl:text>Web Sitesi: </xsl:text>
                                                <xsl:value-of select="."/>
                                                </td>
                                                </tr>
                                            </xsl:for-each>
                                            <xsl:for-each
                                                select="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:Contact/cbc:ElectronicMail">
                                                <tr align="left">
                                                <td>
                                                <xsl:text>E-Posta: </xsl:text>
                                                <xsl:value-of select="."/>
                                                </td>
                                                </tr>
                                            </xsl:for-each>
                                            <tr align="left">
                                                <xsl:for-each select="n1:Invoice/cac:AccountingSupplierParty/cac:Party">                                                                                                            
                                                    <td align="left">
                                                    <xsl:text>Vergi Dairesi: </xsl:text>
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
                                            <xsl:for-each
                                                select="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:PartyIdentification">
                                                <tr align="left">
                                                <td>
                                                <xsl:value-of select="cbc:ID/@schemeID"/>
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
                                    <img style="width:91px;" align="middle" alt="E-Fatura Logo"
                                        src="data:image/jpeg;base64,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"/>

                                    <h1 align="center">
                                        <span style="font-weight:bold; ">
                                            <xsl:text>e-ARŞİV</xsl:text>
                                            
                                            
                                            
                                        </span>
                                    </h1>
                                    
                                     <img alt="E-fatura Logo" src="data:image/Png;base64,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" />
                                    
                                    
                                </td>
              
              
                                <td width="40%" style="text-align:right; vertical-align:bottom">
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
            <div style="height:auto;"></div>
            <!-- QR Kod alanı burada bitiyor -->  
                                  
                                  
                                  <br/><br/>
                                
                                 
                                   <img alt="E-fatura Logo" src="data:image/Png;base64,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" />

                                 
                                 
                                 
                                 
                                  </td>

              
              
              
              
                            
                            </tr>
                            <tr style="height:118px; " valign="top">
                                <td width="40%" align="right" valign="bottom">
                                    <table id="customerPartyTable" align="left" border="0">
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
                                    <br/>
                                </td>
                                
                                
                                
                                <td width="40%" align="center" valign="bottom" colspan="2">
                                    <table border="1" id="despatchTable">
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
                                                    <xsl:for-each select="n1:Invoice/cbc:IssueTime">
                                                        <xsl:apply-templates select="."/>
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
                                            <xsl:if test="//n1:Invoice/cac:OrderReference/cbc:IssueDate">
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
                        <xsl:if
                                                  
                                             test="//n1:Invoice/cac:PaymentMeans/cbc:PaymentDueDate">
                            <tr style="height:13px">
                                <td align="left">
                                    <span style="font-weight:bold; ">
                                        <xsl:text>Vade Tarihi:</xsl:text>
                                    </span>
                                </td>
                                <td align="left">
                                    <xsl:for-each
                                    select="n1:Invoice/cac:PaymentMeans">
                                        <xsl:for-each select="cbc:PaymentDueDate">
                                            <xsl:value-of select="substring(.,9,2)"
                                                />-<xsl:value-of select="substring(.,6,2)"
                                                />-<xsl:value-of select="substring(.,1,4)"/>
                                        </xsl:for-each>
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
                                <td align="left" valign="top" id="ettnTable">
                                    <span style="font-weight:bold; ">
                                        <xsl:text>ETTN:&#160;</xsl:text>
                                    </span>
                                    <xsl:for-each select="n1:Invoice/cbc:UUID">
                                        <xsl:apply-templates/>
                                    </xsl:for-each>
                                </td>
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
                <td id="lineTableTd" style="width:3%">
                  <span style="font-weight:bold; " align="center">
                    <xsl:text>Sıra No</xsl:text>
                  </span>
                </td>
                <td id="lineTableTd" style="width:10%" align="center">
                  <span style="font-weight:bold; ">
                    <xsl:text>Ürün Kodu</xsl:text>
                  </span>
                </td>
                  
                  <td id="lineTableTd" style="width:20%" align="center">
                                    <span style="font-weight:bold; ">
                                        <xsl:text>Mal Hizmet Adı</xsl:text>
                                    </span>
                                </td>
                                <td class="lineTableTd" style="width:7.4%" align="center">
                                    <span style="font-weight:bold;">
                                        <xsl:text>Açıklama</xsl:text>
                                    </span>
                                </td>
  
               
                                <td class="lineTableTd" style="width:7.4%" align="center">
                                    <span style="font-weight:bold;">
                                        <xsl:text>Miktar</xsl:text>
                                    </span>
                                </td>
                                <td class="lineTableTd" style="width:9%" align="center">
                                    <span style="font-weight:bold;">
                                        <xsl:text>Birim Fiyat</xsl:text>
                                    </span>
                               
                               
                                </td>
                                <td class="lineTableTd" style="width:7%" align="center">
                                    <span style="font-weight:bold;">
                                        <xsl:text>KDV Oranı</xsl:text>
                                    </span>
                                </td>
                                <td class="lineTableTd" style="width:10%" align="center">
                                    <span style="font-weight:bold;">
                                        <xsl:text>KDV Tutarı</xsl:text>
                                    </span>
                               
                                </td>
                                <td class="lineTableTd" style="width:10.6%" align="center">
                                    <span style="font-weight:bold;">
                                        <xsl:text>Mal Hizmet Tutarı</xsl:text>
                                    </span>
                                </td>
                                <xsl:if test="//n1:Invoice/cbc:ProfileID='IHRACAT'">
                                    <td class="lineTableTd" style="width:10.6%" align="center">
                                        <span style="font-weight:bold;">
                                            <xsl:text>Teslim Şartı</xsl:text>
                                        </span>
                                    </td>                                   
                                    <!-- <td class="lineTableTd" style="width:10.6%" align="center"> -->
                                        <!-- <span style="font-weight:bold;"> -->
                                            <!-- <xsl:text>Eşya Kap Cinsi</xsl:text> -->
                                        <!-- </span> -->
                                    <!-- </td>                                    -->
                                    <!-- <td class="lineTableTd" style="width:10.6%" align="center"> -->
                                        <!-- <span style="font-weight:bold;"> -->
                                            <!-- <xsl:text>Kap No</xsl:text> -->
                                        <!-- </span> -->
                                    <!-- </td>                                    -->
                                    <!-- <td class="lineTableTd" style="width:10.6%" align="center"> -->
                                        <!-- <span style="font-weight:bold;"> -->
                                            <!-- <xsl:text>Kap Adet</xsl:text> -->
                                        <!-- </span> -->
                                    <!-- </td>                                    -->
                                    <!-- <td class="lineTableTd" style="width:10.6%" align="center"> -->
                                        <!-- <span style="font-weight:bold;"> -->
                                            <!-- <xsl:text>Teslim/Bedel Ödeme Yeri</xsl:text> -->
                                        <!-- </span> -->
                                    <!-- </td>                                    -->
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
                                        <xsl:apply-templates
                                            select="//n1:Invoice/cac:InvoiceLine[1]"/>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:apply-templates select="//n1:Invoice"/>
                                    </xsl:otherwise>
                                </xsl:choose>
                                <xsl:choose>
                                    <xsl:when test="//n1:Invoice/cac:InvoiceLine[2]">
                                        <xsl:apply-templates
                                            select="//n1:Invoice/cac:InvoiceLine[2]"/>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:apply-templates select="//n1:Invoice"/>
                                    </xsl:otherwise>
                                </xsl:choose>
                                <xsl:choose>
                                    <xsl:when test="//n1:Invoice/cac:InvoiceLine[3]">
                                        <xsl:apply-templates
                                            select="//n1:Invoice/cac:InvoiceLine[3]"/>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:apply-templates select="//n1:Invoice"/>
                                    </xsl:otherwise>
                                </xsl:choose>
                                <xsl:choose>
                                    <xsl:when test="//n1:Invoice/cac:InvoiceLine[4]">
                                        <xsl:apply-templates
                                            select="//n1:Invoice/cac:InvoiceLine[4]"/>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:apply-templates select="//n1:Invoice"/>
                                    </xsl:otherwise>
                                </xsl:choose>
                                <xsl:choose>
                                    <xsl:when test="//n1:Invoice/cac:InvoiceLine[5]">
                                        <xsl:apply-templates
                                            select="//n1:Invoice/cac:InvoiceLine[5]"/>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:apply-templates select="//n1:Invoice"/>
                                    </xsl:otherwise>
                                </xsl:choose>
                                <xsl:choose>
                                    <xsl:when test="//n1:Invoice/cac:InvoiceLine[6]">
                                        <xsl:apply-templates
                                            select="//n1:Invoice/cac:InvoiceLine[6]"/>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:apply-templates select="//n1:Invoice"/>
                                    </xsl:otherwise>
                                </xsl:choose>
                                <xsl:choose>
                                    <xsl:when test="//n1:Invoice/cac:InvoiceLine[7]">
                                        <xsl:apply-templates
                                            select="//n1:Invoice/cac:InvoiceLine[7]"/>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:apply-templates select="//n1:Invoice"/>
                                    </xsl:otherwise>
                                </xsl:choose>
                                <xsl:choose>
                                    <xsl:when test="//n1:Invoice/cac:InvoiceLine[8]">
                                        <xsl:apply-templates
                                            select="//n1:Invoice/cac:InvoiceLine[8]"/>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:apply-templates select="//n1:Invoice"/>
                                    </xsl:otherwise>
                                </xsl:choose>
                                <xsl:choose>
                                    <xsl:when test="//n1:Invoice/cac:InvoiceLine[9]">
                                        <xsl:apply-templates
                                            select="//n1:Invoice/cac:InvoiceLine[9]"/>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:apply-templates select="//n1:Invoice"/>
                                    </xsl:otherwise>
                                </xsl:choose>
                                <xsl:choose>
                                    <xsl:when test="//n1:Invoice/cac:InvoiceLine[10]">
                                        <xsl:apply-templates
                                            select="//n1:Invoice/cac:InvoiceLine[10]"/>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:apply-templates select="//n1:Invoice"/>
                                    </xsl:otherwise>
                                </xsl:choose>
                                <xsl:choose>
                                    <xsl:when test="//n1:Invoice/cac:InvoiceLine[11]">
                                        <xsl:apply-templates
                                            select="//n1:Invoice/cac:InvoiceLine[11]"/>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:apply-templates select="//n1:Invoice"/>
                                    </xsl:otherwise>
                                </xsl:choose>
                                <xsl:choose>
                                    <xsl:when test="//n1:Invoice/cac:InvoiceLine[12]">
                                        <xsl:apply-templates
                                            select="//n1:Invoice/cac:InvoiceLine[12]"/>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:apply-templates select="//n1:Invoice"/>
                                    </xsl:otherwise>
                                </xsl:choose>
                                <xsl:choose>
                                    <xsl:when test="//n1:Invoice/cac:InvoiceLine[13]">
                                        <xsl:apply-templates
                                            select="//n1:Invoice/cac:InvoiceLine[13]"/>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:apply-templates select="//n1:Invoice"/>
                                    </xsl:otherwise>
                                </xsl:choose>
                                <xsl:choose>
                                    <xsl:when test="//n1:Invoice/cac:InvoiceLine[14]">
                                        <xsl:apply-templates
                                            select="//n1:Invoice/cac:InvoiceLine[14]"/>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:apply-templates select="//n1:Invoice"/>
                                    </xsl:otherwise>
                                </xsl:choose>
                                <xsl:choose>
                                    <xsl:when test="//n1:Invoice/cac:InvoiceLine[15]">
                                        <xsl:apply-templates
                                            select="//n1:Invoice/cac:InvoiceLine[15]"/>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:apply-templates select="//n1:Invoice"/>
                                    </xsl:otherwise>
                                </xsl:choose>
                                <xsl:choose>
                                    <xsl:when test="//n1:Invoice/cac:InvoiceLine[16]">
                                        <xsl:apply-templates
                                            select="//n1:Invoice/cac:InvoiceLine[16]"/>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:apply-templates select="//n1:Invoice"/>
                                    </xsl:otherwise>
                                </xsl:choose>
                                <xsl:choose>
                                    <xsl:when test="//n1:Invoice/cac:InvoiceLine[17]">
                                        <xsl:apply-templates
                                            select="//n1:Invoice/cac:InvoiceLine[17]"/>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:apply-templates select="//n1:Invoice"/>
                                    </xsl:otherwise>
                                </xsl:choose>
                                <xsl:choose>
                                    <xsl:when test="//n1:Invoice/cac:InvoiceLine[18]">
                                        <xsl:apply-templates
                                            select="//n1:Invoice/cac:InvoiceLine[18]"/>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:apply-templates select="//n1:Invoice"/>
                                    </xsl:otherwise>
                                </xsl:choose>
                                <xsl:choose>
                                    <xsl:when test="//n1:Invoice/cac:InvoiceLine[19]">
                                        <xsl:apply-templates
                                            select="//n1:Invoice/cac:InvoiceLine[19]"/>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:apply-templates select="//n1:Invoice"/>
                                    </xsl:otherwise>
                                </xsl:choose>
                                <xsl:choose>
                                    <xsl:when test="//n1:Invoice/cac:InvoiceLine[20]">
                                        <xsl:apply-templates
                                            select="//n1:Invoice/cac:InvoiceLine[20]"/>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:apply-templates select="//n1:Invoice"/>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </xsl:if>
                        </tbody>
                    </table>
                </xsl:for-each>
                <table id="budgetContainerTable" width="800px">
                    <tr align="right">
                        <td/>
                        <td class="lineTableBudgetTd" align="right" width="200px">
                            <span style="font-weight:bold; ">
                                <xsl:text>Mal Hizmet Toplam Tutarı</xsl:text>
                            </span>
                        </td>
                        <td class="lineTableBudgetTd" style="width:81px; " align="right">
                            <xsl:for-each select="n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount">
                                <xsl:call-template name="Curr_Type"/>
                            </xsl:for-each>
                        </td>
                    </tr>
                    <xsl:for-each select="n1:Invoice/cac:TaxTotal/cac:TaxSubtotal">
                        <xsl:if test="cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode = '4171'">
                            <tr align="right">
                                <td/>
                                <td class="lineTableBudgetTd" align="right" width="200px">
                                    <span style="font-weight:bold; ">
                                        <xsl:text>Teslim Bedeli</xsl:text>
                                    </span>
                                </td>
                                <td class="lineTableBudgetTd" style="width:81px; " align="right">
                                    <xsl:for-each select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount">
                                        <xsl:call-template name="Curr_Type"/>
                                    </xsl:for-each>
                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <tr align="right">
                        <td/>
                        <td class="lineTableBudgetTd" align="right" width="200px">
                            <span style="font-weight:bold; ">
                                <xsl:text>Toplam İskonto</xsl:text>
                            </span>
                        </td>
                        <td class="lineTableBudgetTd" style="width:81px; " align="right">
                            <xsl:for-each select="n1:Invoice/cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount">
                                <xsl:call-template name="Curr_Type"/>
                            </xsl:for-each>
                        </td>
                    </tr>
          <tr align="right">
            <td/>
            <td class="lineTableBudgetTd" align="right" width="200px">
              <span style="font-weight:bold; ">
                <xsl:text>Toplam Masraf</xsl:text>
              </span>
            </td>
            <td class="lineTableBudgetTd" style="width:81px; " align="right">
              <xsl:for-each select="n1:Invoice/cac:LegalMonetaryTotal/cbc:ChargeTotalAmount">
                <xsl:call-template name="Curr_Type"/>
              </xsl:for-each>
            </td>
          </tr>
                    <xsl:for-each select="n1:Invoice/cac:TaxTotal/cac:TaxSubtotal">
                        <tr align="right">
                            <td/>
                            <td class="lineTableBudgetTd" width="211px" align="right">
                                <span style="font-weight:bold; ">
                                    <xsl:text>Hesaplanan </xsl:text>
                                    <xsl:value-of select="cac:TaxCategory/cac:TaxScheme/cbc:Name"/>
                                    <xsl:if test="../../cbc:InvoiceTypeCode!='OZELMATRAH'">
                                        <xsl:text>(%</xsl:text>
                                        <xsl:value-of select="cbc:Percent"/>
                                        <xsl:text>)</xsl:text>
                                    </xsl:if>
                                </span>
                            </td>
                            <td class="lineTableBudgetTd" style="width:82px; " align="right">
                                <xsl:if test="../../cbc:InvoiceTypeCode='OZELMATRAH'">
                                    <xsl:text> </xsl:text>
                                    <xsl:text>DAHİLDİR</xsl:text>
                                </xsl:if>
                                <xsl:if test="../../cbc:InvoiceTypeCode!='OZELMATRAH'">
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
                                </xsl:if>
                            </td>
                        </tr>
                    </xsl:for-each>
                    <xsl:for-each select="n1:Invoice/cac:TaxTotal/cac:TaxSubtotal">
                        <xsl:if test="cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode = '4171'">
                            <tr align="right">
                                <td/>
                                <td class="lineTableBudgetTd" align="right" width="200px">
                                    <span style="font-weight:bold; ">
                                        <xsl:text>KDV Matrahı</xsl:text>
                                    </span>
                                </td>
                                <td class="lineTableBudgetTd" style="width:81px; " align="right">
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
                            <tr align="right">
                                <td/>
                                <td class="lineTableBudgetTd" align="right" width="200px">
                                    <span style="font-weight:bold; ">
                                        <xsl:text>Tevkifat Dahil Toplam Tutar</xsl:text>
                                    </span>
                                </td>
                                <td class="lineTableBudgetTd" style="width:81px; " align="right">
                                    <xsl:for-each select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount">
                                        <xsl:call-template name="Curr_Type"/>
                                    </xsl:for-each>
                                </td>
                            </tr>
                            <tr align="right">
                                <td/>
                                <td class="lineTableBudgetTd" align="right" width="200px">
                                    <span style="font-weight:bold; ">
                                        <xsl:text>Tevkifat Hariç Toplam Tutar</xsl:text>
                                    </span>
                                </td>
                                <td class="lineTableBudgetTd" style="width:81px; " align="right">
                                    <xsl:for-each select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:PayableAmount">
                                        <xsl:call-template name="Curr_Type"/>
                                    </xsl:for-each>
                                </td>
                            </tr>
                        </xsl:if>                       
                    </xsl:for-each>
                    <xsl:for-each select="n1:Invoice/cac:WithholdingTaxTotal/cac:TaxSubtotal">
                        <tr align="right">
                            <td/>
                            <td class="lineTableBudgetTd" width="211px" align="right">
                                <span style="font-weight:bold; ">
                                    <xsl:text>Hesaplanan KDV Tevkifat</xsl:text>
                                    <xsl:text>(%</xsl:text>
                                    <xsl:value-of select="cbc:Percent"/>
                                    <xsl:text>)</xsl:text>
                                </span>
                            </td>
                            <td class="lineTableBudgetTd" style="width:82px; " align="right">
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
                        <tr align="right">
                            <td/>
                            <td class="lineTableBudgetTd" width="211px" align="right">
                                <span style="font-weight:bold; ">
                                    <xsl:text>Tevkifata Tabi İşlem Tutarı</xsl:text>
                                </span>
                            </td>
                            <td class="lineTableBudgetTd" style="width:82px; " align="right">
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
                        <tr align="right">
                            <td/>
                            <td class="lineTableBudgetTd" width="211px" align="right">
                                <span style="font-weight:bold; ">
                                    <xsl:text>Tevkifata Tabi İşlem Üzerinden Hes. KDV</xsl:text>
                                </span>
                            </td>
                            <td class="lineTableBudgetTd" style="width:82px; " align="right">
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
                        <tr align="right">
                            <td/>
                            <td class="lineTableBudgetTd" width="211px" align="right">
                                <span style="font-weight:bold; ">
                                    <xsl:text>Tevkifata Tabi İşlem Tutarı</xsl:text>
                                </span>
                            </td>
                            <td class="lineTableBudgetTd" style="width:82px; " align="right">
                                <xsl:if test = "n1:Invoice/cac:InvoiceLine[cac:WithholdingTaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme]">
                                    <xsl:value-of
                                        select="format-number(sum(n1:Invoice/cac:InvoiceLine[cac:WithholdingTaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme]/cbc:LineExtensionAmount), '###.##0,00', 'european')"/>
                                </xsl:if>
                                <xsl:if test = "//n1:Invoice/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode=&apos;9015&apos;">
                                    <xsl:value-of
                                        select="format-number(sum(n1:Invoice/cac:InvoiceLine[cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode=9015]/cbc:LineExtensionAmount), '###.##0,00', 'european')"/>
                                </xsl:if>                               
                                <xsl:if test="n1:Invoice/cbc:DocumentCurrencyCode = 'TRL' or n1:Invoice/cbc:DocumentCurrencyCode = 'TRY'">
                                    <xsl:text>TL</xsl:text>
                                </xsl:if>
                                <xsl:if test="n1:Invoice/cbc:DocumentCurrencyCode != 'TRL' and n1:Invoice/cbc:DocumentCurrencyCode != 'TRY'">
                                    <xsl:value-of select="n1:Invoice/cbc:DocumentCurrencyCode"/>
                                </xsl:if>
                            </td>
                        </tr>
                        <tr align="right">
                            <td/>
                            <td class="lineTableBudgetTd" width="211px" align="right">
                                <span style="font-weight:bold; ">
                                    <xsl:text>Tevkifata Tabi İşlem Üzerinden Hes. KDV</xsl:text>
                                </span>
                            </td>
                            <td class="lineTableBudgetTd" style="width:82px; " align="right">
                                <xsl:if test = "n1:Invoice/cac:InvoiceLine[cac:WithholdingTaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme]">
                                    <xsl:value-of
                                        select="format-number(sum(n1:Invoice/cac:WithholdingTaxTotal/cac:TaxSubtotal[cac:TaxCategory/cac:TaxScheme]/cbc:TaxableAmount), '###.##0,00', 'european')"/>
                                </xsl:if>
                                <xsl:if test = "//n1:Invoice/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode=&apos;9015&apos;">
                                    <xsl:value-of
                                        select="format-number(sum(n1:Invoice/cac:TaxTotal/cac:TaxSubtotal[cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode=9015]/cbc:TaxableAmount), '###.##0,00', 'european')"/>
                                </xsl:if>
                                <xsl:if test="n1:Invoice/cbc:DocumentCurrencyCode = 'TRL' or n1:Invoice/cbc:DocumentCurrencyCode = 'TRY'">
                                    <xsl:text>TL</xsl:text>
                                </xsl:if>
                                <xsl:if test="n1:Invoice/cbc:DocumentCurrencyCode != 'TRL' and n1:Invoice/cbc:DocumentCurrencyCode != 'TRY'">
                                    <xsl:value-of select="n1:Invoice/cbc:DocumentCurrencyCode"/>
                                </xsl:if>
                            </td>
                        </tr>
                    </xsl:if>
                    <tr align="right">
                        <td/>
                        <td class="lineTableBudgetTd" width="200px" align="right">
                            <span style="font-weight:bold; ">
                                <xsl:text>Vergiler Dahil Toplam Tutar</xsl:text>
                            </span>
                        </td>
                        <td class="lineTableBudgetTd" style="width:82px; " align="right">
                            <xsl:for-each select="n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount">
                                <xsl:call-template name="Curr_Type"/>
                            </xsl:for-each>
                        </td>
                    </tr>
                    <tr align="right">
                        <td/>
                        <td class="lineTableBudgetTd" width="200px" align="right">
                            <span style="font-weight:bold; ">
                                <xsl:text>Ödenecek Tutar</xsl:text>
                            </span>
                        </td>
                        <td class="lineTableBudgetTd" style="width:82px; " align="right">
                            <xsl:for-each select="n1:Invoice/cac:LegalMonetaryTotal/cbc:PayableAmount">
                                <xsl:call-template name="Curr_Type"/>
                            </xsl:for-each>
                        </td>
                    </tr>
                    <xsl:for-each select="n1:Invoice/cac:TaxTotal/cac:TaxSubtotal">
                        <xsl:if test="//n1:Invoice/cbc:DocumentCurrencyCode != 'TRY' and //n1:Invoice/cbc:DocumentCurrencyCode != 'TRL'">
                            <tr align="right">
                                <td/>
                                <td class="lineTableBudgetTd" align="right" width="200px">
                                    <span style="font-weight:bold; ">
                                        <xsl:text>Hesaplanan </xsl:text>
                                        <xsl:value-of select="cac:TaxCategory/cac:TaxScheme/cbc:Name"/>
                                        <xsl:text>(%</xsl:text>
                                        <xsl:value-of select="cbc:Percent"/>
                                        <xsl:text>) (TL)</xsl:text>
                                    </span>
                                </td>
                                <td class="lineTableBudgetTd" style="width:81px; " align="right">
                                    <span>
                                        <xsl:value-of
                                            select="format-number(cbc:TaxAmount * //n1:Invoice/cac:PricingExchangeRate/cbc:CalculationRate, '###.##0,00', 'european')"/>
                                        <xsl:text> TL</xsl:text>
                                    </span>
                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>                 
                    <xsl:if
                        test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount/@currencyID != 'TRL' and //n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount/@currencyID != 'TRY'">
                        <tr align="right">
                            <td/>
                            <td class="lineTableBudgetTd" align="right" width="200px">
                                <span style="font-weight:bold; ">
                                    <xsl:text>Mal Hizmet Toplam Tutarı(TL)</xsl:text>
                                </span>
                            </td>
                            <td class="lineTableBudgetTd" style="width:81px; " align="right">
                                <xsl:value-of
                                    select="format-number(//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount * //n1:Invoice/cac:PricingExchangeRate/cbc:CalculationRate, '###.##0,00', 'european')"/>
                                <xsl:text> TL</xsl:text>
                            </td>
                        </tr>
                        <tr align="right">
                            <td/>
                            <td class="lineTableBudgetTd" width="200px" align="right">
                                <span style="font-weight:bold; ">
                                    <xsl:text>Vergiler Dahil Toplam Tutar(TL)</xsl:text>
                                </span>
                            </td>
                            <td class="lineTableBudgetTd" style="width:82px; " align="right">
                                <xsl:value-of
                                    select="format-number(//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount * //n1:Invoice/cac:PricingExchangeRate/cbc:CalculationRate, '###.##0,00', 'european')"/>
                                <xsl:text> TL</xsl:text>
                            </td>
                        </tr>
                        <tr align="right">
                            <td/>
                            <td class="lineTableBudgetTd" width="200px" align="right">
                                <span style="font-weight:bold; ">
                                    <xsl:text>Ödenecek Tutar(TL)</xsl:text>
                                </span>
                            </td>
                            <td class="lineTableBudgetTd" style="width:82px; " align="right">
                                <xsl:value-of
                                    select="format-number(//n1:Invoice/cac:LegalMonetaryTotal/cbc:PayableAmount * //n1:Invoice/cac:PricingExchangeRate/cbc:CalculationRate, '###.##0,00', 'european')"/>
                                <xsl:text> TL</xsl:text>
                            </td>
                        </tr>
                    </xsl:if>
                </table>
                <br/>
                <xsl:if test="//n1:Invoice/cac:BillingReference/cac:InvoiceDocumentReference/cbc:DocumentTypeCode[text()='İADE' or text()='IADE']">
                    <table id="lineTable" width="800">
                        <thead>
                            <tr>
                                <td align="left"><span style="font-weight:bold; " align="center">&#160;&#160;&#160;&#160;&#160;İadeye Konu Olan Faturalar</span></td>                           
                            </tr>
                        </thead>                    
                        <tbody>
                            <tr align="left" class="lineTableTr">                           
                                <td class="lineTableTd">
                                    <span style="font-weight:bold; " align="center">&#160;&#160;&#160;&#160;&#160;Fatura No</span>
                                </td>
                                <td class="lineTableTd"><span style="font-weight:bold; " align="center">&#160;&#160;&#160;&#160;&#160;Tarih</span></td>
                            </tr>
                            <xsl:for-each select="//n1:Invoice/cac:BillingReference/cac:InvoiceDocumentReference/cbc:DocumentTypeCode[text()='İADE' or text()='IADE']">
                                <tr align="left" class="lineTableTr">
                                    <td class="lineTableTd">&#160;&#160;&#160;&#160;&#160;
                                        <xsl:value-of select="../cbc:ID"/> 
                                    </td>
                                    <td class="lineTableTd">&#160;&#160;&#160;&#160;&#160;
                                        <xsl:for-each select="../cbc:IssueDate">
                                            <xsl:apply-templates select="."/>
                                        </xsl:for-each> 
                                    </td>
                                </tr>
                            </xsl:for-each>
                        </tbody>
                    </table>
                </xsl:if>
                <br/>
                <xsl:if test="//n1:Invoice/cac:BillingReference/cac:AdditionalDocumentReference/cbc:DocumentTypeCode='OKCBF'">
                    <table border="1" id="lineTable" width="800">
                        <thead>
                            <tr>
                                <th colspan="6">ÖKC Bilgileri</th>
                            </tr>
                        </thead>                            
                        <tbody>
                            <tr id="okcbfHeadTr" style="font-weight:bold;">
                                <td style="width:20%">
                                    <xsl:text>Fiş Numarası</xsl:text>
                                </td>
                                <td style="width:10%" align="center">
                                    <xsl:text>Fiş Tarihi</xsl:text>
                                </td>
                                <td style="width:10%" align="center">
                                    <xsl:text>Fiş Saati</xsl:text>
                                </td>
                                <td style="width:40%" align="center">
                                    <xsl:text>Fiş Tipi</xsl:text>
                                </td>
                                <td style="width:10%" align="center">
                                    <xsl:text>Z Rapor No</xsl:text>
                                </td>
                                <td style="width:10%" align="center">
                                    <xsl:text>ÖKC Seri No</xsl:text>
                                </td>
                            </tr>                       
                        </tbody>
                        <xsl:for-each select="//n1:Invoice/cac:BillingReference/cac:AdditionalDocumentReference/cbc:DocumentTypeCode[text()='OKCBF']">
                            <tr>
                                <td style="width:20%">
                                    <xsl:value-of select="../cbc:ID"/>
                                </td>
                                <td style="width:10%" align="center">
                                    <xsl:value-of select="../cbc:IssueDate"/>
                                </td>
                                <td style="width:10%" align="center">
                                    <xsl:value-of select="substring(../cac:ValidityPeriod/cbc:StartTime,1,5)"/>
                                </td>
                                <td style="width:40%" align="center">
                                    <xsl:choose>
                                        <xsl:when test="../cbc:DocumentDescription='AVANS'">
                                            <xsl:text>Ön Tahsilat(Avans) Bilgi Fişi</xsl:text>
                                        </xsl:when>
                                        <xsl:when test="../cbc:DocumentDescription='YEMEK_FIS'">
                                            <xsl:text>Yemek Fişi/Kartı ile Yapılan Tahsilat Bilgi Fişi</xsl:text>
                                        </xsl:when>
                                        <xsl:when test="../cbc:DocumentDescription='E-FATURA'">
                                            <xsl:text>E-Fatura Bilgi Fişi</xsl:text>
                                        </xsl:when>
                                        <xsl:when test="../cbc:DocumentDescription='E-FATURA_IRSALIYE'">
                                            <xsl:text>İrsaliye Yerine Geçen E-Fatura Bilgi Fişi</xsl:text>
                                        </xsl:when>
                                        <xsl:when test="../cbc:DocumentDescription='E-ARSIV'">
                                            <xsl:text>E-Arşiv Bilgi Fişi</xsl:text>
                                        </xsl:when>
                                        <xsl:when test="../cbc:DocumentDescription='E-ARSIV_IRSALIYE'">
                                            <xsl:text>İrsaliye Yerine Geçen E-Arşiv Bilgi Fişi</xsl:text>
                                        </xsl:when>
                                        <xsl:when test="../cbc:DocumentDescription='FATURA'">
                                            <xsl:text>Faturalı Satış Bilgi Fişi</xsl:text>
                                        </xsl:when>
                                        <xsl:when test="../cbc:DocumentDescription='OTOPARK'">
                                            <xsl:text>Otopark Giriş Bilgi Fişi</xsl:text>
                                        </xsl:when>
                                        <xsl:when test="../cbc:DocumentDescription='FATURA_TAHSILAT'">
                                            <xsl:text>Fatura Tahsilat Bilgi Fişi</xsl:text>
                                        </xsl:when>
                                        <xsl:when test="../cbc:DocumentDescription='FATURA_TAHSILAT_KOMISYONLU'">
                                            <xsl:text>Komisyonlu Fatura Tahsilat Bilgi Fişi</xsl:text>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:text> </xsl:text>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </td>
                                <td style="width:10%" align="center">
                                    <xsl:value-of select="../cac:Attachment/cac:ExternalReference/cbc:URI"/>
                                </td>
                                <td style="width:10%" align="center">
                                    <xsl:value-of select="../cac:IssuerParty/cbc:EndpointID"/>
                                </td>
                            </tr>                                                   
                        </xsl:for-each>
                    </table>
                    <br/>
                </xsl:if>               
                <table id="notesTable" width="800" align="left">
                    <tbody>
                        <tr align="left">
                            <td id="notesTableTd" height="100">
                <xsl:if test="//n1:Invoice/cbc:InvoiceTypeCode != 'IHRACKAYITLI'">
                  <xsl:for-each select="//n1:Invoice/cac:TaxTotal/cac:TaxSubtotal">
                    <xsl:if test="(cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode='0015' or ../../cbc:InvoiceTypeCode='OZELMATRAH') and cac:TaxCategory/cbc:TaxExemptionReason">
                      <b>&#160;&#160;&#160;&#160;&#160; Vergi İstisna Muafiyet Sebebi: </b>
                      <xsl:value-of select="cac:TaxCategory/cbc:TaxExemptionReasonCode"/>
                      <xsl:text>-</xsl:text>
                      <xsl:value-of select="cac:TaxCategory/cbc:TaxExemptionReason"/>
                      <br/>
                    </xsl:if>
                    <xsl:if test="starts-with(cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode,'007') and cac:TaxCategory/cbc:TaxExemptionReason">
                      <b>&#160;&#160;&#160;&#160;&#160; ÖTV İstisna Muafiyet Sebebi: </b>
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
                <xsl:for-each select="//n1:Invoice/cac:WithholdingTaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme">
                                    <b>&#160;&#160;&#160;&#160;&#160; Tevkifat Sebebi: </b>
                                    <xsl:value-of select="cbc:TaxTypeCode"/>
                                    <xsl:text>-</xsl:text>
                                    <xsl:value-of select="cbc:Name"/>
                                    <br/>
                                </xsl:for-each>
                <xsl:if test="//n1:Invoice/cbc:Note">
                  <b>&#160;&#160;&#160;&#160;&#160;</b> 
                  <xsl:for-each select="//n1:Invoice/cbc:Note">
                        <xsl:if test="position() > 1">
                            <b>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;</b>
                 
                        </xsl:if>
                        <xsl:value-of select="."/>
                        <br/>
                    </xsl:for-each>


                    <!-- <xsl:value-of select="//n1:Invoice/cbc:Note"/> -->
                 
                              <br/>
                </xsl:if>
                                
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
                     <br/> ÖNEMLİ UYARI: Üretimimizde çok çeşitli ürünler imal edilmekte olup hammaddelerinde farklı iplik firmalarının ürünleri
olabileceği gibi her firmanın yıkama talimatları da farklılık gösterebilir. *Yıkama haslığı*Renk haslığı*Sürtünme
haslığı*İpliklerdeki yağ oranı*Mukavemet*Çekme oranları*Esneme ve diğer kriterler. Bu yüzden lütfen verdiğimiz ürünü test
ettirmeden kullanmayınız. Aksi takdirde firmamız sorumluluk kabul etmeyecektir.
             <br/>
                              
                                <xsl:if test="//n1:Invoice/cac:BuyerCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID='PARTYTYPE']='TAXFREE' and //n1:Invoice/cac:TaxRepresentativeParty/cac:PartyTaxScheme/cbc:ExemptionReasonCode">
                                    <br/>
                                    <b>&#160;&#160;&#160;&#160;&#160; VAT OFF - NO CASH REFUND </b>
                                </xsl:if>
   


                                </td>




</tr>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="//n1:Invoice/cac:InvoiceLine">
     
      <tr id="lineTableTr">
      <td id="lineTableTd">
        <xsl:text>&#160;</xsl:text>
        <xsl:value-of select="./cbc:ID"/>
      </td>
        
        <td id="lineTableTd">
        <xsl:text>&#160;</xsl:text>
        <xsl:value-of select="./cac:Item/cac:SellersItemIdentification/cbc:ID"/>
               <xsl:text>&#160;</xsl:text>
                    <xsl:value-of select="./cac:Item/cbc:BrandName"/>
                    <xsl:text>&#160;</xsl:text>
                   
                    <xsl:value-of select="./cac:Item/cbc:ModelName"/> 
                    <xsl:text>&#160;</xsl:text> 
                    <xsl:value-of select="./cac:Item/cbc:Description"/>
            
        </td>
        
      <td id="lineTableTd">
        <xsl:text>&#160;</xsl:text>
        <xsl:value-of select="./cac:Item/cbc:Name"/>
      </td>

        
       <td id="lineTableTd">
        <xsl:text>&#160;</xsl:text>
        <xsl:value-of select="./cbc:Note"/>
         </td>  
      
      
      
      
      
            <td class="lineTableTd" align="right">
                <xsl:text>&#160;</xsl:text>
                <xsl:value-of
                    select="format-number(./cbc:InvoicedQuantity, '###.###,####', 'european')"/>
                <xsl:if test="./cbc:InvoicedQuantity/@unitCode">
                    <xsl:for-each select="./cbc:InvoicedQuantity">
                        <xsl:text> </xsl:text>
                        <xsl:choose>
                            <xsl:when test="@unitCode  = 'TNE'">
                                <xsl:text>ton</xsl:text>
                            </xsl:when>
                            <xsl:when test="@unitCode  = 'BX'">
                                <xsl:text>Kutu</xsl:text>
                            </xsl:when>
                            <xsl:when test="@unitCode  = 'LTR'">
                                <xsl:text>lt</xsl:text>
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
            
               
            
          
            <td class="lineTableTd" align="right">
                <xsl:text>&#160;</xsl:text>
                <xsl:for-each select="cac:AllowanceCharge/cbc:Amount">
                    <xsl:call-template name="Curr_Type"/>
                </xsl:for-each>
            </td>
            <td class="lineTableTd" align="right">
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
           
            <td class="lineTableTd" style="font-size: xx-small" align="right">
                <xsl:text>&#160;</xsl:text>
                <xsl:for-each
                    select="./cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme">
                    <xsl:if test="cbc:TaxTypeCode!='0015' ">
                        <xsl:text> </xsl:text>
                        <xsl:value-of select="cbc:Name"/>
                        <xsl:if test="../../cbc:Percent">
                            <xsl:text> (%</xsl:text>
                            <xsl:value-of
                                select="format-number(../../cbc:Percent, '###.##0,00', 'european')"/>
                            <xsl:text>)=</xsl:text>
                        </xsl:if>                   
                        <xsl:for-each select="../../cbc:TaxAmount">
                            <xsl:call-template name="Curr_Type"/>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:for-each>
                <xsl:for-each
                    select="./cac:WithholdingTaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme">
                    <xsl:text>KDV TEVKİFAT </xsl:text>
                    <xsl:if test="../../cbc:Percent">
                        <xsl:text> (%</xsl:text>
                        <xsl:value-of
                            select="format-number(../../cbc:Percent, '###.##0,00', 'european')"/>
                        <xsl:text>)=</xsl:text>
                    </xsl:if>
                    <xsl:for-each select="../../cbc:TaxAmount">
                        <xsl:call-template name="Curr_Type"/>
                        <xsl:text>&#10;</xsl:text>
                    </xsl:for-each>
                </xsl:for-each>
            </td>
            <td class="lineTableTd" align="right">
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
                <!-- <td class="lineTableTd" align="right"> -->
                    <!-- <xsl:text>&#160;</xsl:text> -->
                    <!-- <xsl:for-each select="cac:Delivery/cac:Shipment/cac:TransportHandlingUnit/cac:ActualPackage/cbc:PackagingTypeCode"> -->
                        <!-- <xsl:text>&#160;</xsl:text> -->
                        <!-- <xsl:call-template name="Packaging"> -->
                            <!-- <xsl:with-param name="PackagingType"> -->
                                <!-- <xsl:value-of select="."/> -->
                            <!-- </xsl:with-param> -->
                        <!-- </xsl:call-template> -->
                    <!-- </xsl:for-each> -->
                <!-- </td> -->
                <!-- <td class="lineTableTd" align="right"> -->
                    <!-- <xsl:text>&#160;</xsl:text> -->
                    <!-- <xsl:for-each select="cac:Delivery/cac:Shipment/cac:TransportHandlingUnit/cac:ActualPackage/cbc:ID"> -->
                        <!-- <xsl:text>&#160;</xsl:text> -->
                        <!-- <xsl:apply-templates/> -->
                    <!-- </xsl:for-each> -->
                <!-- </td> -->
                <!-- <td class="lineTableTd" align="right"> -->
                    <!-- <xsl:text>&#160;</xsl:text> -->
                    <!-- <xsl:for-each select="cac:Delivery/cac:Shipment/cac:TransportHandlingUnit/cac:ActualPackage/cbc:Quantity"> -->
                        <!-- <xsl:text>&#160;</xsl:text> -->
                        <!-- <xsl:apply-templates/> -->
                    <!-- </xsl:for-each> -->
                <!-- </td> -->
                <!-- <td class="lineTableTd" align="right"> -->
                    <!-- <xsl:text>&#160;</xsl:text> -->
                    <!-- <xsl:for-each select="cac:Delivery/cac:DeliveryAddress"> -->
                        <!-- <xsl:text>&#160;</xsl:text> -->
                        <!-- <xsl:apply-templates/> -->
                    <!-- </xsl:for-each> -->
                <!-- </td> -->
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
        <tr class="lineTableTr">
            <td class="lineTableTd">
                <xsl:text>&#160;</xsl:text>
            </td>
            <td class="lineTableTd">
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
            <td class="lineTableTd" align="right">
                <xsl:text>&#160;</xsl:text>
            </td>
            <td class="lineTableTd" align="right">
                <xsl:text>&#160;</xsl:text>
            </td>
            <td class="lineTableTd" align="right">
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
                <xsl:value-of select="cac:PartyName/cbc:Name"/>
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
                    <xsl:text>&#160; </xsl:text>
                </xsl:for-each>
                <xsl:for-each select="cbc:FamilyName">
                    <xsl:apply-templates/>
                    <xsl:text>&#160;</xsl:text>
                </xsl:for-each>
                <xsl:for-each select="cbc:NameSuffix">
                    <xsl:apply-templates/>
                </xsl:for-each>
                <xsl:if test="$PartyType='TAXFREE'">
                    <br/>
                    <xsl:text>Pasaport No: </xsl:text>
                    <xsl:value-of select="cac:IdentityDocumentReference/cbc:ID"/>
                    <br/>
                    <xsl:text>Ülkesi: </xsl:text>
                    <xsl:for-each select="cbc:NationalityID">
                        <xsl:call-template name="Country">
                            <xsl:with-param name="CountryType"><xsl:value-of select="."/></xsl:with-param>
                        </xsl:call-template>
                    </xsl:for-each>
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
                    <xsl:text> No:</xsl:text>
                    <xsl:apply-templates/>
                    <xsl:text>&#160;</xsl:text>
                </xsl:for-each>
                <br/>
                <xsl:for-each select="cbc:Room">
                    <xsl:text>Kapı No:</xsl:text>
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
                <xsl:if test="$PartyType!='OTHER'">
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
                    <xsl:text>Web Sitesi: </xsl:text>
                    <xsl:value-of select="."/>
                </td>
            </tr>
        </xsl:for-each>
        <xsl:for-each select="cac:Contact/cbc:ElectronicMail">
            <tr align="left">
                <td>
                    <xsl:text>E-Posta: </xsl:text>
                    <xsl:value-of select="."/>
                </td>
            </tr>
        </xsl:for-each> 
        <xsl:for-each select="cac:Contact">
            <xsl:if test="cbc:Telephone or cbc:Telefax">
                <tr align="left">
                    <td style="width:469px; " align="left">
                        <xsl:for-each select="cbc:Telephone">
                            <xsl:text>Tel: </xsl:text>
                            <xsl:apply-templates/>
                        </xsl:for-each>
                        <xsl:for-each select="cbc:Telefax">
                            <xsl:text> Fax: </xsl:text>
                            <xsl:apply-templates/>
                        </xsl:for-each>
                        <xsl:text>&#160;</xsl:text>
                    </td>
                </tr>
            </xsl:if>
        </xsl:for-each>
        <xsl:if test="$PartyType!='TAXFREE' and $PartyType!='EXPORT'">
            <xsl:for-each select="cac:PartyTaxScheme/cac:TaxScheme/cbc:Name">
                <tr align="left">
                    <td>
                        <xsl:text>Vergi Dairesi: </xsl:text>
                        <xsl:apply-templates/>
                    </td>
                </tr>
            </xsl:for-each>
            <xsl:for-each select="cac:PartyIdentification">
            <tr align="left">
                <td>
                    <xsl:value-of select="cbc:ID/@schemeID"/>
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
