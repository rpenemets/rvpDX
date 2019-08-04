@isTest
private class TestingClassCreation {

@isTest static void TestingClassCreation_method_one(){
    
    Account acc = new Account();
    acc.Name = 'Kasi_tech';
    insert acc;
    
    opportunity opp = new opportunity();
    opp.Name= 'Test class creation';
    opp.AccountId = acc.Id;
    opp.Amount = 12;
    opp.StageName = 'Prospecting';
    opp.CloseDate = system.today();
    insert opp;
    
}

}