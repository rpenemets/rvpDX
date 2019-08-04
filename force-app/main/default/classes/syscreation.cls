public class syscreation{
    
    public static void sysrecordcreation(List<Contact> conrecords){
        List<Sysintelli__c> sysinsert = new  List<Sysintelli__c>(); 
            for(contact cc: conrecords){
                Sysintelli__c ss = new Sysintelli__c();
                ss.Account__c = cc.AccountId;
                ss.Name = cc.LastName ;
                system.debug('sys Name is '+cc.LastName);
                ss.Employee_email__c = cc.Email;
                if(cc.Department != NULL)
                ss.Employee_blog__c  = cc.Department;
                //insert ss;
                sysinsert.add(ss);               
            }
          system.debug('list of sys records'+sysinsert);
       if(sysinsert.size()>0){
           insert sysinsert;
       }
    }

}