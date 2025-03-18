//test_class - CapifyLeadParser_Test
//
public class CapifyLeadParser {
    
    public String Company;	//Company Name
    public String FirstName;	//First Name
    public String LastName;	//Last Name
    public String Phone;	//+61000000000
    public String Email;	//sample@email.com
    public String Business_Registered_Number;	//01234567890
    public String Description;	//Description
    public String Requested_Loan_Amount;	//10000
    public String Monthly_Gross_Sales;	//20000
    public String Bank_Statement_Document_ID;	//12XC32
    public boolean Contact_via_Referrer;
    public String Tracking_ID;	//Referrer ID
    public String Monthly_Turnover;
    public cls_ReferrerContactDetails ReferrerContactDetails;
    
    public class cls_ReferrerContactDetails {
        public String FirstName;	//ReferrerFirstName
        public String LastName;	//ReferrerLastName
        public String Phone;	//+61000000000
        public String Email;	//sample@email.com
        public cls_ReferrerBusinessDetails ReferrerBusinessDetails;
    }
    
    public class cls_ReferrerBusinessDetails {
        public String Company;	//ReferrerCompanyName
        public String Business_Registered_Number;	//01234567890
    }
    
    public static CapifyLeadParser parse(String json) {
        return (CapifyLeadParser) System.JSON.deserialize(json, CapifyLeadParser.class);
    }
}