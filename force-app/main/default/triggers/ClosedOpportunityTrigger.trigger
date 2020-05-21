trigger ClosedOpportunityTrigger on Opportunity (after insert,after update) {

    List <Task> tasks = new List<Task>();
    
    for(Opportunity opp : Trigger.New) {
        if(opp.StageName == 'Closed Won'){
           if (!(Trigger.isUpdate && (opp.StageName!=trigger.oldMap.get(opp.id).stageName))) {
                tasks.add(new task(Subject = 'Follow Up Test Task',
                                   WhatId =opp.id)
                          );
           }
        } 
    }

    if(tasks.size()>0){
        
        insert tasks;
        
    }
}