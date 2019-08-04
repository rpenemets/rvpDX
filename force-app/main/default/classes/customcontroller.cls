public with sharing class customcontroller {
    private final Account account;
    public Contact contact; 
    public customcontroller() {
        Id idey =ApexPages.currentPage().getParameters().get('id');
        account = [SELECT Id, Name, Site FROM Account 
                   WHERE Id = :idey];
        contact = [SELECT Id, Name FROM Contact WHERE AccountId = :idey LIMIT 1];
    }

    public Account getAccount() {
        return account;
    }
    
    public Contact getmycontact(){
        return contact;
    }
    
    
    public PageReference save() {
        update account;
        return null;
    }

}