global class firstbatch_class implements Database.Batchable<sObject>{
    global string query; 
    global Database.QueryLocator start(Database.BatchableContext BC){
        query = 'SELECT ID, Employee_401_Match_Percent__c, Base_Salary__c FROM HR_Object__c';
        return Database.getQueryLocator(query);
    }
    
    global void execute(Database.BatchableContext BC , List<sobject> scope){
        List<HR_Object__c> hrobjupdate = new List<HR_Object__c>();
        for(sobject s: scope){
            HR_Object__c mem = (HR_Object__c)s;
            if(mem.Base_Salary__c > 1500){
                mem.Employee_401_Match_Percent__c = 3;
                hrobjupdate.add(mem);
            }else{
               mem.Employee_401_Match_Percent__c = 5;
                hrobjupdate.add(mem); 
            } 
        }
        
        if(hrobjupdate.size()>0){
           update hrobjupdate;
        }
    }
    
    global void finish(Database.BatchableContext BC){
        
    }
}