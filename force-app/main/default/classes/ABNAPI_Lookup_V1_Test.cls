@isTest
private class ABNAPI_Lookup_V1_Test {
    @isTest
    private static void dummyABNAPICallout(){
        List<String> ABNList = new List<String>();
        String abn1 = '26 380 104 581';
        String abn2 = '12 812 502 568';
        ABNList.add(abn1);
        ABNList.add(abn2);
        
        Test.StartTest();
        ABNAPI_Lookup_V1.lookupABN(ABNList);
        Test.StopTest();
    }
    
}