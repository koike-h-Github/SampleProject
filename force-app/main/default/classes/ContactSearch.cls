public class ContactSearch {
    
    public static List<contact> searchForContacts(String lName, String mPosCd){
        
        List<contact> cons = [
                            SELECT Name 
                            FROM Contact 
                            WHERE (LastName =:lName and
                                   MailingPostalCode =:mPosCd)
                             ];

        
        return cons;
    }
}