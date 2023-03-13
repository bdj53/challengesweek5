trigger StopDeleteTrigger on Account (before_delete) 
{
    if (Trigger.isBefore)
    {
    [SELECT Id,(SELECT Id FROM Opportunities) FROM Account WHERE Id IN :Trigger.before_delete]);
    // Add an opportunity for each account if it doesn't already have one.
    // Iterate through each account.
    if (acctsWithOpps.get(a.Id).Opportunities.size() == 0) 
    }
}