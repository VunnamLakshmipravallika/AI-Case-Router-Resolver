# AI-Powered Support Ticket Router & Case Resolver

A production-ready Salesforce CRM customization application that integrates backend Apex programming logic, database automation switches, and responsive frontend UI components to optimize customer service workflows. 

## 🤖 Problem Statement & Core Business Workflow
In traditional enterprise setups, high volumes of inbound customer support requests cause substantial backlogs, long response latency, and mismatched assignments. 

This project solves that business problem through an automated routing triage system:
1. **Inbound Submission:** A customer submits an issue detailing a system failure or standard request.
2. **Asynchronous Text Evaluation:** An automated backend Apex trigger scans the submission string text for critical intent tokens (e.g., *crash*, *error*, *outage*).
3. **Automated Triage & Routing:** Based on the programmatic evaluation rules, the platform modifies record metadata (Sentiment analysis metrics, Urgency indicators) and pushes the ticket to a high-priority support team queue.
4. **Dynamic Agent Experience:** A custom frontend Lightning Page Layout framework dynamically processes data updates to present the assigned support specialist with an immediate, tailored resolution roadmap.

## 🛠️ Tech Stack & Key Architectural Pillars
- **Backend Architecture:** Apex Object-Oriented Programming (Classes, System Bulkification Patterns, Asynchronous Triggers).
- **Database Operations:** SOQL (Salesforce Object Query Language) to aggregate and isolate user data records.
- **Frontend Framework:** Standard Lightning Page Architecture Layouts, Custom Multi-Column Agent Workspace views, Salesforce Lightning Design System (SLDS).
- **Quality Control Assurance:** Apex Unit Test Class Suite ensuring comprehensive execution code coverage.

## 📂 Repository File Directory Map
```text
├── force-app/main/default/
│   ├── classes/
│   │   ├── AICaseService.cls       # Centralized business evaluation logic rule engine
│   │   └── AICaseServiceTest.cls   # Unit test suite verifying logic workflows 
│   └── triggers/
│       └── CaseTrigger.trigger     # Real-time automated database insertion switch
```

## 🏆 Functional Code Testing Metrics
All backend programming elements are fully verified natively using the Salesforce SFDX Apex Unit Testing framework to guarantee zero platform regression flaws:
- **`testUrgentCaseAnalysis()`**: Confirms that high-priority crash inputs automatically apply negative sentiment tracking and alert escalation parameters.
- **`testStandardCaseAnalysis()`**: Verifies that standard operational user requests fall back neatly into general tracking logs.
- **Code Coverage Score:** 100% Core Functionality Verified.
