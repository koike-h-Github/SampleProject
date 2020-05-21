public with sharing class TestClass {
    
    
    public static void querymethod(){
        List<Account> accs = new List<Account>([SELECT Name FROM Account]);
        
        for( Account acc : accs) {
            System.debug('ステートメント' + acc);
        }
        
        accs = database.query('SELECT Name FROM Account');
        for( Account acc : accs) {
            System.debug('database' + acc);
        }
        
        Limits.getQueries();
        Limits.getLimitQueryRows();
        Limits.getQueryRows();
        Limits.getLimitQueryRows();
        
        Limits.getDmlStatements();
        Limits.getLimitDmlStatements();
        Limits.getDmlRows();
        Limits.getLimitDmlStatements();
    }
    
    public static void getShemaInfo() {
        
        system.debug('【オブジェクト情報】');
        system.debug(Contact.sObjectType.getDescribe().isAccessible());
        system.debug(Contact.sObjectType.getDescribe().isCreateable());
        system.debug(Contact.sObjectType.getDescribe().getRecordTypeInfos());
        
        system.debug('【項目情報】');
        system.debug(Contact.Name.getDescribe().getLabel());
        system.debug(Contact.Name.getDescribe().getName());
        system.debug(Contact.Name.getDescribe().getPicklistValues());
        
        
    }
    
    public static void apexDevelopperGuide(){
        // カスタム表示ラベル
        //String errorMsg = System.Label.label_name;
        
        
        List<Account> aa = [SELECT Id,Name FROM Account WHERE Name = 'A'];
        Contact c = new Contact(Account = [SELECT Name FROM Account WHERE NumberOfEmployees > 10 LIMIT 1]);
        c.FirstName = 'James';
        c.LastName = 'Yoyce';
        
        Integer i = [SELECT COUNT() FROM Account];
        Integer j = 5 * [SELECT COUNT() FROM Account];
        
        List<List<SObject>> searchList = [FIND 'map*' IN ALL FIELDS RETURNING Account (Id, Name), Contact, Opportunity, Lead];
        
        String s = 'Acme';
        for (Account a : [SELECT Id, Name FROM Account WHERE Name LIKE :(s+'%')]){
            
        }
        
        List<Account> accs = [SELECT Id,Name FROM Account WHERE Name = 'Siebel'];
        for (Account a : accs){
            a.Name = 'Oracle';
        }
        
        update accs;
    }
    
    public static void createSOQLQuery(){
        Account[] accts = [SELECT Name,Phone FROM Account];
        Account oneAccountonly = [SELECT Name,Phone FROM Account LIMIT 1];
        
        String targetDepartment = 'wingo';
        Contact[] techContacts = [SELECT FirstName,LastName
                                  FROM Contact WHERE Department=:targetDepartment];
        
        Database.query('SELECT Name FROM Account');
        Account accs = [SELECT Name FROM Account];
    }
    
    public static void createSOSLquery(){
        List<List<SObject>> aearchList = [FIND 'SFFDC' IN ALL FIELDS
                                          RETURNING Account(Name),Contact(FirstName,LastName)];
        
        Search.query('Find {Acme} IN ALL FILEDS RETURNING Account');
        List<List<sObject>> serlist = [Find 'Acme' IN ALL FIELDS RETURNING Account];
        
    }
    
}