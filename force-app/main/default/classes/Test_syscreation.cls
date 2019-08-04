@istest
public class Test_syscreation {
    static testmethod void systest(){
        Account acc = new Account(Name = 'test 01');
        insert acc;
        contact c = new contact();
        c.AccountId = acc.id;
        c.Email = 'test@test.com';
        c.LastName = 'testing contact';
        insert c;
    }

}