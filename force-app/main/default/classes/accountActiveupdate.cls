global class accountActiveupdate implements Database.Batchable<sObject>{
     public List<Account> accounts = new List<Account>();
     global Database.QueryLocator start(Database.BatchableContext BC){
          system.debug('You are here in the datebase.QueryLoactor');
           string query;
           //query='[SELECT ID, Name, Active__c FROM Account where Active__c !='NO']';
           system.debug('Query statement'+ query);
           return Database.getQueryLocator([SELECT ID, Name, Active__c FROM Account where Active__c !='NO']);
     }

     global void execute(Database.BatchableContext BC,List<sObject> scope){
            Account ac;
             integer i=1;
             for(sObject sc: scope){
             ac = (Account) sc;
             if(ac.Active__c == NULL || ac.Active__c == 'YES'){
                 ac.Active__c = 'NO';
                 system.debug(i+'Account'+ ac );
                 accounts.add(ac);
                 i++;
             }
         }
         system.debug('size of accouts to be updated'+ accounts.size());
       if(accounts.size()>0){
           update accounts;
       }
     }

      global void finish(Database.BatchableContext BC){
   }

}