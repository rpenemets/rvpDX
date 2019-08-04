public with sharing class Accountextension {
    
    private final account acct;
    
    public Accountextension(ApexPages.StandardController controller) {
         this.acct = (Account)controller.getRecord();
    }
    
    public PageReference Save() {
       insert acct;
       
      PageReference contpage = new PageReference('/apex/Testcustomcontroller?id='+acct.id);
      return contpage;
    }
}