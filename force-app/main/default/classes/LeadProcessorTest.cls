@isTest
public class LeadProcessorTest {
//Seconds Minutes Hours Day_of_month Month Day_of_week optional_year
   @testSetup 
   static void setup() {
        List<Lead> leads = new List<Lead>();
       
        for(Integer i = 0; i < 2; i++){
            Lead lead = new Lead(LastName = 'Test ' + i, LeadSource = '', Company = 'Test Company ' + i, Status = 'Open - Not Contacted');
            leads.add(lead);
        }
       
        insert leads;
    }
    
    static testmethod void test() {        
        Test.startTest();
        LeadProcessor uca = new LeadProcessor();
        Id batchId = Database.executeBatch(uca);
        Test.stopTest();
    }
}