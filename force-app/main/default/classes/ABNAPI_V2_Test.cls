//Main Class : ABNAPI_V2
//Author     : Shubham Soni
@isTest
public class ABNAPI_V2_Test {
    @isTest
    private static void dummyABNAPICallout(){
        List<String> ABNList = new List<String>();
        String abn = '12345256';
        ABNList.add(abn);
        String tradingName = '';
        ABNList.add(tradingName);
        /*  Date dateBussinessStarted = Date.valueOf('2000-02-08');
ABNList.add(dateBussinessStarted);*/
        String entity = 'Australian Public Company';
        ABNList.add(entity);
        String entity_status = 'Active';
        ABNList.add(entity_status);
        String legalName = '';
        ABNList.add(legalName);
        String ACN = '';
        ABNList.add(ACN);
        String state = '';
        ABNList.add(state);
        String zipCode = '';
        ABNList.add(zipCode);
        
        Test.StartTest();
        ABNAPI_V2.ABNAPICallout(ABNList);
        Test.StopTest();
    }
}