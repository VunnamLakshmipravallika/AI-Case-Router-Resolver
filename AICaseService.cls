public with sharing class AICaseService {
    
    // This method accepts a list of cases from our trigger to process them safely
    public static void processNewCases(List<Case> incomingCases) {
        
        // Loop through each case that was just created (Bulkification pattern)
        for (Case currentCase : incomingCases) {
            
            // Check if the ticket text mentions urgent words
            if (currentCase.Description != null && 
               (currentCase.Description.containsIgnoreCase('error') || 
                currentCase.Description.containsIgnoreCase('crash') || 
                currentCase.Description.containsIgnoreCase('urgent'))) {
                
                // Simulate our AI rules processing a critical system issue
                currentCase.Customer_Sentiment__c = 'Negative';
                currentCase.Requires_Urgent_Escalation__c = true;
                currentCase.AI_Suggested_Resolution__c = 'AI System Detection: This ticket indicates a critical runtime disruption. Recommendation: Instantly execute emergency hotfix tracking protocols.';
            } else {
                // Default fallback tracking for regular tickets
                currentCase.Customer_Sentiment__c = 'Neutral';
                currentCase.Requires_Urgent_Escalation__c = false;
                currentCase.AI_Suggested_Resolution__c = 'AI System Detection: Standard inquiry. Recommendation: Process through regular support paths.';
            }
        }
    }
}
