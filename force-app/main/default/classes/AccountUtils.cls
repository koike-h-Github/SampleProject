public class AccountUtils {
    public static List<Account> accountsByState(String state){
        List<Account> states = [SELECT BillingState
                               FROM Account
                               WHERE BillingState = :state];
        
                               
        return states;
    }

}