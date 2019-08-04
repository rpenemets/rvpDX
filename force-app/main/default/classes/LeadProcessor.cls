global class LeadProcessor implements Database.Batchable<sObject> {
    
    global Database.QueryLocator start(Database.BatchableContext bc){
       String query = 'SELECT LeadSource from Lead'+(Test.isRunningTest()?' LIMIT 200':'');
        return Database.getQueryLocator(query);
    }
    
    global void execute(Database.BatchableContext bc, List<Lead> scope){
        for(Lead Leads : scope){
            Leads.LeadSource = 'Dreamforce';
        }
        update scope;
    }
    
    global void finish(Database.BatchableContext bc){
       
    }
}