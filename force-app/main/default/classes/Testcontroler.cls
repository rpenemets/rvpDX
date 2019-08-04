public class Testcontroler {
    private Account account;
    public Testcontroler(){
        account = [SELECT Id,Name, Rating FROM ACCOUNT WHERE Id=:Apexpages.currentpage().getparameters().get('id')];
    }
    
    public Account getReturnAccount(){
        return account;
    }
    
    public Pagereference save(){
        update account;
        return new pagereference('/'+account.id);
    }

}