@isTest
private class AccountTriggerTest {
    @isTest static void record200(){
        List<Account> accs = new List<Account>();

        for(Integer i=0; i<200; i++){
            Account acc = new Account(Name = 'TEST' + i,
                                     BillingState = 'CA');
            accs.add(acc);
        }
        // コメント追加

        Test.startTest();

        insert accs;
        Test.stopTest();
            
        System.assertEquals(200, [SELECT Count() FROM Account WHERE ShippingState = 'CA' ]);

    }
}