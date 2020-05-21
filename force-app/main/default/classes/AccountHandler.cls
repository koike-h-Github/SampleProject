public class AccountHandler {
    
    public static Account insertNewAccount(String accountName){
        
        Account acco = new Account(name = accountName);
        
        try {
            insert acco;
            return acco;
        }catch(DMLException e){
            system.debug('DMLException');
            return null;
        }
    }
}

/*参考にのってたベスト回答
public class AccountHandler {

    public static Account insertNewAccount (String accName){
        
        
    if(accName!=''){    
        try{
            Account a = new Account(Name=accName);
            insert a;
            System.debug('Bravo Andrè! Account created');
            return a;
        } catch(Exception e){
            System.Debug('Account not created');
            return null;
        }
    } else {
        return null;
    }
     
        
    }    
}
*/