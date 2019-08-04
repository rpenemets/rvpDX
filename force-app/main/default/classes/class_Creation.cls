public with sharing class class_Creation {


    public  void  classCreationMethod(Opportunity[] triggerValues){
         List<Class_kasitech__c> classrecordinsert = new List<Class_kasitech__c>();
        for(opportunity opp : triggerValues){
            Class_kasitech__c newclass = new Class_kasitech__c(Name= opp.Name, Account__c= opp.AccountId,
                                        Class_Amount__c =opp.Amount );
           //insert newclass;- donot do dml or soql operation inside the for loop.
           // you will hit limits
           // use collectiona
           classrecordinsert.add(newclass);
           system.debug('class record to be inserted'+ classrecordinsert);
        }

        insert classrecordinsert;
    }


}