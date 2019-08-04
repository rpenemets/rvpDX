@istest
public class Test_batch {
    static testmethod void test(){
        
        List<Account> insertacc = new List<Account>();
        Account acc = new Account(Name = 'test 01', Active__c = 'TRUE');
        insertacc.add(acc);
        Account acc1 = new Account(Name = 'test 02', Active__c = NULL);
        insertacc.add(acc1);
        Account acc2 = new Account(Name = 'test 03', Active__c = 'TRUE' );
        insertacc.add(acc2);
        Account acc3 = new Account(Name = 'test 04', Active__c = 'TRUE');
        insertacc.add(acc3);
        Account acc4 = new Account(Name = 'test 05', Active__c = 'TRUE');
        insertacc.add(acc4);
        Account acc5 = new Account(Name = 'test 06', Active__c = 'TRUE');
        insertacc.add(acc5);
        
        insert insertacc;
        
        accountActiveupdate acclfals = new accountActiveupdate();
        Database.executeBatch(acclfals,10);
        
    }

}