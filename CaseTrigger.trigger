trigger CaseTrigger on Case (before insert) {
    // Automatically routes cases to the AI service logic rule engine before saving
    AICaseService.processNewCases(Trigger.new);
}
