@isTest
public class Test_AccountTrigger {
 	
    @isTest static void test1(){
        Account acc = New Account();
        acc.Name = 'Merrill Lynch';
        acc.Rating = 'Cold';
        acc.phone_number__c = '6099999999';
        insert acc;
        acc.Rating = 'Hot';
        update acc;
        
        HR_Object__c hr = [SELECT ID, Emp_Employer__c FROM HR_Object__c WHERE Emp_Employer__c =: acc.Id];
        system.debug(hr);
        system.assert(hr != NULL);
    }
}