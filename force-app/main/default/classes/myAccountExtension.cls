public with sharing class myAccountExtension {

    private Account acct;

    public myAccountExtension(ApexPages.StandardController controller) {
        this.acct = (Account) controller.getRecord();
    }
    
    public PageReference save(){
    
        insert acct;
        
        PageReference acctpage = new PageReference('Http://www.google.com');
        
        return acctpage;
        
    }

}