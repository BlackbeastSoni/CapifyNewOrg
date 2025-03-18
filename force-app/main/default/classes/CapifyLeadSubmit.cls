@RestResource(urlMapping='/CapifyLeadPost')
global class CapifyLeadSubmit {
    
    @HttpPost
    global static void doPost() {
        
        //Handle JSON request
        RestRequest req = RestContext.request;
        Blob body = req.requestBody;
        String bodyString = body.toString();
        
         // Parse JSON into a Map
        Map<String, Object> originalData = (Map<String, Object>) JSON.deserializeUntyped(bodyString);
        
        // Remove '__c' suffix from keys
        Map<String, Object> modifiedData = removeCustomFieldSuffix(originalData);
        
        // Convert back to JSON string
        String modifiedJson = JSON.serialize(modifiedData);
        
        
        //Get headers
        String apiKey = req.headers.get('APIKEY');
        String apiSecret = req.headers.get('APISECRET');
        String accountId = req.headers.get('ACCOUNTID');
        
        System.debug('Request Body '+bodyString);
        //Rest response
        RestResponse res = RestContext.response;
        
        //Validate API key and secret
        List<CapifyWebhook__mdt> partnerName = [SELECT MasterLabel, API_Key__c, API_Secret__c,AccountId__c
                                                FROM CapifyWebhook__mdt 
                                                WHERE API_Key__c =: apiKey AND API_Secret__c =: apiSecret AND AccountId__c =: accountId LIMIT 1];
        
        //Check if partner details exists
        if(partnerName.size() > 0) {
            CapifyWebhook__mdt cPartner = partnerName[0];
            if(cPartner.API_Key__c != null && cPartner.API_Secret__c != null && cPartner.AccountId__c != null) {
                
                RestResponse returningRes = new RestResponse();
                returningRes = !Test.isRunningTest() ? CapifyWebhookHandler.handleWebhookRequest(modifiedJson, cPartner.MasterLabel, res ,cPartner.AccountId__c) : CapifyWebhookHandler.mockSuccessResponse(res);
                
                res = returningRes; 
            }
        }
        else{
            res.responseBody = Blob.valueOf('The API key/secret you are using is not recognised with any Partner account.');
            res.statusCode = 401;
        }
        
    }
    //Removing the '__c' from the requestBody
     private static Map<String, Object> removeCustomFieldSuffix(Map<String, Object> inputMap) {
        Map<String, Object> outputMap = new Map<String, Object>();
        
        for (String key : inputMap.keySet()) {
            Object value = inputMap.get(key);
            String newKey = key.endsWith('__c') ? key.substring(0, key.length() - 3) : key;
            
            // If the value is another map, process it recursively
            if (value instanceof Map<String, Object>) {
                value = removeCustomFieldSuffix((Map<String, Object>) value);
            }
            
            outputMap.put(newKey, value);
        }
        return outputMap;
    }
    
}