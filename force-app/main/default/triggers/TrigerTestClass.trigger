trigger TrigerTestClass on Account (before insert, 
                                    after insert,
                                    before update, 
                                    after update) {
    if (Trigger.isInsert) {
        if (Trigger.isBefore) {
            
        } else if (Trigger.isAfter) {
            
        }
        
    }

}