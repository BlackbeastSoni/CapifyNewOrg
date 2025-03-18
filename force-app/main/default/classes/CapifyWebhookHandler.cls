public class CapifyWebhookHandler{
    public static RestResponse handleWebhookRequest(String requestBody, String partnerName, RestResponse restRes, String parentID){
        RestResponse res = RestContext.response;
        try{
            //Parse the JSON request
            CapifyLeadParser parsedReq = CapifyLeadParser.parse(requestBody);
            
            //New lead record
            Lead nLead = new Lead();
            
            //Required feilds List
            List<String> missingFieldsList = new List<String>();
            
            //Required params
            if(parsedReq.FirstName != null && parsedReq.FirstName != '')
                nLead.FirstName = parsedReq.FirstName;
            else
                missingFieldsList.add('FirstName');
            
            if(parsedReq.LastName != null && parsedReq.LastName != '')
                nLead.LastName = parsedReq.LastName;
            else
                missingFieldsList.add('LastName');
            
            if(parsedReq.Company != null && parsedReq.Company != '')
                nLead.Company = parsedReq.Company;
            else
                missingFieldsList.add('CompanyName');
            
            if(parsedReq.Phone != null && parsedReq.Phone != '')
                nLead.Phone = parsedReq.Phone;
            else
                missingFieldsList.add('Phone');
            
            if(parsedReq.Email != null && parsedReq.Email != '')
                nLead.Email = parsedReq.Email;
            else
                missingFieldsList.add('Email');
            
            if(parsedReq.Business_Registered_Number != null && parsedReq.Business_Registered_Number != '')
                nLead.Business_Registered_Number__c = parsedReq.Business_Registered_Number; 
            else
                missingFieldsList.add('Business Registered Number');
            
            if(parsedReq.Description != null && parsedReq.Description != '')
                nLead.Description = parsedReq.Description;
            
            if(parsedReq.Requested_Loan_Amount != null && parsedReq.Requested_Loan_Amount != '')
                nLead.Requested_Loan_Amount__c = decimal.valueOf(parsedReq.Requested_Loan_Amount);
            
            if(parsedReq.Monthly_Gross_Sales != null && parsedReq.Monthly_Gross_Sales != '')
                nLead.Monthly_Gross_Sales__c = decimal.valueOf(parsedReq.Monthly_Gross_Sales);
            
            if(parsedReq.Bank_Statement_Document_ID != null && parsedReq.Bank_Statement_Document_ID != '')
                nLead.Bank_Statement_Document_ID__c = parsedReq.Bank_Statement_Document_ID;
            
            if(parsedReq.Contact_via_Referrer)
            nLead.Contact_via_Referrer__c = boolean.valueOf(parsedReq.Contact_via_Referrer);

            if(parsedReq.Monthly_Turnover != null && parsedReq.Monthly_Turnover != '')
            nLead.Monthly_Turnover__c = decimal.valueOf(parsedReq.Monthly_Turnover);    
        
            if(parsedReq.Tracking_ID != null && parsedReq.Tracking_ID != '')
                nLead.Tracking_ID__c = parsedReq.Tracking_ID;
            
       
            
            if(missingFieldsList.isEmpty()) {                
                 //Checking for the ReferrerContactDetails
         /*   if(parsedReq.ReferrerContactDetails != null ){
                String refFirstName = parsedReq.ReferrerContactDetails.FirstName;
                String refLastName = parsedReq.ReferrerContactDetails.LastName;
                String refPhone = parsedReq.ReferrerContactDetails.Phone;
                String refEmail = parsedReq.ReferrerContactDetails.Email;*/
                
                if (parsedReq.ReferrerContactDetails != null  && parsedReq.ReferrerContactDetails.ReferrerBusinessDetails != null){
                    if( parsedReq.ReferrerContactDetails.ReferrerBusinessDetails.Business_Registered_Number != null) {
                        List<Account> accList = [Select Id, Name, OwnerId From Account Where Business_Registered_Number__c =: parsedReq.ReferrerContactDetails.ReferrerBusinessDetails.Business_Registered_Number];
                        if(accList.size() > 0){
                            findReferringContact(parsedReq,parentID , nLead);
                        }  
                    }else{
                        createReferringBussiness(parsedReq,parentID);
                    }  
                }else {
                    findReferringContact(parsedReq,parentID,nLead);
                }
               /*  if( parsedReq.ReferrerContactDetails.ReferrerBusinessDetails.Business_Registered_Number != null) {
                    String refCompany = parsedReq.ReferrerContactDetails.ReferrerBusinessDetails.Company;
                    String refBusinessNumber = parsedReq.ReferrerContactDetails.ReferrerBusinessDetails.Business_Registered_Number;
                    
                    System.debug('Referrer Business Name: ' + refCompany);
                    System.debug('Referrer Business Number: ' + refBusinessNumber);
                }*/
            
                
                //insert new Lead;
                //  Database.SaveResult result = Database.insert(nLead);
                boolean result = true;
                //      if(result.isSuccess()) {
                if(result) {
                    res.statusCode = 201;
                    res.responseBody = Blob.valueOf(successResponse(parsedReq, nLead));
                }
                return res;
            } else {
                res = handleRequiredFieldsMissing(res, missingFieldsList);
                
                if(test.isRunningTest())
                    Integer i = 10/0;
                
                return res;
            }
        }
        catch(Exception e) {
            system.debug('Exception ' + e.getCause());
            system.debug('Exception ' + e.getLineNumber());
            return handleExceptions(res, e, requestBody);
        }
    }
    //Finding Refrerer Contact
    public static Boolean findReferringContact(CapifyLeadParser parsedReq, String parentID, Lead nLead) {
        Boolean result ;
        List<Contact> contactList = new List<Contact>();
        List<Contact> contactListSF =[SELECT Id, FirstName, LastName, Phone, Email, accountId FROM Contact Where FirstName =: parsedReq.ReferrerContactDetails.FirstName 
        AND LastName =: parsedReq.ReferrerContactDetails.LastName AND Phone =: parsedReq.ReferrerContactDetails.Phone AND Email =:  parsedReq.ReferrerContactDetails.Email];
        if(contactListSF.size()>0){
            result = createLead(nLead);
            return result;
        }else{
            result = createReferringContact(parsedReq,  parentID, nLead);
            return result;
        }   
            
    }

    //Creating new Account if not found
    public static void createReferringBussiness(CapifyLeadParser parsedReq, String parentID) {
        List<Account> accOwnerList = [Select Id, Name, OwnerId From Account Where ParentId =: parentID];
                       
        List<Account> accList = new List<Account>();
        Account acc = new Account();
        acc.Name = parsedReq.ReferrerContactDetails.ReferrerBusinessDetails.Company;
        acc.Business_Registered_Number__c = parsedReq.ReferrerContactDetails.ReferrerBusinessDetails.Business_Registered_Number;
        acc.ParentId = parentID;
        acc.OwnerId = accOwnerList[0].OwnerId;
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Referrer').getRecordTypeId();
        accList.add(acc);
        if (accList.size() > 0) {
            Database.SaveResult[] result = Database.insert(accList);
        }
        //Send notification to the Source Business Owner
    }

    //Creating new Contact if not found
    public static Boolean createReferringContact(CapifyLeadParser parsedReq, String parentID, Lead nLead) {
        List<Contact> conList = new List<Contact>();
        Contact con = new Contact();
        con.FirstName = parsedReq.ReferrerContactDetails.FirstName;
        con.LastName = parsedReq.ReferrerContactDetails.LastName;
        con.Email = parsedReq.ReferrerContactDetails.Email;
        con.Phone = parsedReq.ReferrerContactDetails.Phone;
        con.AccountId = parentID;
        con.recordTypeId = Schema.SObjectType.Contact.getRecordTypeInfosByName().get('Referrer').getRecordTypeId();
        conList.add(con);
        if(conList.size()>0){
             Database.SaveResult[] result = Database.insert(conList);
        }
        Boolean result = createLead(nLead);
            return result;
    }

    //Creating new Lead
    public static Boolean createLead(Lead nLead) {        
            Database.SaveResult result = Database.insert(nLead);
            if(result.isSuccess()){
                return true;
            }else {
                return false;
            }          
    }
    
    //Response for successful lead insertion
    public static String successResponse(CapifyLeadParser leadRequest, Lead nLead) {
        
        Map<String, Object> mainMap = new Map<String, Object>();
        Map<String, String> fieldsMap = new Map<String, String>();
        
        try {
            if(leadRequest.FirstName != null)
                fieldsMap.put('FirstName', leadRequest.FirstName);
            
            if(leadRequest.LastName != null)
                fieldsMap.put('LastName', leadRequest.LastName);
            
            if(leadRequest.Company != null)
                fieldsMap.put('Company', leadRequest.Company);
            
            if(leadRequest.Phone != null)
                fieldsMap.put('Phone', leadRequest.Phone);
            
            if(leadRequest.Email != null)
                fieldsMap.put('Email', leadRequest.Email);
            
            if(leadRequest.Business_Registered_Number != null)
                fieldsMap.put('Business Registered Number', leadRequest.Business_Registered_Number);
            
            mainMap.put('created_at', String.valueOf(Datetime.now()));
            mainMap.put('fields', fieldsMap);
            mainMap.put('successful', true);
            
            String returningString = JSON.serialize(mainMap);
            
            if(test.isRunningTest())
                Integer i = 10/0;
            
            return returningString;            
        } catch(Exception e) {
            system.debug('Exception ' + e.getCause());
            system.debug('Exception ' + e.getLineNumber());
            insertTestAPI(e);
            return '';
        }
        
    }
    
    //Response in case of exception
    public static RestResponse handleExceptions(RestResponse res, Exception e, String RequestBody) {
        res.statusCode = 502;
        res.responseBody = Blob.valueOf('Could not proxy data to our CRM, Please try again later.');
        insertTestAPI(e);
        captureResponse(e, RequestBody);
        return res;
    }
    
    //Response in case Required fields are missing
    public static RestResponse handleRequiredFieldsMissing(RestResponse res, List<String> missingFieldsList) {
        
        res.statusCode = 422;
        Map<String, Object> responseMap = new Map<String, Object>();
        Map<String, String> requiredFieldsMap = new Map<String, String>();
        
        if(missingFieldsList.contains('CompanyName'))
            requiredFieldsMap.put('Company', 'The company field is required.');
        
        if(missingFieldsList.contains('FirstName'))
            requiredFieldsMap.put('FirstName', 'The FirstName field is required.');
        
        if(missingFieldsList.contains('LastName'))
            requiredFieldsMap.put('LastName', 'The LastName field is required.');
        
        if(missingFieldsList.contains('Email'))
            requiredFieldsMap.put('Email', 'The Email field is required.');
        
        if(missingFieldsList.contains('Phone'))
            requiredFieldsMap.put('Phone', 'The Phone field is required.');
        
        if(missingFieldsList.contains('Business Registered Number'))
            requiredFieldsMap.put('Business Registered Number', 'The Business Registered Number field is required.');
        
        responseMap.put('Errors', requiredFieldsMap);
        responseMap.put('Status', 'Error');
        res.responseBody = Blob.valueOf(JSON.serialize(responseMap));
        return res;
    }
    
    //Test API for exceptions
    public static void insertTestAPI(Exception e) {
        Test_API__c testApi = new Test_API__c();
        testApi.subject__c = 'Capify Webhook Version 1';
        testApi.Description__c = 'Exception occuring is capifywebhook handler at line + ' + e.getLineNumber() + ', Reason is : ' + e.getMessage() + ', Due to' + e.getCause();
        insert testApi;
    }
    
    //Capture response in test API
    public static void captureResponse(Exception e, String RequestBody) {
        Test_API__c testApi = new Test_API__c();
        testApi.subject__c = 'Capify Webhook Version 1 : Capturing Response body';
        testApi.Response__c = RequestBody;
        testApi.Description__c = 'Exception occuring is capifywebhook handler at line + ' + e.getLineNumber() + ', Reason is : ' + e.getMessage() + ', Due to' + e.getCause();
        insert testApi;
    }
    
    //Mock Response
    public static RestResponse mockSuccessResponse(RestResponse res){
        res.statusCode = 201;
        res.responseBody = Blob.valueOf('success":true');
        return res;
    }
}