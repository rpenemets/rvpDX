public class AccountTrigger_Handler {
    
    public static void hrObjectCreation(List<Account> AccountRecords){
       List<Account> accountRecs = new List<Account>(); 
            List<HR_Object__c> insertHR = new List<HR_Object__c>(); 
            for(Account acc : AccountRecords){
                // never use a query inside a for loop - 200 Queires are allowed per transcation 
                if(acc.Rating == 'Hot'){
                    accountRecs.add(acc);
                }
            }
            
            for(Account ac : accountRecs){
                HR_Object__c  hr = new HR_Object__c (
                					Name = ac.Name +'HROBJECT',
                					Emp_Employer__c = ac.Id);
                hr.Start_Date__c  = System.today()+1;
                hr.Employee_phone__c = ac.phone_number__c;
                
                // insert hr;- limts 
                insertHR.add(hr);
            }
            
            if(insertHR.size()>0){
                insert insertHR;
            } 
    } 
    
	
}