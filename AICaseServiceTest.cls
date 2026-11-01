@isTest
private class AICaseServiceTest {
    @isTest
    static void testUrgentCaseAnalysis() {
        Case urgentCase = new Case(
            Subject = 'Production Outage Alert',
            Description = 'We encountered an unexpected crash error on the backend database cluster.',
            Origin = 'Web'
        );
        Test.startTest();
        insert urgentCase;
        Test.stopTest();
        Case resultCase = [SELECT Customer_Sentiment__c, Requires_Urgent_Escalation__c FROM Case WHERE Id = :urgentCase.Id LIMIT 1];
        System.assertEquals('Negative', resultCase.Customer_Sentiment__c);
        System.assertEquals(true, resultCase.Requires_Urgent_Escalation__c);
    }
    @isTest
    static void testStandardCaseAnalysis() {
        Case normalCase = new Case(
            Subject = 'General Question',
            Description = 'How can I change my profile password inside the app menu updates portal?',
            Origin = 'Web'
        );
        Test.startTest();
        insert normalCase;
        Test.stopTest();
        Case resultCase = [SELECT Customer_Sentiment__c, Requires_Urgent_Escalation__c FROM Case WHERE Id = :normalCase.Id LIMIT 1];
        System.assertEquals('Neutral', resultCase.Customer_Sentiment__c);
        System.assertEquals(false, resultCase.Requires_Urgent_Escalation__c);
    }
}
