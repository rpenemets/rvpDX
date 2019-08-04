public class MyController2 {

    private final Account account;
    private final Contact contact;

    public MyController2() {
        contact = [SELECT Id, Name,Email,LeadSource, AccountId FROM Contact
                   WHERE Id = :ApexPages.currentPage().getParameters().get('id')];
        account =  [SELECT Id, Name,Site FROM Account
                   WHERE Id = :contact.AccountId];          
    }

    public Account getAccount() {
        return account;
    }
    
    public Contact getContact() {
        return contact;
    } 
    
    
    public PageReference save() {
        update account;
        update contact ;
        return null;
    }
}