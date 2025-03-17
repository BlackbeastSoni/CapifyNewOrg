//Main Class : ABNAPI_V2
//Author     : Shubham Soni
@isTest
private class UtilityClassMRTest {

    @isTest
    static void test1_ParseXMLABN() {
        // Test case 1: Valid XML input
        string sampleXML='<?xml version="1.0" encoding="utf-8"?>'+
                    '<ABRPayloadSearchResults xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://abr.business.gov.au/ABRXMLSearch/">' +
                    '<request>'+
                    '<identifierSearchRequest>'+
                    '<authenticationGUID>371d82e2-2912-434c-a107-45152496383b</authenticationGUID>'+
                    '<identifierType>ABN</identifierType>'+
                    '<identifierValue>12004044937</identifierValue>'+
                    '<history>Y</history>'+
                    ' </identifierSearchRequest>'+
                    '</request>'+
                    '<response>'+
                    '<usageStatement>The Registrar of the ABR monitors the quality of the information available on this website and updates the information regularly. However, neither the Registrar of the ABR nor the Commonwealth guarantee that the information available through this service (including search results) is accurate, up to date, complete or accept any liability arising from the use of or reliance upon this site.</usageStatement>'+
                    '<dateRegisterLastUpdated>2023-11-23</dateRegisterLastUpdated>'+
                    '<dateTimeRetrieved>2023-11-23T20:58:38.6943636+11:00</dateTimeRetrieved>'+
                    '<businessEntity201408>'+
                    '<recordLastUpdatedDate>2023-04-02</recordLastUpdatedDate>'+
                    '<ABN>'+
                    '    <identifierValue>12004044937</identifierValue>'+
                    '    <isCurrentIndicator>Y</isCurrentIndicator>'+
                    '    <replacedFrom>0001-01-01</replacedFrom>'+
                    '</ABN>'+
                    '<entityStatus>'+
                    '    <entityStatusCode>Active</entityStatusCode>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>0001-01-01</effectiveTo>'+
                    '</entityStatus>'+
                    '<ASICNumber>004044937</ASICNumber>'+
                    '<entityType>'+
                    '    <entityTypeCode>PUB</entityTypeCode>'+
                    '    <entityDescription>Australian Public Company</entityDescription>'+
                    '</entityType>'+
                    '<goodsAndServicesTax>'+
                    '    <effectiveFrom>2000-07-01</effectiveFrom>'+
                    '    <effectiveTo>0001-01-01</effectiveTo>'+
                    '</goodsAndServicesTax>'+
                    '<organisationName>NATIONAL AUSTRALIA BANK LIMITED</organisationName>'+
                    '<mainName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '</mainName>'+
                    '<mainTradingName>'+
                    '    <organisationName>NATIONAL AUSTRALIA BANK</organisationName>'+
                    '    <effectiveFrom>2003-07-09</effectiveFrom>'+
                    '</mainTradingName>'+
                    '<mainTradingName>'+
                    '    <organisationName>National Australia Bank</organisationName>'+
                    '    <effectiveFrom>2003-07-07</effectiveFrom>'+
                    '    <effectiveTo>2003-07-09</effectiveTo>'+
                    '</mainTradingName>'+
                    '<otherTradingName>'+
                    '    <organisationName>NATIONAL AUSTRALIA BANK LIMITED - GLOBAL WEALTH MANAGEMENT</organisationName>'+
                    '    <effectiveFrom>2001-04-26</effectiveFrom>'+
                    '</otherTradingName>'+
                    '<otherTradingName>'+
                    '    <organisationName>NATIONAL AUSTRALIA BANK LTD SUPER FUND</organisationName>'+
                    '    <effectiveFrom>2000-06-02</effectiveFrom>'+
                    '</otherTradingName>'+
                    '<mainBusinessPhysicalAddress>'+
                    '    <stateCode>VIC</stateCode>'+
                    '    <postcode>3000</postcode>'+
                    '    <effectiveFrom>2021-10-06</effectiveFrom>'+
                    '    <effectiveTo>0001-01-01</effectiveTo>'+
                    '</mainBusinessPhysicalAddress>'+
                    '<mainBusinessPhysicalAddress>'+
                    '    <stateCode>VIC</stateCode>'+
                    '    <postcode>3008</postcode>'+
                    '    <effectiveFrom>2017-03-28</effectiveFrom>'+
                    '    <effectiveTo>2021-10-06</effectiveTo>'+
                    '</mainBusinessPhysicalAddress>'+
                    '<mainBusinessPhysicalAddress>'+
                    '    <stateCode>VIC</stateCode>'+
                    '    <postcode>3008</postcode>'+
                    '    <effectiveFrom>2015-08-10</effectiveFrom>'+
                    '    <effectiveTo>2017-03-28</effectiveTo>'+
                    '</mainBusinessPhysicalAddress>'+
                    '<mainBusinessPhysicalAddress>'+
                    '    <stateCode>VIC</stateCode>'+
                    '    <postcode>3008</postcode>'+
                    '    <effectiveFrom>2015-07-25</effectiveFrom>'+
                    '    <effectiveTo>2015-08-10</effectiveTo>'+
                    '</mainBusinessPhysicalAddress>'+
                    '<mainBusinessPhysicalAddress>'+
                    '    <stateCode>VIC</stateCode>'+
                    '    <postcode>3008</postcode>'+
                    '    <effectiveFrom>2015-06-10</effectiveFrom>'+
                    '    <effectiveTo>2015-07-25</effectiveTo>'+
                    '</mainBusinessPhysicalAddress>'+
                    '<mainBusinessPhysicalAddress>'+
                    '    <stateCode>VIC</stateCode>'+
                    '    <postcode>3008</postcode>'+
                    '    <effectiveFrom>2014-05-30</effectiveFrom>'+
                    '    <effectiveTo>2015-06-10</effectiveTo>'+
                    '</mainBusinessPhysicalAddress>'+
                    '<mainBusinessPhysicalAddress>'+
                    '    <stateCode>VIC</stateCode>'+
                    '    <postcode>3008</postcode>'+
                    '    <effectiveFrom>2012-11-22</effectiveFrom>'+
                    '    <effectiveTo>2014-05-30</effectiveTo>'+
                    '</mainBusinessPhysicalAddress>'+
                    '<mainBusinessPhysicalAddress>'+
                    '    <stateCode>VIC</stateCode>'+
                    '    <postcode>3008</postcode>'+
                    '    <effectiveFrom>2011-07-29</effectiveFrom>'+
                    '    <effectiveTo>2012-11-22</effectiveTo>'+
                    '</mainBusinessPhysicalAddress>'+
                    '<mainBusinessPhysicalAddress>'+
                    '    <stateCode>VIC</stateCode>'+
                    '    <postcode>3008</postcode>'+
                    '    <effectiveFrom>2009-06-05</effectiveFrom>'+
                    '    <effectiveTo>2011-07-29</effectiveTo>'+
                    '</mainBusinessPhysicalAddress>'+
                    '<mainBusinessPhysicalAddress>'+
                    '    <stateCode>VIC</stateCode>'+
                    '    <postcode>3000</postcode>'+
                    '    <effectiveFrom>2002-08-22</effectiveFrom>'+
                    '    <effectiveTo>2009-06-05</effectiveTo>'+
                    '</mainBusinessPhysicalAddress>'+
                    '<mainBusinessPhysicalAddress>'+
                    '    <stateCode>VIC</stateCode>'+
                    '    <postcode>3000</postcode>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2002-08-22</effectiveTo>'+
                    '</mainBusinessPhysicalAddress>'+
                    '<businessName>'+
                    '    <organisationName>Dhoengawan</organisationName>'+
                    '    <effectiveFrom>2022-04-28</effectiveFrom>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NAB BROKER</organisationName>'+
                    '    <effectiveFrom>2010-04-15</effectiveFrom>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NATIONAL AUSTRALIA BANK</organisationName>'+
                    '    <effectiveFrom>2009-12-04</effectiveFrom>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NAB ASSET SERVICING</organisationName>'+
                    '    <effectiveFrom>2009-07-01</effectiveFrom>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>BRUNSWICK COLLECTIONS SERVICES</organisationName>'+
                    '    <effectiveFrom>2009-06-25</effectiveFrom>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>UBANK</organisationName>'+
                    '    <effectiveFrom>2008-09-24</effectiveFrom>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE</organisationName>'+
                    '    <effectiveFrom>2000-03-20</effectiveFrom>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>Business Growth Fund Australia</organisationName>'+
                    '    <effectiveFrom>2020-03-12</effectiveFrom>'+
                    '    <effectiveTo>2023-04-02</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>Australian Business Growth Fund</organisationName>'+
                    '    <effectiveFrom>2020-03-12</effectiveFrom>'+
                    '    <effectiveTo>2020-11-13</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>ANCHORAGE HOME LOANS</organisationName>'+
                    '    <effectiveFrom>2016-06-13</effectiveFrom>'+
                    '    <effectiveTo>2019-08-12</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NAB DASH</organisationName>'+
                    '    <effectiveFrom>2016-05-02</effectiveFrom>'+
                    '    <effectiveTo>2019-09-12</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>Control Zine</organisationName>'+
                    '    <effectiveFrom>2015-06-17</effectiveFrom>'+
                    '    <effectiveTo>2016-11-03</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>FAIRHALSEN COLLECTIONS</organisationName>'+
                    '    <effectiveFrom>2013-08-08</effectiveFrom>'+
                    '    <effectiveTo>2017-01-12</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NAB SUPER PAY</organisationName>'+
                    '    <effectiveFrom>2013-07-10</effectiveFrom>'+
                    '    <effectiveTo>2021-03-15</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>MEDFIN FINANCE</organisationName>'+
                    '    <effectiveFrom>2011-07-21</effectiveFrom>'+
                    '    <effectiveTo>2012-02-13</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>MEDFIN</organisationName>'+
                    '    <effectiveFrom>2010-06-23</effectiveFrom>'+
                    '    <effectiveTo>2016-06-14</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>MEDFIN AUSTRALIA</organisationName>'+
                    '    <effectiveFrom>2010-06-23</effectiveFrom>'+
                    '    <effectiveTo>2016-06-14</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>MEDFIN AUSTRALIA</organisationName>'+
                    '    <effectiveFrom>2010-06-10</effectiveFrom>'+
                    '    <effectiveTo>2016-06-14</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>MEDFIN AUSTRALIA</organisationName>'+
                    '    <effectiveFrom>2010-05-31</effectiveFrom>'+
                    '    <effectiveTo>2016-06-14</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>MEDFIN AUSTRALIA</organisationName>'+
                    '    <effectiveFrom>2010-05-26</effectiveFrom>'+
                    '    <effectiveTo>2016-06-14</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NAB BROKER</organisationName>'+
                    '    <effectiveFrom>2010-05-11</effectiveFrom>'+
                    '    <effectiveTo>2016-02-06</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NAB BROKER</organisationName>'+
                    '    <effectiveFrom>2010-04-20</effectiveFrom>'+
                    '    <effectiveTo>2016-02-03</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NAB BROKER</organisationName>'+
                    '    <effectiveFrom>2010-04-14</effectiveFrom>'+
                    '    <effectiveTo>2016-02-05</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NAB BROKER</organisationName>'+
                    '    <effectiveFrom>2010-04-12</effectiveFrom>'+
                    '    <effectiveTo>2016-02-04</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NAB BROKER</organisationName>'+
                    '    <effectiveFrom>2010-04-08</effectiveFrom>'+
                    '    <effectiveTo>2016-02-03</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NAB BROKER</organisationName>'+
                    '    <effectiveFrom>2010-04-01</effectiveFrom>'+
                    '    <effectiveTo>2016-06-15</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NAB BROKER</organisationName>'+
                    '    <effectiveFrom>2010-04-01</effectiveFrom>'+
                    '    <effectiveTo>2016-02-02</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NATIONAL AUSTRALIA BANK</organisationName>'+
                    '    <effectiveFrom>2009-11-27</effectiveFrom>'+
                    '    <effectiveTo>2015-12-14</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NATIONAL AUSTRALIA BANK</organisationName>'+
                    '    <effectiveFrom>2009-11-19</effectiveFrom>'+
                    '    <effectiveTo>2015-12-11</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NATIONAL AUSTRALIA BANK</organisationName>'+
                    '    <effectiveFrom>2009-11-11</effectiveFrom>'+
                    '    <effectiveTo>2016-01-24</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE LENDING</organisationName>'+
                    '    <effectiveFrom>2009-10-13</effectiveFrom>'+
                    '    <effectiveTo>2015-06-19</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE LENDING</organisationName>'+
                    '    <effectiveFrom>2009-10-01</effectiveFrom>'+
                    '    <effectiveTo>2015-06-18</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE LENDING</organisationName>'+
                    '    <effectiveFrom>2009-09-30</effectiveFrom>'+
                    '    <effectiveTo>2015-06-19</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE LENDING</organisationName>'+
                    '    <effectiveFrom>2009-09-28</effectiveFrom>'+
                    '    <effectiveTo>2015-06-18</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NATIONAL AUSTRALIA BANK</organisationName>'+
                    '    <effectiveFrom>2009-09-23</effectiveFrom>'+
                    '    <effectiveTo>2015-06-17</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NAB ASSET SERVICING</organisationName>'+
                    '    <effectiveFrom>2009-06-05</effectiveFrom>'+
                    '    <effectiveTo>2015-05-15</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NAB ASSET SERVICING</organisationName>'+
                    '    <effectiveFrom>2009-06-04</effectiveFrom>'+
                    '    <effectiveTo>2015-05-15</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NAB ASSET SERVICING</organisationName>'+
                    '    <effectiveFrom>2009-06-04</effectiveFrom>'+
                    '    <effectiveTo>2015-05-15</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NAB ASSET SERVICING</organisationName>'+
                    '    <effectiveFrom>2009-06-01</effectiveFrom>'+
                    '    <effectiveTo>2015-12-10</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NAB ASSET SERVICING</organisationName>'+
                    '    <effectiveFrom>2009-06-01</effectiveFrom>'+
                    '    <effectiveTo>2015-12-05</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NAB ASSET SERVICING</organisationName>'+
                    '    <effectiveFrom>2009-06-01</effectiveFrom>'+
                    '    <effectiveTo>2015-12-05</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NAB ASSET SERVICING</organisationName>'+
                    '    <effectiveFrom>2009-06-01</effectiveFrom>'+
                    '    <effectiveTo>2015-05-15</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NATIONAL CUSTODIAN SERVICES</organisationName>'+
                    '    <effectiveFrom>2009-05-12</effectiveFrom>'+
                    '    <effectiveTo>2011-06-15</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NATIONAL CUSTODIAN SERVICES</organisationName>'+
                    '    <effectiveFrom>2009-05-12</effectiveFrom>'+
                    '    <effectiveTo>2011-06-14</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>WORKING CAPITAL SERVICES</organisationName>'+
                    '    <effectiveFrom>2008-10-01</effectiveFrom>'+
                    '    <effectiveTo>2012-02-29</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>EXPERT DEBT RETRIEVAL</organisationName>'+
                    '    <effectiveFrom>2008-07-11</effectiveFrom>'+
                    '    <effectiveTo>2014-11-30</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NABCAPITAL</organisationName>'+
                    '    <effectiveFrom>2007-11-14</effectiveFrom>'+
                    '    <effectiveTo>2011-02-14</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NABCAPITAL</organisationName>'+
                    '    <effectiveFrom>2007-10-16</effectiveFrom>'+
                    '    <effectiveTo>2011-01-19</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NABCAPITAL</organisationName>'+
                    '    <effectiveFrom>2007-10-02</effectiveFrom>'+
                    '    <effectiveTo>2010-11-08</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NABCAPITAL</organisationName>'+
                    '    <effectiveFrom>2007-10-01</effectiveFrom>'+
                    '    <effectiveTo>2011-01-01</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NABCAPITAL</organisationName>'+
                    '    <effectiveFrom>2007-09-28</effectiveFrom>'+
                    '    <effectiveTo>2010-09-28</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NABCAPITAL</organisationName>'+
                    '    <effectiveFrom>2006-10-04</effectiveFrom>'+
                    '    <effectiveTo>2011-02-09</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NABCAPITAL</organisationName>'+
                    '    <effectiveFrom>2006-10-04</effectiveFrom>'+
                    '    <effectiveTo>2011-01-25</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NABCAPITAL</organisationName>'+
                    '    <effectiveFrom>2006-10-04</effectiveFrom>'+
                    '    <effectiveTo>2010-12-05</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NATIONAL AUSTRALIA BANK</organisationName>'+
                    '    <effectiveFrom>2006-03-01</effectiveFrom>'+
                    '    <effectiveTo>2015-12-12</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE LENDING</organisationName>'+
                    '    <effectiveFrom>2005-07-11</effectiveFrom>'+
                    '    <effectiveTo>2008-10-20</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>BRUNSWICK COLLECTIONS SERVICES</organisationName>'+
                    '    <effectiveFrom>2002-12-11</effectiveFrom>'+
                    '    <effectiveTo>2008-12-11</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NATIONAL CUSTODIAN SERVICES</organisationName>'+
                    '    <effectiveFrom>2002-07-16</effectiveFrom>'+
                    '    <effectiveTo>2011-06-13</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NATIONAL CUSTODIAN SERVICES</organisationName>'+
                    '    <effectiveFrom>2002-06-28</effectiveFrom>'+
                    '    <effectiveTo>2008-09-01</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NATIONAL CUSTODIAN SERVICES</organisationName>'+
                    '    <effectiveFrom>2002-06-26</effectiveFrom>'+
                    '    <effectiveTo>2011-06-09</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NATIONAL CUSTODIAN SERVICES</organisationName>'+
                    '    <effectiveFrom>2002-02-01</effectiveFrom>'+
                    '    <effectiveTo>2011-06-01</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NATIONAL CUSTODIAN SERVICES</organisationName>'+
                    '    <effectiveFrom>2002-02-01</effectiveFrom>'+
                    '    <effectiveTo>2011-06-01</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NATIONAL CUSTODIAN SERVICES</organisationName>'+
                    '    <effectiveFrom>2002-02-01</effectiveFrom>'+
                    '    <effectiveTo>2011-06-01</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NATIONAL CUSTODIAN SERVICES</organisationName>'+
                    '    <effectiveFrom>2002-02-01</effectiveFrom>'+
                    '    <effectiveTo>2009-10-25</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NATIONAL CUSTODIAN SERVICES</organisationName>'+
                    '    <effectiveFrom>2002-02-01</effectiveFrom>'+
                    '    <effectiveTo>2008-09-24</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>MAR-KIT PROCUREMENT SERVICES</organisationName>'+
                    '    <effectiveFrom>2001-04-27</effectiveFrom>'+
                    '    <effectiveTo>2004-04-27</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>MINIMAR-KIT PROCUREMENT SERVICES</organisationName>'+
                    '    <effectiveFrom>2001-04-27</effectiveFrom>'+
                    '    <effectiveTo>2004-04-27</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>OXYGEN ONLINE FINANCIAL SERVICES</organisationName>'+
                    '    <effectiveFrom>2001-04-27</effectiveFrom>'+
                    '    <effectiveTo>2004-04-27</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE LENDING SERVICES</organisationName>'+
                    '    <effectiveFrom>2001-04-09</effectiveFrom>'+
                    '    <effectiveTo>2007-06-12</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NEO 1 FINANCIAL SERVICES</organisationName>'+
                    '    <effectiveFrom>2001-04-06</effectiveFrom>'+
                    '    <effectiveTo>2004-04-06</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE LENDING SERVICES</organisationName>'+
                    '    <effectiveFrom>2001-04-03</effectiveFrom>'+
                    '    <effectiveTo>2012-02-28</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE LENDING SERVICES</organisationName>'+
                    '    <effectiveFrom>2001-04-03</effectiveFrom>'+
                    '    <effectiveTo>2012-02-28</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE LENDING SERVICES</organisationName>'+
                    '    <effectiveFrom>2001-04-03</effectiveFrom>'+
                    '    <effectiveTo>2011-05-23</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>1 FINANCIAL SERVICES</organisationName>'+
                    '    <effectiveFrom>2001-04-03</effectiveFrom>'+
                    '    <effectiveTo>2004-04-03</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>KINETIC FINANCIAL SERVICES</organisationName>'+
                    '    <effectiveFrom>2001-04-03</effectiveFrom>'+
                    '    <effectiveTo>2004-04-03</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>KINETIQ FINANCIAL SERVICES</organisationName>'+
                    '    <effectiveFrom>2001-04-03</effectiveFrom>'+
                    '    <effectiveTo>2004-04-03</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>OXYGEN FINANCIAL SERVICES</organisationName>'+
                    '    <effectiveFrom>2001-04-03</effectiveFrom>'+
                    '    <effectiveTo>2004-04-03</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE LENDING SERVICES</organisationName>'+
                    '    <effectiveFrom>2001-04-02</effectiveFrom>'+
                    '    <effectiveTo>2010-07-03</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE LENDING SERVICES</organisationName>'+
                    '    <effectiveFrom>2001-04-02</effectiveFrom>'+
                    '    <effectiveTo>2010-04-02</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NATIONAL COMMERCIAL-FLEET</organisationName>'+
                    '    <effectiveFrom>2001-02-19</effectiveFrom>'+
                    '    <effectiveTo>2010-02-20</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NATIONAL COMMERCIALFLEET</organisationName>'+
                    '    <effectiveFrom>2001-02-19</effectiveFrom>'+
                    '    <effectiveTo>2004-02-20</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>FAIRHALSEN COLLECTIONS</organisationName>'+
                    '    <effectiveFrom>2001-01-09</effectiveFrom>'+
                    '    <effectiveTo>2010-01-10</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NATIONAL TOOL KIT</organisationName>'+
                    '    <effectiveFrom>2000-11-24</effectiveFrom>'+
                    '    <effectiveTo>2007-07-31</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NATIONAL TOOL KIT</organisationName>'+
                    '    <effectiveFrom>2000-11-01</effectiveFrom>'+
                    '    <effectiveTo>2006-11-02</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NATIONAL AUSTRALIA BANK</organisationName>'+
                    '    <effectiveFrom>2000-10-30</effectiveFrom>'+
                    '    <effectiveTo>2015-12-13</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NATIONAL BUSINESS TOOLKIT</organisationName>'+
                    '    <effectiveFrom>2000-10-20</effectiveFrom>'+
                    '    <effectiveTo>2007-05-31</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>PRIVATELINE INVESTMENTS</organisationName>'+
                    '    <effectiveFrom>2000-10-09</effectiveFrom>'+
                    '    <effectiveTo>2003-12-14</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NATIONAL NET ACCESS</organisationName>'+
                    '    <effectiveFrom>2000-08-31</effectiveFrom>'+
                    '    <effectiveTo>2009-09-01</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>BANK OF NEW ZEALAND AUSTRALIA</organisationName>'+
                    '    <effectiveFrom>2000-08-02</effectiveFrom>'+
                    '    <effectiveTo>2012-04-04</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NATIONAL AUSTRALIA DIRECT</organisationName>'+
                    '    <effectiveFrom>2000-08-02</effectiveFrom>'+
                    '    <effectiveTo>2003-08-03</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>PRIVATELINE INVESTMENTS</organisationName>'+
                    '    <effectiveFrom>2000-08-02</effectiveFrom>'+
                    '    <effectiveTo>2003-08-03</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE EXPRESS</organisationName>'+
                    '    <effectiveFrom>2000-07-07</effectiveFrom>'+
                    '    <effectiveTo>2001-11-08</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE FINANCE</organisationName>'+
                    '    <effectiveFrom>2000-07-07</effectiveFrom>'+
                    '    <effectiveTo>2001-11-08</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE FINANCIAL SERVICES</organisationName>'+
                    '    <effectiveFrom>2000-07-07</effectiveFrom>'+
                    '    <effectiveTo>2001-11-08</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE FIRST</organisationName>'+
                    '    <effectiveFrom>2000-07-07</effectiveFrom>'+
                    '    <effectiveTo>2001-11-08</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>JIGSOLVE</organisationName>'+
                    '    <effectiveFrom>2000-04-05</effectiveFrom>'+
                    '    <effectiveTo>2003-05-15</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE</organisationName>'+
                    '    <effectiveFrom>2000-04-04</effectiveFrom>'+
                    '    <effectiveTo>2009-06-25</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>GUIDESTAR</organisationName>'+
                    '    <effectiveFrom>2000-03-31</effectiveFrom>'+
                    '    <effectiveTo>2003-07-08</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>JIGSOLVE</organisationName>'+
                    '    <effectiveFrom>2000-03-31</effectiveFrom>'+
                    '    <effectiveTo>2003-06-03</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>MC2CORP</organisationName>'+
                    '    <effectiveFrom>2000-03-30</effectiveFrom>'+
                    '    <effectiveTo>2003-03-31</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE</organisationName>'+
                    '    <effectiveFrom>2000-03-29</effectiveFrom>'+
                    '    <effectiveTo>2016-05-18</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE</organisationName>'+
                    '    <effectiveFrom>2000-03-28</effectiveFrom>'+
                    '    <effectiveTo>2009-05-28</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NATIONAL AUSTRALIA BANK</organisationName>'+
                    '    <effectiveFrom>2000-03-28</effectiveFrom>'+
                    '    <effectiveTo>2006-06-26</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE</organisationName>'+
                    '    <effectiveFrom>2000-03-27</effectiveFrom>'+
                    '    <effectiveTo>2016-05-18</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE</organisationName>'+
                    '    <effectiveFrom>2000-03-27</effectiveFrom>'+
                    '    <effectiveTo>2003-05-28</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE</organisationName>'+
                    '    <effectiveFrom>2000-03-24</effectiveFrom>'+
                    '    <effectiveTo>2006-07-24</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE</organisationName>'+
                    '    <effectiveFrom>2000-03-23</effectiveFrom>'+
                    '    <effectiveTo>2009-04-27</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>JIGSOLVE</organisationName>'+
                    '    <effectiveFrom>2000-03-23</effectiveFrom>'+
                    '    <effectiveTo>2003-05-24</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NATIONAL AUSTRALIA BANK</organisationName>'+
                    '    <effectiveFrom>2000-03-21</effectiveFrom>'+
                    '    <effectiveTo>2006-08-10</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>JIGSOLVE</organisationName>'+
                    '    <effectiveFrom>2000-03-20</effectiveFrom>'+
                    '    <effectiveTo>2003-07-25</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>JIGSOLVE</organisationName>'+
                    '    <effectiveFrom>2000-03-15</effectiveFrom>'+
                    '    <effectiveTo>2003-07-24</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>JIGSOLVE</organisationName>'+
                    '    <effectiveFrom>2000-03-13</effectiveFrom>'+
                    '    <effectiveTo>2003-05-13</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>JIGSOLVE</organisationName>'+
                    '    <effectiveFrom>2000-03-08</effectiveFrom>'+
                    '    <effectiveTo>2003-03-09</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>JIGSOLVE</organisationName>'+
                    '    <effectiveFrom>2000-03-08</effectiveFrom>'+
                    '    <effectiveTo>2001-07-10</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NATIONAL AUSTRALIA BANK</organisationName>'+
                    '    <effectiveFrom>2000-03-06</effectiveFrom>'+
                    '    <effectiveTo>2003-07-24</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NATIONAL AUSTRALIA BANK</organisationName>'+
                    '    <effectiveFrom>2000-03-01</effectiveFrom>'+
                    '    <effectiveTo>2002-07-02</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NATIONAL AUSTRALIA BANK</organisationName>'+
                    '    <effectiveFrom>2000-02-16</effectiveFrom>'+
                    '    <effectiveTo>2006-02-16</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE LENDING CORRESPONDENT BANKER</organisationName>'+
                    '    <effectiveFrom>2000-02-15</effectiveFrom>'+
                    '    <effectiveTo>2003-02-15</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE LENDING</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2020-01-10</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>MEDFIN</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2016-06-23</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE LENDING</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2015-06-19</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>GUIDESTAR</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2002-11-24</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>ASK THE BANKER</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2003-01-11</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NABMARKETS</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2001-05-08</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>TAILORED FINANCIAL SOLUTIONS</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2002-12-17</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>FINANCIAL SOLUTIONS SHOP</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2006-01-30</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>FINANCIAL SOLUTIONS SHOP</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2003-04-15</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>FINANCIAL SOLUTIONS SHOP</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2005-12-26</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>FINANCIAL SOLUTIONS SHOP</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2012-03-06</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>FINANCIAL SOLUTIONS SHOP</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2006-09-06</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>FINANCIAL SOLUTIONS SHOP</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2006-05-29</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>FINANCIAL SOLUTIONS SHOP</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2001-03-21</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>BETTER, EASIER, SAFER BANKING</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2002-10-19</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>PAY ANYONE ANYTIME</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2002-10-19</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>FINANCIAL SOLUTIONS SHOP</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2005-10-13</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NATIONAL SERVICES INFORMATION TECHNOLOGY ENTERPRISES</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2003-01-08</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NATIONAL SERVICES INFORMATION TECHNOLOGY ENTERPRISES</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2002-01-15</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NATIONAL SERVICES INFORMATION TECHNOLOGY ENTERPRISES</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2002-11-18</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NATIONAL SERVICES INFORMATION TECHNOLOGY ENTERPRISES</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2004-05-29</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NATIONAL SERVICES INFORMATION TECHNOLOGY ENTERPRISES</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2003-01-13</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NATIONAL SERVICES INFORMATION TECHNOLOGY ENTERPRISES</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2002-11-18</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>ITS VIVID</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2002-10-18</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NATIONAL SERVICES INFORMATION TECHNOLOGY ENTERPRISES</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2002-10-18</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>VIVID FINANCE</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2002-10-18</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NIMITS</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2002-08-24</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>BRUNSWICK COLLECTIONS SERVICES</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2002-07-20</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NATIONAL SERVICES INFORMATION TECHNOLOGY ENTERPRISES</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2002-07-20</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NATIONAL AUSTRALIA BANK</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2016-01-24</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE LENDING AUSTRALIA</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2008-03-13</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE LENDING</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2008-05-30</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE LENDING</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2008-05-28</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE LENDING</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2014-04-07</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE LENDING</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2014-04-07</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE LENDING</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2009-05-07</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE LENDING</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2008-03-13</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE LENDING</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2005-04-11</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE LENDING</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2005-03-08</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE LENDING AUSTRALIA</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2009-05-06</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE LENDING AUSTRALIA</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2008-05-30</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE LENDING AUSTRALIA</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2008-04-08</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE LENDING AUSTRALIA</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2008-02-04</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE LENDING AUSTRALIA</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2005-03-01</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE LENDING AUSTRALIA</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2004-12-30</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE LENDING AUSTRALIA</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2002-06-21</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE EXPRESS</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2002-03-26</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE FINANCE</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2002-03-26</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE FINANCIAL SERVICES</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2002-03-26</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE FIRST</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2002-03-26</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE EXPRESS</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2002-01-09</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE FIRST</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2002-01-09</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE EXPRESS</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2002-01-18</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE FIRST</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2002-01-18</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>TECHNOLOGY BUSINESS SOLUTIONS</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2002-01-09</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE EXPRESS</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2002-04-16</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE FIRST</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2002-04-16</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE EXPRESS</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2001-12-28</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE FIRST</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2001-12-28</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE EXPRESS</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2001-12-12</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE FIRST</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2001-12-12</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE FINANCE</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2001-10-16</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE FINANCIAL SERVICES</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2001-10-16</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE EXPRESS</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2000-02-25</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE FINANCE</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2000-02-25</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE FINANCIAL SERVICES</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2000-02-25</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE FIRST</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2000-02-25</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE EXPRESS</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2001-10-15</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>HOMESIDE FIRST</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2001-10-15</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>TECHNOLOGY BUSINESS SOLUTIONS</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2001-10-08</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NATIONAL SERVICES (ASIA PACIFIC)</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2001-12-05</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NATIONAL SERVICES (ASIA PACIFIC)</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2004-07-17</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NATIONAL AUSTRALIA INVESTMENT SERVICES</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2001-06-24</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NATIONAL SERVICES (ASIA PACIFIC)</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2005-02-07</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>BANK OF NEW ZEALAND AUSTRALIA</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2003-08-11</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>BANK OF NEW ZEALAND AUSTRALIA</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2003-09-17</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>BANK OF NEW ZEALAND AUSTRALIA</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2012-04-10</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>BANK OF NEW ZEALAND AUSTRALIA</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2012-03-30</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>BANK OF NEW ZEALAND AUSTRALIA</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2012-03-29</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>BANK OF NEW ZEALAND AUSTRALIA</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2009-09-26</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>BANK OF NEW ZEALAND AUSTRALIA</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2003-07-02</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>BANK OF NEW ZEALAND AUSTRALIA</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2000-04-30</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NATIONAL AUSTRALIA CUSTODIAN SERVICES</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2002-02-01</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NATIONAL AUSTRALIA CUSTODIAN SERVICES</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2002-06-25</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NATIONAL AUSTRALIA CUSTODIAN SERVICES</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2002-02-01</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NATIONAL AUSTRALIA CUSTODIAN SERVICES</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2002-07-16</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NATIONAL AUSTRALIA CUSTODIAN SERVICES</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2002-06-25</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NATIONAL AUSTRALIA CUSTODIAN SERVICES</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2002-06-19</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NATIONAL AUSTRALIA CUSTODIAN SERVICES</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2002-02-01</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NATIONAL AUSTRALIA CUSTODIAN SERVICES</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2002-02-01</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NATIONAL AUSTRALIA DIRECT</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2003-06-19</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>PRIVATELINE INVESTMENTS</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2003-06-19</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>PRIVATELINE INVESTMENTS</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2003-07-28</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>PRIVATELINE INVESTMENTS</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2003-07-22</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NATIONAL AUSTRALIA DIRECT</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2003-07-22</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NATIONAL AUSTRALIA DIRECT</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2003-07-10</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NATIONAL AUSTRALIA DIRECT</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2003-09-17</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>PRIVATELINE INVESTMENTS</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2001-01-17</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NATIONAL AUSTRALIA DIRECT</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2003-08-28</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>PRIVATELINE INVESTMENTS</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2003-08-28</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NATIONAL AUSTRALIA DIRECT</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2003-07-05</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NATIONAL AUSTRALIA DIRECT</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2002-09-06</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>PRIVATELINE INVESTMENTS</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2002-09-06</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>PRIVATELINE INVESTMENTS</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2000-06-30</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>NATIONAL AUSTRALIA DIRECT</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2000-03-28</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>PRIVATELINE INVESTMENTS</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2000-03-28</effectiveTo>'+
                    '</businessName>'+
                    '<businessName>'+
                    '    <organisationName>MONEY CENTRE</organisationName>'+
                    '    <effectiveFrom>2000-02-08</effectiveFrom>'+
                    '    <effectiveTo>2000-04-18</effectiveTo>'+
                    '</businessName>'+
                    '</businessEntity201408>'+
                    '</response>'+
                    '</ABRPayloadSearchResults>';
        Dom.Document xmlDoc  = new Dom.Document();
        xmlDoc.load(sampleXML);
        Map<String, Object> jsonData = new Map<String, Object>();
        Dom.XmlNode rootNode = xmlDoc.getRootElement();

        Test.startTest();
        UtilityClassMR.parseXMLABN(rootNode, jsonData);
        Test.stopTest();
    }

    @isTest
    static void test2_ParseXMLABN() {
        // Test case 2: Empty XML input
        String emptyXML = '<root></root>';
        Dom.Document emptyXmlDoc = new Dom.Document();
        emptyXmlDoc.load(emptyXML);
        Map<String, Object> jsonData = new Map<String, Object>();
        Dom.XmlNode emptyRootNode = emptyXmlDoc.getRootElement();

        Test.startTest();
        UtilityClassMR.parseXMLABN(emptyRootNode, jsonData);
        Test.stopTest();
    }
    
    @isTest
    static void test3_ParseXMLABN() {
        // Test case 3: XML with attributes
        String xmlWithAttributes = '<root><child attr1="value1" attr2="value2">text</child></root>';
        Dom.Document xmlWithAttributesDoc = new Dom.Document();
        xmlWithAttributesDoc.load(xmlWithAttributes);
        Map<String, Object> jsonData = new Map<String, Object>();
        Dom.XmlNode xmlWithAttributesRootNode = xmlWithAttributesDoc.getRootElement();

        Test.startTest();
        UtilityClassMR.parseXMLABN(xmlWithAttributesRootNode, jsonData);
        Test.stopTest();
    }
}